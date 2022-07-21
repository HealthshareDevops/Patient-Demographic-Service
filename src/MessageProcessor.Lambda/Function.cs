using Amazon.Lambda.Core;
using Amazon.Lambda.SQSEvents;
using Application.Commands.CreatePatient;
using Application.Commands.MergePatientIdentifier;
using Application.Commands.UpdatePatient;
using Application.Common.Interfaces;
using Domain.ValueObjects;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Globalization;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;


// Assembly attribute to enable the Lambda function's JSON input to be converted into a .NET class.
[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace MessageProcessor.Lambda
{
    public class Function
    {
        public static IServiceProvider ServiceProvider;
        public static IConfiguration Configuration;

        private readonly IMediator _mediator;
        private readonly IApplicationDbContext _dbContext;

        /// <summary>
        /// Default constructor. This constructor is used by Lambda to construct the instance. When invoked in a Lambda environment
        /// the AWS credentials will come from the IAM role associated with the function and the AWS region will be set to the
        /// region the Lambda function is executed in.
        /// </summary>
        public Function()
        {
            var paramsStore = Environment.GetEnvironmentVariable("PARAMETERSTORE_PATH");
            Configuration = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json")
                .AddSystemsManager(paramsStore)
                .Build();
            ServiceProvider = Startup.ConfigureServices(Configuration);
            _mediator = ServiceProvider.GetService<IMediator>();
            _dbContext = ServiceProvider.GetService<IApplicationDbContext>();
        }
        
        /// <summary>
        /// This method is called for every Lambda invocation. This method takes in an SQS event object and can be used 
        /// to respond to SQS messages.
        /// </summary>
        /// <param name="evnt"></param>
        /// <param name="context"></param>
        /// <returns></returns>
        public async Task FunctionHandler(SQSEvent evnt, ILambdaContext context)
        {
            try
            {
                context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.FunctionHandler START ...");

                foreach (var message in evnt.Records)
                {
                    await ProcessMessageAsync(message, context);
                }

                context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.FunctionHandler END ...");
            } catch(Exception ex)
            {
                context.Logger.Log(ex.Message);
                throw;
            }
        }

        private async Task ProcessMessageAsync(SQSEvent.SQSMessage message, ILambdaContext context)
        {
            context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.ProcessMessageAsync start ...");
            context.Logger.LogInformation($"INFO: Message Id: {message.MessageId}");
            context.Logger.LogInformation($"INFO: Message Body: {message.Body}");

            long response = 0L;

            var jsonDocument = JsonDocument.Parse(message.Body);
            var root = jsonDocument.RootElement;

            root.TryGetProperty("EventType", out var eventTypeProp);
            var eventType = eventTypeProp.ToString();

            if(eventType == "MergePatient")
            {
                context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.ProcessMessageAsync - EventType (MergePatient)");
                response = await MergeEvent(message, response, context);
            }
            else
            {
                context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.ProcessMessageAsync - EventType (AddOrUpdate)");
                response = await AddOrUpdateEvent(message, context);
            }
            
            context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.ProcessMessageAsync - Response ({response})");
            context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.ProcessMessageAsync end ...");

            await Task.CompletedTask;
        }

        private async Task<long> MergeEvent(SQSEvent.SQSMessage message, long response, ILambdaContext context)
        {
            context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.MergeEvent start ...");
            var mergePatientCommand = JsonSerializer.Deserialize<MergePatientIdentifierCommand>(message.Body);
            mergePatientCommand.MessageId = message.MessageId;

            response = await _mediator.Send(mergePatientCommand);
            context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.MergeEvent end ...");
            return response;
        }

        private async Task<long> AddOrUpdateEvent(SQSEvent.SQSMessage message, ILambdaContext context)
        {
            context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.AddOrUpdateEvent start ...");
            var createPatientCommand = JsonSerializer.Deserialize<CreatePatientCommand>(message.Body);
            createPatientCommand.MessageId = message.MessageId;

            // Simple check on Nhi before proceeding
            var nhi = createPatientCommand.Nhi;
            if (string.IsNullOrEmpty(nhi))
            {
                Console.WriteLine($"ERROR: MessageProcessor.Lambda.Function.AddOrUpdateEvent - MessageId ({createPatientCommand.MessageId}), CreatedBy({createPatientCommand.MessageId = message.MessageId}), Nhi ({createPatientCommand.Nhi}) should not be empty. (empty or null)");
                throw new Exception($"Nhi should not be empty");
            }
            nhi = nhi.Trim().ToUpper();

            // Check patient exists in the system.
            // If patient does not exist in the system, create the record
            // If patient exists, Check NHI is major or minor
            // If only NHI is major, update the record
            // If NHI is minor, it means NHI (or patient) is already merged with other NHI, dont need to do anything.
            var foundPatnts = _dbContext.Patients.Include(p => p.Identifiers).Where(p => p.Identifiers.Any(i => i.Nhi == nhi)).ToList();
            if (foundPatnts.Count <= 0)
            {
                context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.AddOrUpdateEvent - NHI ({createPatientCommand.Nhi}) does NOT exist. Create Patient.");
                return await _mediator.Send(createPatientCommand);
            }
            else
            {
                context.Logger.LogInformation($"INFO: MessageProcessor.Lambda.Function.AddOrUpdateEvent - NHI ({createPatientCommand.Nhi}) exists. Update Patient.");
                var majorPatnt = foundPatnts.Where(p => p.Identifiers.Any(i => i.Nhi == nhi && i.IsMajor)).SingleOrDefault();
                if(majorPatnt is null)
                {
                    context.Logger.LogWarning($"WARN: MessageProcessor.Lambda.Function.AddOrUpdateEvent - NHI ({createPatientCommand.Nhi}) is MINOR. Do NOT update.");
                    return -1;
                }
                var updatePatientCommand = JsonSerializer.Deserialize<UpdatePatientCommand>(message.Body);
                updatePatientCommand.Id = majorPatnt.Id;
                updatePatientCommand.MessageId = message.MessageId;

                if(!IsLatestMessage(updatePatientCommand.EventDate, majorPatnt.EventDate, context))
                {
                    context.Logger.LogInformation($"WARN: MessageProcessor.Lambda.Function.AddOrUpdateEvent - Eventdate is earlier than already processed. New ({updatePatientCommand.EventDate}) - Old ({majorPatnt.EventDate}). Do NOT update.");
                    return -1;
                }
                return await _mediator.Send(updatePatientCommand);
            }
        }

        private bool IsLatestMessage(string newEventDt, string curEventDt, ILambdaContext context)
        {
            if (!DateTime.TryParseExact(newEventDt, "yyyyMMddHHmmss", CultureInfo.InvariantCulture, DateTimeStyles.None, out var newMsgEventDt))
            {
                context.Logger.LogInformation($"WARN: EventDate of incoming message is null or empty or not valid. EventDate {newEventDt}. After parse {newMsgEventDt.ToString()}");
            }
            if (!DateTime.TryParseExact(curEventDt, "yyyyMMddHHmmss", CultureInfo.InvariantCulture, DateTimeStyles.None, out var curMsgEventDt))
            {
                context.Logger.LogInformation($"WARN: EventDate of last message is null or empty or not valid. EventDate {newEventDt}. After parse {newMsgEventDt.ToString()}");
            }
            return newMsgEventDt > curMsgEventDt;
        }
    }
}
