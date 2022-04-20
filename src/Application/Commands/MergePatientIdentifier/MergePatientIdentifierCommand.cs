using Amazon.Lambda.Core;
using Application.Common.Exceptions;
using Application.Common.Interfaces;
using CSharpFunctionalExtensions;
using Domain.Entities;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;

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

            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler - 1. Checking curntPatntWHoHasTheMajorNhi: {request.NhiOfPatientWithCurrentMajorNhi} ");
            var curntPatntWHoHasTheMajorNhi = await _dbContext.Patients.Include(x => x.Identifiers).
                                                                          Where(x => x.Identifiers.Any(i => i.Nhi == request.NhiOfPatientWithCurrentMajorNhi && i.IsMajor == true)).
                                                                          FirstOrDefaultAsync();

            if(curntPatntWHoHasTheMajorNhi is null)
            {
                LambdaLogger.Log($"ERROR: MergePatientIdentifierCommandHandler -  Nhi \"{request.NhiOfPatientWithCurrentMajorNhi}\" not found.");
                throw new NotFoundException(nameof(Patient), request.NhiOfPatientWithCurrentMajorNhi);
            }


            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler - 2. Checking NhiOfPatientWhoWillRecieveNewMajor: {request.NhiOfPatientWhoWillRecieveNewMajor} ");
            var curntPatntWhoWillRecieveNewMajorNhi = await _dbContext.Patients.Include(x => x.Identifiers).
                                                                                Where(x => x.Identifiers.Any(i => i.Nhi == request.NhiOfPatientWhoWillRecieveNewMajor && i.IsMajor == true)).
                                                                                FirstOrDefaultAsync();

            if (curntPatntWhoWillRecieveNewMajorNhi is null)
            {
                LambdaLogger.Log($"ERROR: MergePatientIdentifierCommandHandler -  Nhi \"{request.NhiOfPatientWhoWillRecieveNewMajor}\" not found.");
                throw new NotFoundException(nameof(Patient), request.NhiOfPatientWhoWillRecieveNewMajor);
            }
                       
            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler Both NHIs are found");
            //1. With the current patient who has the major find the major identifier.
            //2. Set the IsMajor boolean flag to false. This means that Nhi still with them its just no longer major

            var currentMajorId = curntPatntWHoHasTheMajorNhi.Identifiers.FirstOrDefault(x => x.IsMajor);
            currentMajorId.MakeMajor(false);
            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler: Set CurrentMajorId to false");

            //1. for the patient who will recieve the new Major NHI create a new Identifier, set its IsMajor property to True
            //2. Add identifier to the patient who will revieve the new Major Nhi identities list.

            var newMajorId = new Identifier(currentMajorId.Nhi, true);
            curntPatntWhoWillRecieveNewMajorNhi.AddIdentity(newMajorId);
            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler: Adding newMajorId");

            await _dbContext.SaveChangesAsync(cancellationToken);
            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler: Db saved");

            await _newPatientNotificationService.PublishAsync(BuildEventMessage(currentMajorId.Nhi.ToString(), newMajorId.Nhi.ToString() ));
            LambdaLogger.Log($"INFO: MergePatientIdentifierCommand -- Publishing external merge event Services");

            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler end...");
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
