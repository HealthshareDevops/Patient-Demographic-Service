using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class NameSourceConfiguration : IEntityTypeConfiguration<NameSource>
    {
        public void Configure(EntityTypeBuilder<NameSource> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Code);
            builder.Property(p => p.Description);
            builder.Property(p => p.Comment);
        }
    }
}
