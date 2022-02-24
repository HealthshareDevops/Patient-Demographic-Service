using Domain.Entities;
using Domain.ValueObjects;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class AddressConfiguration : IEntityTypeConfiguration<Address>
    {
        public void Configure(EntityTypeBuilder<Address> builder)
        {
            builder.ToTable("Addresses");
            builder.Property(p => p.Id);
            builder.HasOne(p => p.Country)
                .WithMany();
            builder.HasOne(p => p.Domicile)
                .WithMany();
            builder.Property(p => p.EffectiveFrom)
                .HasConversion(p => p.Value, p => Date.Create(p).Value);
            builder.Property(p => p.EffectiveTo)
                .HasConversion(p => p.Value, p => Date.Create(p).Value);
        }
    }
}
