using Amazon.Lambda.Core;
using Application.Common.Exceptions;
using Application.Common.Interfaces;
using Domain.Entities;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Queries
{
    public class GetPatientQuery:IRequest<PatientDto>
    {
        public string Nhi { get; set; }
    }

    public class GetPatientQueryHandler : IRequestHandler<GetPatientQuery, PatientDto>
    {
        private readonly IApplicationDbContext _dbContext;

        public GetPatientQueryHandler(IApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<PatientDto> Handle(GetPatientQuery request, CancellationToken cancellationToken)
        {
            try
            {
                LambdaLogger.Log($"INFO: GetPatientQueryHandler start...");
                var response = await _dbContext.Patients
                    .Include(x => x.Identifiers.OrderByDescending(i => i.IsMajor))
                    .Include(x => x.HumanNames)
                        .ThenInclude(n => n.Suffix)
                    .Include(x => x.HumanNames)
                        .ThenInclude(n => n.Title)
                    .Include(x => x.BirthDateSource)
                    .Include(x => x.Gender)
                    .Include(x => x.PatientEthnicities)
                        .ThenInclude(x => x.Ethnicity)
                    .Include(x => x.Addresses)
                        .ThenInclude(x => x.AddressFormat)
                    .Include(x => x.Addresses)
                        .ThenInclude(x => x.AddressType)
                    .Include(x => x.Contacts)
                        .ThenInclude(c => c.ContactType)
                    .Include(x => x.Contacts)
                        .ThenInclude(c => c.ContactUsage)
                    .AsNoTracking()
                    .Where(x => x.Identifiers.Any(i => i.Nhi == request.Nhi && i.IsMajor == true))
                    .FirstOrDefaultAsync();

                if (response is null)
                {
                    LambdaLogger.Log($"INFO: Nhi: {request.Nhi} not found.");
                    throw new NotFoundException(nameof(Patient), request.Nhi);
                }

                LambdaLogger.Log($"INFO: Nhi: {request.Nhi} found info.");
                var patntDto = PatientDto.ToPatientDto(response);
                LambdaLogger.Log($"INFO: Mapped to PatientDto");
                return patntDto;
            } catch(Exception ex)
            {
                LambdaLogger.Log($"ERROR: Error occurred. {ex.Message}");
                throw;
            }
        }
    }
}
