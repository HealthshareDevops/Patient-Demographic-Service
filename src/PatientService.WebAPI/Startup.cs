using Application;
using Infrastructure;
using Infrastructure.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using NSwag;
using NSwag.AspNetCore;
using NSwag.Generation.Processors.Security;
using PatientService.WebAPI.Filters;
using System;
using System.Linq;
using System.Net;

namespace PatientService.WebAPI
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public static IConfiguration Configuration { get; private set; }
        
        // This method gets called by the runtime. Use this method to add services to the container
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddApplication();
            services.AddInfrastructure(Configuration);

            services.AddControllers(options => options.Filters.Add<ApiExceptionFilterAttribute>());

            services.AddControllers();
            
            // To get an cognito settings inside ConfigureServices method, 
            // Build an intermediate service provider.
            var sp = services.BuildServiceProvider();
            var iOptions = sp.GetService<IOptions<CognitoSettings>>();
            var cognitoSettings = iOptions.Value;
            
            // Authenticating jwt in bearer
            services.AddAuthentication("Bearer")
                .AddJwtBearer(options => {
                    options.SaveToken = true;
                    options.TokenValidationParameters = new TokenValidationParameters
                    {
                        ValidateIssuerSigningKey = true,
                        IssuerSigningKeyResolver = (s, securityToken, identifier, parameters) =>
                        {
                            // Get JsonWebKeySet from AWS
                            var json = new WebClient().DownloadString($"{cognitoSettings.Issuer}/.well-known/jwks.json");
                            
                            // Serialize the result
                           var jsonWebKeySet = new JsonWebKeySet(json);
                           return jsonWebKeySet.Keys;
                            //return JsonConvert.DeserializeObject<JsonWebKeySet>(json).Keys;
                        },
                        ValidateIssuer = true,
                        ValidIssuer = $"{cognitoSettings.Issuer}",
                        ValidateLifetime = true,
                        LifetimeValidator = (before, expires, token, param) => expires > DateTime.UtcNow,
                        ValidateAudience = false,
                        ValidAudience = $"{cognitoSettings.ClientId}",
                    };
                });

            // Swagger / OpenAPI
            services.AddOpenApiDocument(configure =>
            {
                configure.Title = "TMT Interoperability Platform API";
                configure.AddSecurity("bearer", Enumerable.Empty<string>(), new OpenApiSecurityScheme
                {
                    Type = OpenApiSecuritySchemeType.OAuth2,
                    Description = "OAuth2 Authentication",
                    Flow = OpenApiOAuth2Flow.AccessCode,
                    Flows = new OpenApiOAuthFlows()
                    {
                        AuthorizationCode = new OpenApiOAuthFlow()
                        {
                            AuthorizationUrl = $"{cognitoSettings.Domain}/oauth2/authorize",
                            TokenUrl = $"{cognitoSettings.Domain}/oauth2/token"
                        }
                    }
                });
                configure.OperationProcessors.Add(
                    new AspNetCoreOperationSecurityScopeProcessor("bearer"));
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
                endpoints.MapGet("/", async context =>
                {
                    await context.Response.WriteAsync("Welcome to running ASP.NET Core on AWS Lambda");
                });
            });

            // To get an cognito settings inside Configure method. 
            // CognitoSettings object is created in ConfigureMethod as well.
            // ToDo: Initialize/create only once.
            var iOptions = app.ApplicationServices.GetService<IOptions<CognitoSettings>>();
            var cognitoSettings = iOptions.Value;
            
            app.UseOpenApi();
            app.UseSwaggerUi3(configure => {
                configure.OAuth2Client = new OAuth2ClientSettings
                {
                    ClientId = cognitoSettings.ClientId,
                    ClientSecret = cognitoSettings.ClientSecret,
                    AppName = "PatientDemographicService",
                    UsePkceWithAuthorizationCodeGrant = true
                };
            });
        }
    }
}
