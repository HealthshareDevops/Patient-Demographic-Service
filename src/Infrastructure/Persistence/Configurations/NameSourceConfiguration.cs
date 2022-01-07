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
            builder.HasData(
                new NameSource(1, "BRCT", "Birth Certificate", ""),
                new NameSource(2, "BREG", "Birth Register", ""),
                new NameSource(3, "HL7", "HL7 applied", "Name information source has been applied via the legacy NHI system"),
                new NameSource(4, "NPRF", "Proof Not Sighted", "Information(not proof) provided by the patient / whānau"),
                new NameSource(5, "NZCI", "NZ Certificate of Identity", ""),
                new NameSource(6, "NZCT", "NZ Citizenship Certificate", ""),
                new NameSource(7, "NZET", "NZ Emergency Travel Document", ""),
                new NameSource(8, "NZPV", "NZ Permanent Resident Visa", "A New Zealand Permanent Resident Visa(not time bound) issued by Immigration New Zealand"),
                new NameSource(9, "NZTV", "NZ Resident Visa", "A New Zealand Resident Visa(time bound) issued by Immigration New Zealand"),
                new NameSource(10, "NZRT", "NZ Refugee Travel Document", ""),
                new NameSource(11, "OTHR", "Other", "Other official documents"),
                new NameSource(12, "PPRT", "Passport", "")
            );
        }
    }
}
