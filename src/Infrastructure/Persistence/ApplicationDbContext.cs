using Application.Common.Interfaces;
using Domain.Common;
using Domain.Entities;
using Domain.Enums;
using Infrastructure.Persistence.Configurations;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Infrastructure.Persistence
{
    public class ApplicationDbContext : DbContext, IApplicationDbContext
    {
        private readonly string _connectionString;

        public DbSet<Patient> Patients { get; set; }

        // Enums
        public DbSet<Title> Titles { get; set; }
        public DbSet<Suffix> Suffixes { get; set; }
        public DbSet<NameSource> NameSources { get; set; }
        public DbSet<BirthDateSource> BirthDateSources { get; set; }
        public DbSet<Gender> Genders { get; set; }

        public DbSet<ContactUsage> ContactUsages { get; set; }
        public DbSet<ContactType> ContactTypes { get; set; }


        public ApplicationDbContext(string connectionString)
        {
            _connectionString = connectionString;
        }

        public override async Task<int> SaveChangesAsync(CancellationToken cancellationToken = new CancellationToken())
        {
            var timestamp = DateTime.UtcNow;
            foreach(var entry in ChangeTracker.Entries()
                .Where(e => e.Entity is IAuditableEntity && 
                    (e.State == EntityState.Added || e.State == EntityState.Modified)
                )) {
                entry.Property("LastModifiedDate").CurrentValue = timestamp;
                if(entry.State == EntityState.Added)
                {
                    entry.Property("CreatedDate").CurrentValue = timestamp;
                }
            }
            var result = await base.SaveChangesAsync(cancellationToken);
            return result;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(_connectionString);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new PatientConfiguration());
            modelBuilder.ApplyConfiguration(new HumanNameConfiguration());
            modelBuilder.ApplyConfiguration(new TitleConfiguration());
            modelBuilder.ApplyConfiguration(new SuffixConfiguration());
            modelBuilder.ApplyConfiguration(new NameSourceConfiguration());
            modelBuilder.ApplyConfiguration(new BirthDateSourceConfiguration());
            modelBuilder.ApplyConfiguration(new GenderConfiguration());
            modelBuilder.ApplyConfiguration(new ContactConfiguration());
            modelBuilder.ApplyConfiguration(new ContactTypeConfiguration());
            modelBuilder.ApplyConfiguration(new ContactUsageConfiguration());
        }
    }
}
