using Application.Commands.CreatePatient;
using Application.Commands.UpdatePatient;
using Application.Common.Interfaces;
using Application.Commands.MergePatientIdentifier;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Text.Json;
using System.Threading.Tasks;
using System.Linq;

namespace MessageProcessor.ConsoleApp
{
    class Program
    {
        static IConfiguration Configuration;
        static IServiceProvider ServiceProvider;
        
        private static IMediator _mediator;
        private static IApplicationDbContext _dbContext;
        static async Task Main(string[] args)
        {
            Console.WriteLine("MessageProcessor.ConsoleApp ...");



            Configuration = new ConfigurationBuilder()
                .AddJsonFile($"appsettings.Development.json")
                .Build();

            ServiceProvider = Startup.ConfigureServices(Configuration);
            _mediator = ServiceProvider.GetService<IMediator>();
            _dbContext = ServiceProvider.GetService<IApplicationDbContext>();


            //var mediator = Startup.ConfigureServices(Configuration).GetService<IMediator>();

            Console.WriteLine("Select what kind of event you would like to publish to internal regional domain model");
            Console.WriteLine("1. Create/Update Patient event");
            Console.WriteLine("2. Patient Merge event");

            var selection = int.Parse(Console.ReadLine());

            if (selection == 1)
            {
                Console.WriteLine("---Create/Update Patient Event---");

                //var payload = new
                //{
                //    Nhi = "ZZZ0008",
                //    Title = "DR",
                //    GivenName = "Jack",
                //    MiddleName = "",
                //    FamilyName = "Doe",
                //    Suffix = "1ST",
                //    IsPreferred = true,
                //    IsProtected = true,
                //    NameSource = "BREG",
                //    EffectiveFrom = "",
                //    EffectiveTo = "",
                //    BirthDate = "19900118",
                //    BirthDateSource = "BRCT",
                //    Gender = "M",
                //    Ethnicities = new[] {
                //        new {
                //            Code = "21",
                //            Description = "21 [Maori]"
                //        },
                //        new {
                //            Code = "11",
                //            Description = "11 [New Zealander]"
                //        },
                //        new
                //        {
                //            Code = "36",
                //            Description = "Fijian"
                //        }
                //    },
                //    Addresses = new[] {
                //        new {
                //            AddressFormat="CIQ",
                //            BuildingName = "hello",
                //            StreetAddress="92 Hillcrest Road",
                //            AdditionalStreetAddress="",
                //            Suburb="Hillcrest",
                //            TownOrCity="Hamilton",
                //            PostCode="3216",
                //            Country="572",
                //            IsProtected=false,
                //            IsPermanent=true,
                //            EffectiveFrom="",
                //            EffectiveTo="",
                //            Domicile="",
                //            IsPrimary=true,
                //            AddressType="M"
                //        },
                //        new {
                //            AddressFormat="CIQ",
                //            BuildingName = "world",
                //            StreetAddress="16 Clarence Street",
                //            AdditionalStreetAddress="",
                //            Suburb="",
                //            TownOrCity="Hamilton",
                //            PostCode="3204",
                //            Country="572",
                //            IsProtected=false,
                //            IsPermanent=false,
                //            EffectiveFrom="",
                //            EffectiveTo="",
                //            Domicile="",
                //            IsPrimary=true,
                //            AddressType="R"
                //        }
                //    },
                //    Contacts = new[] {
                //        new {
                //            ContactType = "A",
                //            ContactUsage = "E",
                //            Detail = "hello contact",
                //            IsProtected = false,
                //            EffectiveFrom = "20220101",
                //            EffectiveTo = "20220228",
                //            IsPreferred =  false
                //        }
                //    },
                //    CreatedBy = "Rhapsody"
                //}; //end of payload

                var payload = new
                {
                    EventId = Guid.NewGuid().ToString(),
                    EventType = "MergePatient",
                    NhiOfPatientWithCurrentMajorNhi = "ZZZ0016",
                    NhiOfPatientWhoWillRecieveNewMajor = "ZZZ0008"
                };

                var payloadJsonString = JsonSerializer.Serialize(payload);
                Console.WriteLine($"Payload: {payloadJsonString}");


                var jsonDocument = JsonDocument.Parse(payloadJsonString);
                var root = jsonDocument.RootElement;

                root.TryGetProperty("EventType", out var eventTypeProp);
                var eventType = eventTypeProp.ToString();
                if (eventType == "MergePatient")
                {
                    var mergePatientCommand = JsonSerializer.Deserialize<MergePatientIdentifierCommand>(payloadJsonString);
                    var response = await _mediator.Send(mergePatientCommand);
                }
                else
                {
                    await AddOrUpdateEvent(payloadJsonString);
                }
            }
            else if (selection == 2)
            {
                Console.WriteLine("---Patient Merge Event---");
                var payload = new
                {
                    EventId = Guid.NewGuid().ToString(),
                    EventType = "MergePatient",
                    NhiOfPatientWithCurrentMajorNhi = "ZZZ0016",
                    NhiOfPatientWhoWillRecieveNewMajor = "ZZZ0008"

                };
                var payloadJsonString = JsonSerializer.Serialize(payload);
                Console.WriteLine($"Payload:{payloadJsonString}");
                var mergePatientCommand = JsonSerializer.Deserialize<MergePatientIdentifierCommand>(payloadJsonString);
                var response = await _mediator.Send(mergePatientCommand);
            }
        }

        private static async Task AddOrUpdateEvent(string payloadJsonString)
        {
            var createPatientCommand = JsonSerializer.Deserialize<CreatePatientCommand>(payloadJsonString);
            //var found = await dbContext.Patients.Include(p => p.Identifiers).AsNoTracking().FirstOrDefaultAsync(x => x.Identifiers. == createPatientCommand.Nhi);
            // assuming it will return only one.
            var found = _dbContext.Patients.Include(p => p.Identifiers).AsNoTracking().Where(p => p.Identifiers.Any(i => i.Nhi == createPatientCommand.Nhi && i.IsMajor == true)).FirstOrDefault();
            if (found is null)
            {
                var response = await _mediator.Send(createPatientCommand);
            }
            else
            {
                var updatePatientCommand = JsonSerializer.Deserialize<UpdatePatientCommand>(payloadJsonString);
                var response = await _mediator.Send(updatePatientCommand);
            }
        }
    }
}
