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
                .AddJsonFile("appsettings.json")
                .AddSystemsManager("/PatientDemographicService/sandbox")
                .Build();

            var mediator = Startup.ConfigureServices(Configuration).GetService<IMediator>();

            var payload = new
            {
                Nhi = "ZZZ0008",
                Title = "SIR",
                GivenName = "John",
                MiddleName = "",
                FamilyName = "Doe",
                Suffix = "1ST",
                IsPreferred = true,
                IsProtected = true,
                NameSource = "BRCT",
                EffectiveFrom = "",
                EffectiveTo = ""
            };
            
            var payloadJsonString = JsonSerializer.Serialize(payload);
            Console.WriteLine($"Payload: {payloadJsonString}");

            var createPatientCommand = JsonSerializer.Deserialize<CreatePatientCommand>(payloadJsonString);


            var response = await mediator.Send(createPatientCommand);
            
        }
    }
}
