using Amazon.Lambda.Core;
using Amazon.SimpleNotificationService;
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
            services.Configure<CognitoSettings>(configuration.GetSection(nameof(CognitoSettings)));
            services.Configure<SqsSettings>(configuration.GetSection(nameof(SqsSettings)));
            services.Configure<SNSSettings>(configuration.GetSection(nameof(SNSSettings)));
           
            services.AddAWSService<IAmazonSQS>();
            services.AddAWSService<IAmazonSimpleNotificationService>();
            

            LambdaLogger.Log($"INFO: DefaultConnection: {configuration.GetConnectionString("DefaultConnection")}");
            services.AddScoped<IApplicationDbContext>(s => new ApplicationDbContext(configuration.GetConnectionString("DefaultConnection")));
            services.AddScoped<IHello, Hello>();
            services.AddScoped<IMissingDataQueueService, SqsMissingDataQueueService>();
            services.AddScoped<INewPatientNotificationService, SNSNewPatientNotificationService>();
            
            return services;
        }
    }
}
