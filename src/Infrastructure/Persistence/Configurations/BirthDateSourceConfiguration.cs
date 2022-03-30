using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class BirthDateSourceConfiguration : IEntityTypeConfiguration<BirthDateSource>
    {
        public void Configure(EntityTypeBuilder<BirthDateSource> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Code);
            builder.Property(p => p.Description);
            builder.Property(p => p.Comment);
            builder.HasData(
                new BirthDateSource(1, "BRCT", "Birth Certificate", "An overseas birth certificate is acceptable"),
                new BirthDateSource(2, "BREG", "Birth Register", "Only applied by the Ministry of Health update from matching with the Birth Register"),
                new BirthDateSource(3, "HL7", "HL7 applied", "Date of birth has been applied via HL7 message"),
                new BirthDateSource(4, "MIGR", "Migrated", "From the legacy NHI system"),
                new BirthDateSource(5, "NPRF", "Proof Not Sighted", "Information(not proof) provided by the patient/whānau"),
                new BirthDateSource(6, "NZCI", "NZ Certificate of Identity", ""),
                new BirthDateSource(7, "NZCT", "NZ Citizenship Certificate", "New Zealand Citizenship Certificate issued by Department of Internal Affairs"),
                new BirthDateSource(8, "NZET", "NZ Emergency Travel Document", ""),
                new BirthDateSource(9, "NZPV", "NZ Permanent Resident Visa", "A New Zealand Permanent Resident Visa(not time bound) issued by Immigration New Zealand"),
                new BirthDateSource(10, "NZTV", "NZ Resident Visa", "A New Zealand Resident Visa(time bound) issued by Immigration New Zealand"),
                new BirthDateSource(11, "NZRT", "NZ Refugee Travel Document", ""),
                new BirthDateSource(12, "OTHR", "Other", "Other official document provided"),
                new BirthDateSource(13, "PPRT", "Passport", "An overseas passport is acceptable")
            );
        }
    }
}
