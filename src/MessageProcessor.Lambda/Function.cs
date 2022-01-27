using Amazon.Lambda.Core;
using Amazon.Lambda.SQSEvents;
using Application.Commands.CreatePatient;
using MediatR;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Text.Json;
using System.Threading.Tasks;


// Assembly attribute to enable the Lambda function's JSON input to be converted into a .NET class.
[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace MessageProcessor.Lambda
{
    public class Function
    {
        public static IConfiguration Configuration;

        private readonly IMediator _mediator;

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

            _mediator = Startup.ConfigureServices(Configuration).GetService<IMediator>();
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
                
                context.Logger.LogLine($"INFO: MessageProcessor.Lamba.FunctionHandler is called.");
                
                foreach (var message in evnt.Records)
                {
                    await ProcessMessageAsync(message, context);
                }
            } catch(Exception ex)
            {
                context.Logger.Log(ex.Message);
                throw;
            }
        }

        private async Task ProcessMessageAsync(SQSEvent.SQSMessage message, ILambdaContext context)
        {
            context.Logger.LogLine($"INFO: MessageProcessor.Lambda.ProcessMessageAsync start...");
            context.Logger.LogLine($"INFO: Processing MessageId: {message.MessageId}");
            context.Logger.LogLine($"INFO: Message Body: {message.Body}");
            
            var createPatientCommand = JsonSerializer.Deserialize<CreatePatientCommand>(message.Body);
            var response = await _mediator.Send(createPatientCommand);
            
            context.Logger.LogLine($"INFO: {response}");
            context.Logger.LogLine($"INFO: MessageProcessor.Lambda.ProcessMessageAsync end...");
            await Task.CompletedTask;
        }
    }
}
