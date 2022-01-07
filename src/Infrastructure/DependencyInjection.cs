using Amazon.Lambda.Core;
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
            LambdaLogger.Log($"INFO: DefaultConnection: {configuration.GetConnectionString("DefaultConnection")}");
            services.AddScoped<IApplicationDbContext>(s => new ApplicationDbContext(configuration.GetConnectionString("DefaultConnection")));
            services.AddScoped<IHello, Hello>();
            
            return services;
        }
    }
}
