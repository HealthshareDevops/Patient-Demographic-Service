using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Domain.Entities;
using Domain.ValueObjects;

namespace Infrastructure.Persistence.Configurations
{
    public class IdentifierConfiguration : IEntityTypeConfiguration<Identifier>
    {
        public void Configure(EntityTypeBuilder<Identifier> builder)
        {
            //TODO implement method
            builder.ToTable("Identifiers");
            builder.Property(p => p.Id);
            builder.Property(p => p.Nhi)
            .HasConversion(p => p.Value, p => Nhi.Create(p).Value)
            .IsRequired();
            builder.Property(p => p.IsMajor);
        }
    }
}
