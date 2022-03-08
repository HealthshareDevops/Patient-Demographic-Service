using Domain.Entities;
using Domain.ValueObjects;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class ContactConfiguration : IEntityTypeConfiguration<Contact>
    {
        public void Configure(EntityTypeBuilder<Contact> builder)
        {
            builder.ToTable("Contacts");
            builder.Property(p => p.Id);
            builder.HasOne(p => p.ContactType)
                .WithMany();
            builder.HasOne(p => p.ContactUsage)
                .WithMany();
            builder.Property(p => p.Detail);
            builder.Property(p => p.IsProtected);
            builder.Property(p => p.EffectiveFrom)
                .HasConversion(p => p.Value, p => Date.Create(p).Value);
            builder.Property(p => p.EffectiveTo)
                .HasConversion(p => p.Value, p => Date.Create(p).Value);
            builder.Property(p => p.IsPreferred);
        }
    }
}
