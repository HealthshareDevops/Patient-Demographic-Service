using Application.Common.Exceptions;
using Application.Common.Interfaces;
using CSharpFunctionalExtensions;
using Domain.Entities;
using Domain.Enums;
using Domain.ValueObjects;
using MediatR;
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

        public CreatePatientCommandHandler(IApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<long> Handle(CreatePatientCommand request, CancellationToken cancellationToken)
        {
            // ToDo: Validation code.


            Result<Nhi> nhi = Nhi.Create(request.Nhi);
            if (nhi.IsFailure)
            {
                throw new ValidationException(nhi.Error);
            }

            // Create HumanName
            var title = Title.FromCode(request.Title);
            var suffix = Suffix.FromCode(request.Suffix);
            var namesource = NameSource.FromCode(request.NameSource);

            Result<Name> name = Name.Create(request.GivenName, request.MiddleName, request.FamilyName);
            if (name.IsFailure)
            {
                throw new ValidationException(name.Error);
            }
            Result<Date> effectiveFrom = Date.Create(request.EffectiveFrom);
            if (effectiveFrom.IsFailure)
            {
                throw new ValidationException(effectiveFrom.Error);
            }
            Result<Date> effectiveTo = Date.Create(request.EffectiveTo);
            if (effectiveTo.IsFailure)
            {
                throw new ValidationException(effectiveTo.Error);
            }
            var humanName = new HumanName(title, name.Value, suffix, request.IsPreferred, request.IsProtected, namesource, effectiveFrom.Value, effectiveTo.Value);
            // HumanName



            var patnt = new Patient(nhi.Value, humanName);

            _dbContext.Patients.Attach(patnt);
            await _dbContext.SaveChangesAsync(cancellationToken);
            
           
            
            return patnt.Id;
        }
    }
}
