using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class ContactUsageConfiguration : IEntityTypeConfiguration<ContactUsage>
    {
        public void Configure(EntityTypeBuilder<ContactUsage> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Code);
            builder.Property(p => p.Description);
            builder.Property(p => p.Comment);
        }
    }
}
