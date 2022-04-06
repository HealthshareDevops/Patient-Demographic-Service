using Application.Commands.CreatePatient;
using Application.Commands.UpdatePatient;
using Application.Common.Interfaces;
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
                //CreatedBy = "Rhapsody"
            }; //end of payload

            var payloadJsonString = JsonSerializer.Serialize(payload);
            Console.WriteLine($"Payload: {payloadJsonString}");

           
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
    }
}
