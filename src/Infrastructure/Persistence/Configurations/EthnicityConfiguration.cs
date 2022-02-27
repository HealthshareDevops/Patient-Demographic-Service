using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class EthnicityConfiguration : IEntityTypeConfiguration<Ethnicity>
    {
        public void Configure(EntityTypeBuilder<Ethnicity> builder)
        {
            builder.ToTable("Ethnicities");
            builder.Property(p => p.Id);
            builder.Property(p => p.Code);
            builder.Property(p => p.Description);
            builder.Property(p => p.Priority);

        }
    }
}
