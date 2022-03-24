using Domain.Entities;
using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using System.Diagnostics.CodeAnalysis;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Common.Interfaces
{
    public interface IApplicationDbContext
    {
        DbSet<Patient> Patients { get; set; }
        
        DbSet<Title> Titles { get; set; }
        DbSet<Suffix> Suffixes { get; set; }
        DbSet<NameSource> NameSources { get; set; }
        DbSet<AddressFormat> AddressFormats { get; set; }
        DbSet<AddressType> AddressTypes { get; set; }
        DbSet<Country> Countries { get; set; }
        DbSet<Domicile> Domiciles { get; set; }

        Task<int> SaveChangesAsync(CancellationToken cancellationToken);
        EntityEntry<TEntity> Entry<TEntity>([NotNullAttribute] TEntity entity) where TEntity : class;
    }
}
