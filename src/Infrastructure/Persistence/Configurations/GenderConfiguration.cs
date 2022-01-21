using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class GenderConfiguration : IEntityTypeConfiguration<Gender>
    {
        public void Configure(EntityTypeBuilder<Gender> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Code);
            builder.Property(p => p.Description);
            builder.Property(p => p.Comment);
            builder.Property(p => p.HL7AdministrativeGender);

            builder.HasData(
                new Gender(1, "F", "Female", "", "F"),
                new Gender(2, "M", "Male", "", "M"),
                new Gender(3, "O", "Other Gender", "", "O"),
                new Gender(4, "U", "Unspecified or Unknown", "A proper value is applicable but is not provided", "UN")
            );
        }
    }
}
