using Domain.Entities;
using Domain.ValueObjects;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class HumanNameConfiguration : IEntityTypeConfiguration<HumanName>
    {
        public void Configure(EntityTypeBuilder<HumanName> builder)
        {
            builder.ToTable("HumanNames");
            builder.Property(p => p.Id);
            builder.HasOne(p => p.Title)
                .WithMany();
            builder.OwnsOne(p => p.Name, p =>
            {
                p.Property(pp => pp.GivenName).HasColumnName("GivenName");
                p.Property(pp => pp.MiddleName).HasColumnName("MiddleName");
                p.Property(pp => pp.FamilyName).HasColumnName("FamilyName");
            });
            builder.HasOne(p => p.Suffix)
                .WithMany();
            builder.Property(p => p.EffectiveFrom)
                .HasConversion(p => p.Value, p => Date.Create(p).Value);
            builder.Property(p => p.EffectiveTo)
                .HasConversion(p => p.Value, p => Date.Create(p).Value);
            builder.HasOne(p => p.NameSource)
                .WithMany();
        }
    }
}
