using Amazon.Lambda.Core;
using Amazon.SQS;
using Application.Common.Exceptions;
using Application.Common.Interfaces;
using CSharpFunctionalExtensions;
using Domain.Entities;
using Domain.Enums;
using Domain.ValueObjects;
using MediatR;
using Microsoft.Extensions.Options;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Commands.CreatePatient
{
    public class CreatePatientCommand : IRequest<long>
    {
        public string Nhi { get; set; }
        public string Title { get; set; }
        public string GivenName { get; set; }
        public string MiddleName { get; set; }
        public string FamilyName { get; set; }
        public string Suffix { get; set; }
        public bool IsPreferred { get; set; }
        public bool IsProtected { get; set; }
        public string NameSource { get; set; }
        public string EffectiveFrom { get; set; }
        public string EffectiveTo { get; set; }
    }

    public class CreatePatientCommandHandler : IRequestHandler<CreatePatientCommand, long>
    {
        private readonly IApplicationDbContext _dbContext;
        private readonly IQueueService _queueService;

        public CreatePatientCommandHandler(IApplicationDbContext dbContext, IQueueService queueService)
        {
            _dbContext = dbContext;
            _queueService = queueService;
        }

        public async Task<long> Handle(CreatePatientCommand request, CancellationToken cancellationToken)
        {
            LambdaLogger.Log($"INFO: CreatePatientCommandHandler start...");
            try
            {
                // ToDo: Validation code.
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Request validation completed.");

                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Nhi: {request.Nhi}.");
                Result<Nhi> nhi = Nhi.Create(request.Nhi);
                if (nhi.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommandHandler: Nhi failure.");
                    throw new ValidationException(nhi.Error);
                }
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Nhi: {nhi.Value} created.");
                // Create HumanName
                var title = Title.FromCode(request.Title);
                var suffix = Suffix.FromCode(request.Suffix);
                var namesource = NameSource.FromCode(request.NameSource);

                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Title, Suffix, NameSource created.");
                
                Result<Name> name = Name.Create(request.GivenName, request.MiddleName, request.FamilyName);
                if (name.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommandHandler: Name failure.");
                    throw new ValidationException(name.Error);
                }
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Name created.");

                Result<Date> effectiveFrom = Date.Create(request.EffectiveFrom);
                if (effectiveFrom.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommandHandler: EffectiveFrom date failure.");
                    throw new ValidationException(effectiveFrom.Error);
                }
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: EffectiveFrom date created.");
                
                Result<Date> effectiveTo = Date.Create(request.EffectiveTo);
                if (effectiveTo.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommandHandler: EffectiveTo date failure.");
                    throw new ValidationException(effectiveTo.Error);
                }
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: EffectiveTo date created.");
               
                var humanName = new HumanName(title, name.Value, suffix, request.IsPreferred, request.IsProtected, namesource, effectiveFrom.Value, effectiveTo.Value);
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: HumanName object created.");



                var patnt = new Patient(nhi.Value, humanName);
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient object created.");

                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient object DB Saving.");
                _dbContext.Patients.Attach(patnt);
                await _dbContext.SaveChangesAsync(cancellationToken);
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient object DB Saved. Patient Id: {patnt.Id}");

                LambdaLogger.Log($"INFO: Sending message to SQS start...");
                var response = await _queueService.SendMessageAsync("Hello world from Console Application.");
                LambdaLogger.Log($"INFO: Sending message to SQS end...");

                LambdaLogger.Log($"INFO: CreatePatientCommandHandler end...");
                return patnt.Id;
            }
            catch (Exception e)
            {
                LambdaLogger.Log($"ERROR: Error occurred in CreatePatientCommandHandler {e.Message}");
                LambdaLogger.Log($"ERROR: Error occurred in CreatePatientCommandHandler InnerException {e.InnerException.Message}");
                throw e;
            }
        }
    }
}
