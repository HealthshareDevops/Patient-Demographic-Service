using Application.Commands.CreatePatient;
using Application.Commands.MergePatientIdentifier;
using MediatR;
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
        static async Task Main(string[] args)
        {
            Console.WriteLine("MessageProcessor.ConsoleApp ...");
 


            Configuration = new ConfigurationBuilder()
                .AddJsonFile($"appsettings.Development.json")
                .Build();

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
                        Code = "99",
                        Description = "Not stated"
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
                        AddressType="R"
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

                var response = await mediator.Send(createPatientCommand);
            }
            else if (selection == 2)
            {
                Console.WriteLine("---Patient Merge Event---");
                var payload = new
                {
                    EventId = Guid.NewGuid().ToString(),
                    Nhi = "PRP1660",
                    CurrentMajorNhi = "PRP1660",
                    NewMajorNhi = "PRP2340"

                    /*public string EventId;
                      public string Nhi;
                      public string CurrentMajorNhi;
                      public string NewMajorNhi;*/
                };
                var payloadJsonString = JsonSerializer.Serialize(payload);
                Console.WriteLine($"Payload:{payloadJsonString}");
                var mergePatientCommand = JsonSerializer.Deserialize<MergePatientIdentifierCommand>(payloadJsonString);
                var response = await mediator.Send(mergePatientCommand);
            }
        }
    }
}
