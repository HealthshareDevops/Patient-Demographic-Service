using Amazon.Lambda.Core;
using Amazon.SQS;
using Amazon.SQS.Model;
using Application.Common.Interfaces;
using Microsoft.Extensions.Options;
using System;
using System.Threading.Tasks;

namespace Infrastructure.Services
{
    public class SQSMessageQueueService : IMessageQueueService
    {
        private readonly IAmazonSQS _sqsClient;
        private readonly SQSMessageQueueSettings _sqsMessageQueueSettings;

        public SQSMessageQueueService(IAmazonSQS sqsClient, IOptions<SQSMessageQueueSettings> options)
        {
            _sqsClient = sqsClient;
            _sqsMessageQueueSettings = options.Value;
        }

        public async Task<bool> DeleteMessageAsync(string receiptHandle)
        {
            try
            {
                LambdaLogger.Log($"INFO: SQSMessageQueueService.DeleteMessageAsync - start...");
                LambdaLogger.Log($"INFO: QueueUrl: {_sqsMessageQueueSettings.QueueUrl}, ReceiptHandle: {receiptHandle}");
                var request = new DeleteMessageRequest
                {
                    QueueUrl = _sqsMessageQueueSettings.QueueUrl,
                    ReceiptHandle = receiptHandle
                };
                var response = await _sqsClient.DeleteMessageAsync(request);
                LambdaLogger.Log($"INFO: SQSMessageQueueService.DeleteMessageAsync - end...");
                return true;
            } catch(Exception e)
            {
                LambdaLogger.Log($"ERROR: SQSMessageQueueService.DeleteMessageAsync - Error occurred. {e.Message}");
                throw;
            }
        }
    }
}
