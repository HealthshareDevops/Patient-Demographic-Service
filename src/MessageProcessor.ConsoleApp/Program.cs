using Application.Commands.CreatePatient;
using Application.Commands.MergePatientIdentifier;
using Application.Commands.UpdatePatient;
using Application.Common.Interfaces;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Globalization;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

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

            //var selection = int.Parse(Console.ReadLine());

            var selection = 1;
            if (selection == 1)
            {
                Console.WriteLine("---Create/Update Patient Event---");

                var payload = new
                {
                    Nhi = "ZZZ0016",
                    Title = "DR",
                    GivenName = "Went",
                    MiddleName = "Up The",
                    FamilyName = "Hill",
                    Suffix = "2nd",
                    IsPreferred = true,
                    IsProtected = true,
                    NameSource = "BREG",
                    EffectiveFrom = "",
                    EffectiveTo = "",
                    BirthDate = "198901182",
                    BirthDateSource = "BRCT",
                    Gender = "F",
                    Ethnicities = new[] {
                        new {
                            Code = "11",
                            Description = "11 [New Zealander]"
                        },
                        new {
                            Code = "11",
                            Description = "11 [New Zealander]"
                        },
                        new {
                            Code = "NSP",
                            Description = "Not Specified"
                        },
                        new {
                            Code = "NSP",
                            Description = "Not Specified"
                        },
                         new {
                            Code = "43",
                            Description = "Indian"
                        },

                    },
                    Addresses = new[] {
                        new {
                            AddressFormat="CIQ",
                            BuildingName = "hello",
                            StreetAddress="92 Hillcrest Road",
                            AdditionalStreetAddress="",
                            Suburb="Hillcrest",
                            TownOrCity="Hamilton",
                            PostCode="3216",
                            Country="572",
                            IsProtected=false,
                            IsPermanent=true,
                            EffectiveFrom="",
                            EffectiveTo="",
                            Domicile="",
                            IsPrimary=true,
                            AddressType="M"
                        },
                        new {
                            AddressFormat="CIQ",
                            BuildingName = "world",
                            StreetAddress="16 Clarence Street",
                            AdditionalStreetAddress="",
                            Suburb="",
                            TownOrCity="Hamilton",
                            PostCode="3204",
                            Country="572",
                            IsProtected=false,
                            IsPermanent=false,
                            EffectiveFrom="",
                            EffectiveTo="",
                            Domicile="",
                            IsPrimary=true,
                            AddressType="R"
                        }
                    },
                    Contacts = new[] {
                        //new {
                        //    ContactType = "A",
                        //    ContactUsage = "E",
                        //    Detail = "hello contact",
                        //    IsProtected = false,
                        //    EffectiveFrom = "20220101",
                        //    EffectiveTo = "20220228",
                        //    IsPreferred =  false
                        //},
                        new {
                            ContactType = "PH",
                            ContactUsage = "PRN",
                            Detail = "0274895656",
                            IsProtected = false,
                            EffectiveFrom = "20220225",
                            EffectiveTo = "",
                            IsPreferred =  false
                        },
                        //new {
                        //    ContactType = "NET",
                        //    ContactUsage = "PRN",
                        //    Detail = "test@api.com",
                        //    IsProtected = false,
                        //    EffectiveFrom = "20220225",
                        //    EffectiveTo = "",
                        //    IsPreferred =  false
                        //}
                    },
                    EventDate = "20220502094501",
                    CreatedBy = "Rhapsody"
                }; //end of payload

                //var payload = new
                //{
                //    EventId = Guid.NewGuid().ToString(),
                //    EventType = "MergePatient",
                //    NhiOfPatientWithCurrentMajorNhi = "ZZZ0016",
                //    NhiOfPatientWhoWillRecieveNewMajor = "ZZZ0008"
                //};

                var payloadJsonString = JsonSerializer.Serialize(payload);
                Console.WriteLine($"Payload: {payloadJsonString}");


                var jsonDocument = JsonDocument.Parse(payloadJsonString);
                var root = jsonDocument.RootElement;

                root.TryGetProperty("EventType", out var eventTypeProp);
                var eventType = eventTypeProp.ToString();
                if (eventType == "MergePatient")
                {
                    await MergeEvent(payloadJsonString);
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
                    NhiOfPatientWhoWillReceiveNewMajor = "ZZZ0008"

                };
                var payloadJsonString = JsonSerializer.Serialize(payload);
                Console.WriteLine($"Payload:{payloadJsonString}");
                var mergePatientCommand = JsonSerializer.Deserialize<MergePatientIdentifierCommand>(payloadJsonString);
                var response = await _mediator.Send(mergePatientCommand);
            }
        }

        private static async Task MergeEvent(string payloadJsonString)
        {
            var mergePatientCommand = JsonSerializer.Deserialize<MergePatientIdentifierCommand>(payloadJsonString);
            var response = await _mediator.Send(mergePatientCommand);
        }

        private static async Task AddOrUpdateEvent(string payloadJsonString)
        {
            var createPatientCommand = JsonSerializer.Deserialize<CreatePatientCommand>(payloadJsonString);

            // Check patient exists in the system.
            // If patient does not exist in the system, create the record
            // If patient exists, Check NHI is major or minor
            // If only NHI is major, update the record
            // If NHI is minor, it means NHI (or patient) is already merged with other NHI, dont need to do anything.
            var foundPatnt = _dbContext.Patients.Include(p => p.Identifiers).Where(p => p.Identifiers.Any(i => i.Nhi == createPatientCommand.Nhi)).ToList();
            if (foundPatnt.Count <= 0)
            {
                Console.WriteLine($"INFO: NHI {createPatientCommand.Nhi} does not exist. Creating Patient ...");
                var response = await _mediator.Send(createPatientCommand);
            }
            else
            {
                Console.WriteLine($"INFO: NHI {createPatientCommand.Nhi} exists. Updating Patient ...");
                var majorPatnt = foundPatnt.Where(p => p.Identifiers.Any(i => i.Nhi == createPatientCommand.Nhi && i.IsMajor)).SingleOrDefault();

                if (majorPatnt is null)
                {
                    Console.WriteLine($"WARN: NHI {createPatientCommand.Nhi} is minor. Returning ...");
                    return;
                }
                var updatePatientCommand = JsonSerializer.Deserialize<UpdatePatientCommand>(payloadJsonString);
                updatePatientCommand.Id = majorPatnt.Id;
                
                if(!IsLatestMessage(updatePatientCommand.EventDate, majorPatnt.EventDate)) {
                    Console.WriteLine($"WARN: MessageProcessor.Lambda.Function.AddOrUpdateEvent - Eventdate is earlier than already processed. New ({updatePatientCommand.EventDate}) - Old ({majorPatnt.EventDate}). Do NOT update.");
                    return;
                }
                
                var response = await _mediator.Send(updatePatientCommand);
            }
        }

        private static bool IsLatestMessage(string newEventDt, string curEventDt)
        {
            if (!DateTime.TryParseExact(newEventDt, "yyyyMMddHHmmss", CultureInfo.InvariantCulture, DateTimeStyles.None, out var newMsgEventDt))
            {
                Console.WriteLine($"WARN: EventDate of incoming message is null or empty or not valid. EventDate {newEventDt}. After parse {newMsgEventDt.ToString()}");
            }
            if (!DateTime.TryParseExact(curEventDt, "yyyyMMddHHmmss", CultureInfo.InvariantCulture, DateTimeStyles.None, out var curMsgEventDt))
            {
                Console.WriteLine($"WARN: EventDate of last message is null or empty or not valid. EventDate {newEventDt}. After parse {newMsgEventDt.ToString()}");
            }
            return newMsgEventDt > curMsgEventDt;
        }
    }
}