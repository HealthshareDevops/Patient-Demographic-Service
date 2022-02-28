using Application.Common.Interfaces;
using Domain.Common;
using Domain.Entities;
using Domain.Enums;
using Infrastructure.Persistence.Configurations;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Infrastructure.Persistence
{
    public class ApplicationDbContext : DbContext, IApplicationDbContext
    {
        public static readonly ILoggerFactory _loggerFactory = LoggerFactory.Create(builder =>
        {
            builder.AddConsole();
        });

        private readonly string _connectionString;

        public DbSet<Patient> Patients { get; set; }

        // Enums
        public DbSet<Title> Titles { get; set; }
        public DbSet<Suffix> Suffixes { get; set; }
        public DbSet<NameSource> NameSources { get; set; }
        public DbSet<BirthDateSource> BirthDateSources { get; set; }
        public DbSet<Gender> Genders { get; set; }
        public DbSet<AddressFormat> AddressFormats { get; set; }
        public DbSet<AddressType> AddressTypes { get; set; }
        public DbSet<Country> Countries { get; set; }
        public DbSet<Domicile> Domiciles { get; set; }

        public ApplicationDbContext(string connectionString)
        {
            _connectionString = connectionString;
        }

        public ApplicationDbContext(DbContextOptions dbContextOptions)
            : base(dbContextOptions)
        {
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
            if (!options.IsConfigured)
            {
                options
                    .UseLoggerFactory(_loggerFactory)
                    .UseSqlServer(_connectionString);
            }
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
            modelBuilder.ApplyConfiguration(new AddressConfiguration());
            modelBuilder.ApplyConfiguration(new AddressFormatConfiguration());
            modelBuilder.ApplyConfiguration(new AddressTypeConfiguration());
            modelBuilder.ApplyConfiguration(new CountryConfiguration());
            modelBuilder.ApplyConfiguration(new DomicileConfiguration());
        }
    }
}
