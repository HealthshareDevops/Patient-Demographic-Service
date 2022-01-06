using Application.Commands.CreatePatient;
using Infrastructure;
using MediatR;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace MessageProcessor.Lambda
{
    public static class Startup
    {
        public static IServiceProvider ConfigureServices(IConfiguration configuration)
        {
            var serviceCollection = new ServiceCollection();

            // ToDo: Register services with DI system
            serviceCollection.AddMediatR(typeof(CreatePatientCommand).GetTypeInfo().Assembly);
            serviceCollection.AddInfrastructure(configuration);

            return serviceCollection.BuildServiceProvider();
        }
    }
}
