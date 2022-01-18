using Amazon.Lambda.Core;
using Amazon.SQS;
using Application.Common.Interfaces;
using Microsoft.Extensions.Options;
using System;
using System.Threading.Tasks;

namespace Infrastructure.Services
{
    public class SqsMissingDataQueueService : IMissingDataQueueService
    {
        private readonly IAmazonSQS _sqsClient;
        private readonly SqsSettings _sqsSettings;
        public SqsMissingDataQueueService(IAmazonSQS sqsClient, IOptions<SqsSettings> sqsOptions)
        {
            _sqsClient = sqsClient;
            _sqsSettings = sqsOptions.Value;
            
        }

        public async Task<bool> SendMessageAsync(string message)
        {
            try
            {
                LambdaLogger.Log($"INFO: SqsQueueService.SendMessageAsync start ...");
                LambdaLogger.Log($"INFO: SQS URL: {_sqsSettings.Url}");
                var response = await _sqsClient.SendMessageAsync(_sqsSettings.Url, message);
                
                LambdaLogger.Log($"INFO: SqsQueueService.SendMessageAsync end ...");
                return true;
            }
            catch(Exception e)
            {
                LambdaLogger.Log($"ERROR: SqsQueueService.SendMessageAsync error occurred. {e.Message}");
                throw e;
            }
            
        }
    }
}
