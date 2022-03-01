using Application.Commands.CreatePatient;
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

            var payload = new
            {
                Nhi = "ZZZ0024",
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
                    new CreateEthnicityCommand
                    {
                        Code = "21",
                        Description = "21 [Maori]"
                    },
                    new CreateEthnicityCommand
                    {
                        Code = "11",
                        Description = "11 [New Zealander]"
                    },
                    new CreateEthnicityCommand
                    {
                        Code = "99",
                        Description = "Not stated"
                    }
                },
                Addresses = new[] {
                    new CreateAddressCommand {
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
                    new CreateAddressCommand {
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
                }
            };
            
            var payloadJsonString = JsonSerializer.Serialize(payload);
            Console.WriteLine($"Payload: {payloadJsonString}");

            var createPatientCommand = JsonSerializer.Deserialize<CreatePatientCommand>(payloadJsonString);

            var response = await mediator.Send(createPatientCommand);
        }
    }
}
