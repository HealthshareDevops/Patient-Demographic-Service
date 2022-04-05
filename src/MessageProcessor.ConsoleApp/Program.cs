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

namespace MessageProcessor.ConsoleApp
{
    class Program
    {
        static IConfiguration Configuration;
        static IServiceProvider ServiceProvider;
        static async Task Main(string[] args)
        {
            Console.WriteLine("MessageProcessor.ConsoleApp ...");
 


            Configuration = new ConfigurationBuilder()
                .AddJsonFile($"appsettings.Development.json")
                .Build();
            ServiceProvider = Startup.ConfigureServices(Configuration);
            var mediator = ServiceProvider.GetService<IMediator>();
            var dbContext = ServiceProvider.GetService<IApplicationDbContext>();

            var payload = new
            {
                Nhi = "ZZZ0016",
                Title = "DR",
                GivenName = "Jack",
                MiddleName = "",
                FamilyName = "Doe",
                Suffix = "1ST",
                IsPreferred = true,
                IsProtected = true,
                NameSource = "BREG",
                EffectiveFrom = "",
                EffectiveTo = "",
                BirthDate = "19900118",
                BirthDateSource = "BRCT",
                Gender = "M",
                Ethnicities = new[] {
            var mediator = Startup.ConfigureServices(Configuration).GetService<IMediator>();

            Console.WriteLine("Select what kind of event you would like to publish");
            Console.WriteLine("1. Create Patient event");
            Console.WriteLine("2. Patient Merge event");

            var selection = int.Parse(Console.ReadLine());

            if (selection == 1)
            {
                Console.WriteLine("---Create Patient Event---");

                var payload = new
                {
                    Nhi = "ZZZ0008",
                    Title = "SIR",
                    GivenName = "Jack",
                    MiddleName = "",
                    FamilyName = "Doe",
                    Suffix = "1ST",
                    IsPreferred = true,
                    IsProtected = true,
                    NameSource = "BRCT",
                    EffectiveFrom = "",
                    EffectiveTo = "",
                    BirthDate = "19920118",
                    BirthDateSource = "BRCT",
                    Gender = "M",
                    Ethnicities = new[] {
                    new {
                        Code = "21",
                        Description = "21 [Maori]"
                    },
                    new {
                        Code = "11",
                        Description = "11 [New Zealander]"
                    },
                    new
                    {
                        Code = "36",
                        Description = "Fijian"
                    }
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
                    new
                        {
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
                //Contacts = 
                //new[] {
                //    new {
                //            ContactType = "A",
                //            ContactUsage = "E",
                //            Detail = "hello contact",
                //            IsProtected = false,
                //            EffectiveFrom = "20220101",
                //            EffectiveTo = "20220228",
                //            IsPreferred =  false
                //        }
                //}
            }; //end of payload
                    Contacts = new[] {
                    new {
                            ContactType = "A",
                            ContactUsage = "E",
                            Detail = "hello contact",
                            IsProtected = false,
                            EffectiveFrom = "20220101",
                            EffectiveTo = "20220228",
                            IsPreferred =  false
                        }
                }
                }; //end of payload

                var payloadJsonString = JsonSerializer.Serialize(payload);
                Console.WriteLine($"Payload: {payloadJsonString}");

           
            var createPatientCommand = JsonSerializer.Deserialize<CreatePatientCommand>(payloadJsonString);
                var createPatientCommand = JsonSerializer.Deserialize<CreatePatientCommand>(payloadJsonString);
            var found = await dbContext.Patients.AsNoTracking().FirstOrDefaultAsync(x => x.Nhi == createPatientCommand.Nhi);
            if (found is null)
            {
                var response = await mediator.Send(createPatientCommand);
            } else
            {
                var updatePatientCommand = JsonSerializer.Deserialize<UpdatePatientCommand>(payloadJsonString);
                updatePatientCommand.Contacts = null;
                var response = await mediator.Send(updatePatientCommand);
            }
        }

                var response = await mediator.Send(createPatientCommand);
            }
            else if (selection == 2)
            {
                Console.WriteLine("---Patient Merge Event---");
                var payload = new
                {
                    EventId = Guid.NewGuid().ToString(),
                    EventType = "MergePatient"
                    NhiOfPatientWithCurrentMajorNhi = "PRP1660", 
                    NhiOfPatientWhoWillRecieveNewMajor = "ZZZ0008"

                };
                var payloadJsonString = JsonSerializer.Serialize(payload);
                Console.WriteLine($"Payload:{payloadJsonString}");
                var mergePatientCommand = JsonSerializer.Deserialize<MergePatientIdentifierCommand>(payloadJsonString);
                var response = await mediator.Send(mergePatientCommand);
            }
        }
    }
}
