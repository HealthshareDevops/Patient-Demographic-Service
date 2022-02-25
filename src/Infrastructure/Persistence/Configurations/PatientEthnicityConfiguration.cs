using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PatientEthnicityConfiguration : IEntityTypeConfiguration<PatientEthnicity>
    {
        public void Configure(EntityTypeBuilder<PatientEthnicity> builder)
        {
            builder.ToTable("PatientEthnicities");
            builder.HasKey(pe => new {pe.PatientId, pe.EthnicityId});

            builder.HasOne(p => p.Patient)
                .WithMany(pe => pe.PatientEthnicities)
                .HasForeignKey(p => p.PatientId);
            //.OnDelete(DeleteBehavior.Cascade)
            //.Metadata.PrincipalToDependent.SetPropertyAccessMode(PropertyAccessMode.Field);

            //builder.HasOne(p => p.Ethnicity)
            //    .WithMany(pe => pe.)
            //    .HasForeignKey(p => p.);
        }
    }
}
