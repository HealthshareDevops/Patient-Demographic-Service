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
        public string NhiOfPatientWhoWillReceiveNewMajor { get; set; }
        public string CreatedBy { get; set; } = string.Empty;
        public string MessageId { get; set; } = string.Empty; // Queue Message Id if exists for tracking on error
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

            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Handle start...");
            try
            {
                LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Handle - 1. Checking curntPatntWHoHasTheMajorNhi: {request.NhiOfPatientWithCurrentMajorNhi} ");
                var curntPatntWHoHasTheMajorNhi = await _dbContext.Patients.Include(x => x.Identifiers).
                                                                              Where(x => x.Identifiers.Any(i => i.Nhi == request.NhiOfPatientWithCurrentMajorNhi && i.IsMajor == true)).
                                                                              FirstOrDefaultAsync();

                if (curntPatntWHoHasTheMajorNhi is null)
                {
                    LambdaLogger.Log($"ERROR: MergePatientIdentifierCommandHandler.Handle -  Current Major Nhi \"{request.NhiOfPatientWithCurrentMajorNhi}\" not found.");
                    throw new NotFoundException(nameof(Patient), request.NhiOfPatientWithCurrentMajorNhi);
                }


                LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Handle - 2. Checking NhiOfPatientWhoWillRecieveNewMajor: {request.NhiOfPatientWhoWillReceiveNewMajor} ");
                var curntPatntWhoWillRecieveNewMajorNhi = await _dbContext.Patients.Include(x => x.Identifiers).
                                                                                    Where(x => x.Identifiers.Any(i => i.Nhi == request.NhiOfPatientWhoWillReceiveNewMajor && i.IsMajor == true)).
                                                                                    FirstOrDefaultAsync();

                if (curntPatntWhoWillRecieveNewMajorNhi is null)
                {
                    LambdaLogger.Log($"ERROR: MergePatientIdentifierCommandHandler.Handle -  New Major Nhi \"{request.NhiOfPatientWhoWillReceiveNewMajor}\" not found.");
                    throw new NotFoundException(nameof(Patient), request.NhiOfPatientWhoWillReceiveNewMajor);
                }

                LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Handle - Both NHIs are found");
                //1. With the current patient who has the major find the major identifier.
                //2. Set the IsMajor boolean flag to false. This means that Nhi still with them its just no longer major

                var currentMajorId = curntPatntWHoHasTheMajorNhi.Identifiers.FirstOrDefault(x => x.IsMajor);
                currentMajorId.MakeMajor(false);
                LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Handle - Set CurrentMajorId to false");

                //1. for the patient who will recieve the new Major NHI create a new Identifier, set its IsMajor property to True
                //2. Add identifier to the patient who will revieve the new Major Nhi identities list.

                var newMajorId = new Identifier(currentMajorId.Nhi, true);
                curntPatntWhoWillRecieveNewMajorNhi.AddIdentity(newMajorId);
                LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Handle - Adding newMajorId");

                await _dbContext.SaveChangesAsync(cancellationToken);
                LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Hanlde - Db saved");

                await _newPatientNotificationService.PublishAsync(BuildEventMessage(currentMajorId.Nhi.ToString(), newMajorId.Nhi.ToString()));
                LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Handle - Event (MergedPatientNhi) published.");

                LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler.Handle end...");
                return curntPatntWhoWillRecieveNewMajorNhi.Id;
            } catch(Exception e)
            {
                LambdaLogger.Log($"ERROR: Exception in MergePatientCommandHandler - MessageId ({request.MessageId}), CreatedBy ({request.CreatedBy}), Current Major Nhi ({request.NhiOfPatientWithCurrentMajorNhi}), New Major Nhi ({request.NhiOfPatientWhoWillReceiveNewMajor}) - {e.Message}");
                LambdaLogger.Log($"ERROR: Exception in MergePatientCommandHandler InnerException Message - {e.InnerException?.Message}");
                throw;
            }

        }
        private string BuildEventMessage(string currentMajorNhi, string newMajorNhi)
        {
            var msg = new
            {
                EventId = Guid.NewGuid(),
                EventDate = DateTime.UtcNow,
                EventType = "MergedPatientNhi",
                CurrentMajorNhi = currentMajorNhi,
                NewMajorNhi = newMajorNhi
            };
            return JsonSerializer.Serialize(msg);
        }
    }
}
