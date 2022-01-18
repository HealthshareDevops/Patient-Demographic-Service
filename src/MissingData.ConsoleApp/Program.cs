using Amazon.Runtime;
using Amazon.Runtime.CredentialManagement;
using Amazon.SQS;
using Microsoft.Extensions.Configuration;
using System;
using System.Threading.Tasks;

namespace MissingData.ConsoleApp
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
            var qUrl = "https://sqs.ap-southeast-2.amazonaws.com/428762063575/PatientDemographic-MissingDataQueue";
            CredentialProfile basicProfile;
            AWSCredentials awsCredentials;
            var sharedFile = new SharedCredentialsFile();
            if (sharedFile.TryGetProfile("428762063575_AWSAdministratorAccess", out basicProfile) 
                && AWSCredentialsFactory.TryGetAWSCredentials(basicProfile, sharedFile, out awsCredentials))
            {
                // use awsCredentials to create an Amazon S3 service client
                using (var client = new AmazonSQSClient(awsCredentials, basicProfile.Region))
                {
                    var response = await client.SendMessageAsync(qUrl, "Hello world from Console Application.");
                    //Console.WriteLine($"Number of buckets: {response.Buckets.Count}");
                }
            }

            //IAmazonSQS sqsClient = new AmazonSQSClient();
            //var response = await sqsClient.SendMessageAsync(qUrl, "Hello world from Console Application.");

        }
    }
}
