using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class BirthDateSourceConfiguration : IEntityTypeConfiguration<BirthDateSource>
    {
        public void Configure(EntityTypeBuilder<BirthDateSource> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Code)
                .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore);
            builder.Property(p => p.Description)
                .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore);
            builder.Property(p => p.Comment)
                .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore);
        }
    }
}
