using Application.Common.Exceptions;
using Application.Common.Interfaces;
using Domain.Entities;
using MediatR;
using Microsoft.EntityFrameworkCore;
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
            var response = await _dbContext.Patients
                .Include(x => x.HumanNames)
                    .ThenInclude(n => n.Suffix)
                .Include(x => x.HumanNames)
                    .ThenInclude(n => n.Title)
                .FirstOrDefaultAsync(x => x.Nhi == request.Nhi);

            if (response is null)
            {
                throw new NotFoundException(nameof(Patient), request.Nhi);
            }
            
            return PatientDto.ToPatientDto(response);
        }
    }
}
