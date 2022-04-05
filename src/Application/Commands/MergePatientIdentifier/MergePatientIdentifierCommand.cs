using Amazon.Lambda.Core;
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

namespace Application.Commands.MergePatientIdentifier
{
    public class MergePatientIdentifierCommand : IRequest<long>
    {
        public string EventId;
        public string Nhi;
        public string CurrentMajorNhi;
        public string NewMajorNhi;
    }

    //Handler
    public class MergePatientIdentifierCommandHandler : IRequestHandler<MergePatientIdentifierCommand, long> 
    {
        private readonly IApplicationDbContext _dbContext;
        private readonly IMissingDataQueueService _queueService;
        public MergePatientIdentifierCommandHandler(IApplicationDbContext dbContext, IMissingDataQueueService queueService) {
            _dbContext = dbContext;
            _queueService = queueService;
        }

        public async Task<long> Handle(MergePatientIdentifierCommand request, CancellationToken cancellationToken) {

            LambdaLogger.Log($"INFO: MergePatientIdentifierCommandHandler start...");

            var patnt = await _dbContext.Patients.Include(x => x.Identifiers).FirstOrDefaultAsync(x => x.Nhi == request.Nhi);


            return patnt.Id;


        }
    }
}
