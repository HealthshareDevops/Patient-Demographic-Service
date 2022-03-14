﻿using Amazon.Lambda.Core;
using Amazon.SimpleNotificationService;
using Amazon.SimpleNotificationService.Model;
using Application.Common.Interfaces;
using Microsoft.Extensions.Options;
using System;
using System.Threading.Tasks;

namespace Infrastructure.Services
{
    public class SNSNewPatientNotificationService : INewPatientNotificationService
    {
        private readonly IAmazonSimpleNotificationService _snsClient;
        private readonly SNSSettings _snsSettings;

        public SNSNewPatientNotificationService(IAmazonSimpleNotificationService snsClient, IOptions<SNSSettings> snsOptions)
        {
            _snsClient = snsClient;
            _snsSettings = snsOptions.Value;
        }

        public async Task<string> PublishAsync(string message)
        {
            try
            {
                LambdaLogger.Log($"INFO: SNSNewPaientNotificationService.PublishAsync Start..");
                var request = new PublishRequest
                {
                    Message = message,
                    TopicArn = _snsSettings.NewPatientTopicARN
                };

                var response = await _snsClient.PublishAsync(request);
                LambdaLogger.Log($"INFO: Message published. MessageId: {response.MessageId}");
                LambdaLogger.Log($"INFO: SNSNewPaientNotificationService.PublishAsync End.. MessageId: {response.MessageId}");
                return response.MessageId;
            }
            catch (Exception e)
            {
                LambdaLogger.Log($"ERROR: SNSNewPaientNotificationService.PublishAsync error occurred. {e.Message}");
                throw;
            }
        }
    }
}
