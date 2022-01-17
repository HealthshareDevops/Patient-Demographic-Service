using Amazon.Lambda.Core;
using Amazon.SQS;
using Application.Common.Interfaces;
using Infrastructure.Persistence;
using Infrastructure.Services;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace Infrastructure
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddInfrastructure(this IServiceCollection services, IConfiguration configuration)
        {
            services.Configure<SqsSettings>(configuration.GetSection(nameof(SqsSettings)));
           
            services.AddAWSService<IAmazonSQS>();
            LambdaLogger.Log($"INFO: DefaultConnection: {configuration.GetConnectionString("DefaultConnection")}");
            services.AddScoped<IApplicationDbContext>(s => new ApplicationDbContext(configuration.GetConnectionString("DefaultConnection")));
            services.AddScoped<IHello, Hello>();
            services.AddScoped<IMissingDataQueueService, SqsMissingDataQueueService>();
            
            return services;
        }
    }
}
