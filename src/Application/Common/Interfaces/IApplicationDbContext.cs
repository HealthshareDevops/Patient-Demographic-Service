using Domain.Entities;
using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Common.Interfaces
{
    public interface IApplicationDbContext
    {
        DbSet<Patient> Patients { get; set; }
        DbSet<Domicile> Domiciles { get; set; }

        Task<int> SaveChangesAsync(CancellationToken cancellationToken);
    }
}
