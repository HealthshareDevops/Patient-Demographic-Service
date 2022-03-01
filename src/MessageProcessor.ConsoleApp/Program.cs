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
            Console.WriteLine("Hello World!");
            Configuration = new ConfigurationBuilder()
                .AddJsonFile("appsettings.Development.json")
                //.AddSystemsManager("/PatientDemographicService/sandbox")
                .Build();

            var mediator = Startup.ConfigureServices(Configuration).GetService<IMediator>();

            var payload = new
            {
                Nhi = "PRP1660",
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
    }
}
