using Domain.Entities;
using Domain.ValueObjects;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

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
            builder.HasMany(p => p.HumanNames).WithOne()
                .OnDelete(DeleteBehavior.Cascade)
                .Metadata.PrincipalToDependent.SetPropertyAccessMode(PropertyAccessMode.Field);
            builder.Property(p => p.BirthDate)
                .HasConversion(p => p.Value, p => BirthDate.Create(p).Value)
                .IsRequired();
            builder.Property<string>("CreatedBy");
            builder.Property<DateTime>("CreatedDate").HasColumnType("datetime2");
            builder.Property<string>("LastModifiedBy");
            builder.Property<DateTime>("LastModifiedDate").HasColumnType("datetime2");
            builder.HasMany(p => p.Addresses).WithOne()
                .OnDelete(DeleteBehavior.Cascade)
                .Metadata.PrincipalToDependent.SetPropertyAccessMode(PropertyAccessMode.Field);
        }
    }
}
