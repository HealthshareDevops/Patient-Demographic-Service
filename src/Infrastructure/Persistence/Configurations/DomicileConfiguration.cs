using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace Infrastructure.Persistence.Configurations
{
    public class DomicileConfiguration : IEntityTypeConfiguration<Domicile>
    {
        public void Configure(EntityTypeBuilder<Domicile> builder)
        {
            builder.Property(p => p.Id);
        }
    }
}
