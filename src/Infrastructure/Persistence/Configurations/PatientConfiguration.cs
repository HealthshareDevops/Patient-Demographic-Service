using Domain.Entities;
using Domain.ValueObjects;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PatientConfiguration : IEntityTypeConfiguration<Patient>
    {
        public void Configure(EntityTypeBuilder<Patient> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Nhi)
                .HasConversion(p => p.Value, p => Nhi.Create(p).Value)
                .IsRequired();
            builder.HasIndex(p => p.Nhi).IsUnique();
        }
    }
}
