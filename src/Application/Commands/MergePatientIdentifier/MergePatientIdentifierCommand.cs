﻿using Amazon.Lambda.Core;
using Application.Common.Exceptions;
using Application.Common.Interfaces;
using CSharpFunctionalExtensions;
using Domain.Entities;
using Domain.Enums;
using Domain.ValueObjects;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using System.Text.Json;

namespace Application.Commands.MergePatientIdentifier
{
    public class MergePatientIdentifierCommand : IRequest<long>
    {
        public string EventId { get; set; }
        public string Nhi { get; set; }
        public string NhiOfPatientWithCurrentMajorNhi { get; set; }
        public string NhiOfPatientWhoWillRecieveNewMajor { get; set; }
    }

    //Handler
    public class MergePatientIdentifierCommandHandler : IRequestHandler<MergePatientIdentifierCommand, long> 
    {
        private readonly IApplicationDbContext _dbContext;
        private readonly INewPatientNotificationService _newPatientNotificationService;
        public MergePatientIdentifierCommandHandler(IApplicationDbContext dbContext, INewPatientNotificationService newPatientNotificationService) {
            _dbContext = dbContext;
            _newPatientNotificationService = newPatientNotificationService;
        }

        public async Task<long> Handle(MergePatientIdentifierCommand request, CancellationToken cancellationToken) {

            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler start...");

            var curntPatntWHoHasTheMajorNhi = await _dbContext.Patients.Include(x => x.Identifiers).FirstOrDefaultAsync(x => x.Nhi == request.NhiOfPatientWithCurrentMajorNhi);
 
            var curntPatntWhoWillRecieveNewMajorNhi = await _dbContext.Patients.Include(x => x.Identifiers).FirstOrDefaultAsync(x => x.Nhi == request.NhiOfPatientWhoWillRecieveNewMajor);

            if (curntPatntWHoHasTheMajorNhi == null && curntPatntWhoWillRecieveNewMajorNhi == null) {

                throw new System.NotImplementedException();
            }

            //1. With the current patient who has the major find the major identifier.
            //2. Set the IsMajor boolean flag to false. This means that Nhi still with them its just no longer major

            var currentMajorId = curntPatntWHoHasTheMajorNhi.Identifiers.FirstOrDefault(x => x.IsMajor);
            currentMajorId.MakeMajor(false);
          
            //1. for the patient who will recieve the new Major NHI create a new Identifier, set its IsMajor property to True
            //2. Add identifier to the patient who will revieve the new Major Nhi identities list.

            var newMajorId = new Identifier(currentMajorId.Nhi, true);
            curntPatntWhoWillRecieveNewMajorNhi.AddIdentity(newMajorId);

            await _dbContext.SaveChangesAsync(cancellationToken);

            await _newPatientNotificationService.PublishAsync(BuildEventMessage(currentMajorId.Nhi.ToString(), newMajorId.Nhi.ToString() ));
            LambdaLogger.Log($"INFO: MergePatientIdentifierCommand -- Publishing external merge event Services");

            return curntPatntWhoWillRecieveNewMajorNhi.Id;

        }
        private string BuildEventMessage(string currentMajorNhi, string newMajorNhi)
        {
            var msg = new
            {
                EventId = Guid.NewGuid(),
                EventDate = DateTime.UtcNow,
                EventType = "MergePatientNhi",
                CurrentMajorNhi = currentMajorNhi,
                NewMajorNhi = newMajorNhi
            };
            return JsonSerializer.Serialize(msg);
        }
    }
}
