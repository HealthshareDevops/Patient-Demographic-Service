using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class SuffixConfiguration : IEntityTypeConfiguration<Suffix>
    {
        public void Configure(EntityTypeBuilder<Suffix> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Code)
                .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore); 
            builder.Property(p => p.Comment);
        }
    }
}
