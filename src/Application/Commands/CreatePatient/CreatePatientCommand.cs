using Application.Common.Interfaces;
using Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Commands.CreatePatient
{
    public class CreatePatientCommand : IRequest<long>
    {
        public string Nhi { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
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
            var patnt = new Patient(request.Nhi, request.FirstName, request.MiddleName, request.LastName);
            _dbContext.Patients.Attach(patnt);
            await _dbContext.SaveChangesAsync(cancellationToken);
            
            var response = $"Id: {patnt.Id}, Nhi: {patnt.Nhi}, FirstName: {patnt.FirstName}, MiddleName: {patnt.MiddleName}, LastName: {patnt.LastName}";
            
            return patnt.Id;
        }
    }
}
