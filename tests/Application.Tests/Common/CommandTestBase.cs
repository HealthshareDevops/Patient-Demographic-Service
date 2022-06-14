using Domain.Entities;
using Domain.Enums;
using Infrastructure.Persistence;
using System;

namespace Application.Tests.Common
{
    public class CommandTestBase : IDisposable
    {
        protected readonly ApplicationDbContext _dbContext;

        public CommandTestBase()
        {
            _dbContext = ApplicationContextFactory.Create();

            _dbContext.AddressFormats.AddRange(
                new AddressFormat(1, "CIQ", "NZ CIQ Address Profile", ""),
                new AddressFormat(2, "POST", "NZ Post Address Standard", "")
                );

            _dbContext.AddressTypes.AddRange(
                new AddressType(1, "M", "Mailing", "", "PST"),
                new AddressType(2, "R", "Residential", "", "H")
                );

            
            _dbContext.BirthDateSources.AddRange(
                new BirthDateSource(1, "BRCT", "Birth Certificate", "An overseas birth certificate is acceptable"),
                new BirthDateSource(2, "BREG", "Birth Register", "Only applied by the Ministry of Health update from matching with the Birth Register"),
                new BirthDateSource(3, "HL7", "HL7 applied", "Date of birth has been applied via HL7 message")
                );

            _dbContext.ContactTypes.AddRange(
                new ContactType(1, "A", "Monitored alarms", ""),
                new ContactType(2, "C", "Mobile (cell phone)", ""),
                new ContactType(3, "E", "Email", ""),
                new ContactType(4, "F", "Facsimile", ""),
                new ContactType(12, "CP", "Mobile", "DHB code"),
                new ContactType(13, "FX", "Facsimile", "DHB code"),
                new ContactType(14, "Internet", "Email", "DHB code"),
                new ContactType(15, "NET", "Email", "DHB code"),
                new ContactType(16, "PH", "Telephone", "DHB code")
                );

            _dbContext.ContactUsages.AddRange(
                new ContactUsage(1, "B", "Business", "Business address"),
                new ContactUsage(2, "E", "Emergency", "Emergency address"),
                new ContactUsage(3, "P", "Personal", "Personal address")
                );

            _dbContext.Countries.AddRange(
                new Country(168, "572", "New Zealand", "")
                );

            _dbContext.Domiciles.AddRange();
            
            _dbContext.Ethnicities.AddRange(
                new Ethnicity(1, "10", "European not further defined", "21"),
                new Ethnicity(2, "11", "NZ European", "22"),
                new Ethnicity(3, "12", "Other European", "20"),
                new Ethnicity(4, "21", "NZ Maori", "1")
                );
            
            _dbContext.Genders.AddRange(
                new Gender(1, "F", "Female", "", "F"),
                new Gender(2, "M", "Male", "", "M"),
                new Gender(3, "O", "Other Gender", "", "O"),
                new Gender(4, "U", "Unspecified or Unknown", "A proper value is applicable but is not provided", "UN")
                );

            _dbContext.NameSources.AddRange(
                new NameSource(1, "BRCT", "Birth Certificate", ""),
                new NameSource(2, "BREG", "Birth Register", ""),
                new NameSource(3, "HL7", "HL7 applied", "Name information source has been applied via the legacy NHI system")
                );

            _dbContext.Suffixes.AddRange(
                new Suffix(1, "1ST", "The First"),
                new Suffix(2, "2ND", "The Second"),
                new Suffix(3, "3RD", "The Third")
                );

            _dbContext.Titles.AddRange(
                new Title(1, "DAME", "Dame", ""),
                new Title(2, "DR", "Doctor", ""),
                new Title(3, "HER EXCEL", "Her Excellency", ""),
                new Title(4, "HIS EXCEL", "His Excellency", ""),
                new Title(5, "LADY", "Lady", ""),
                new Title(6, "MISS", "Miss", ""),
                new Title(7, "MR", "Mr", ""),
                new Title(8, "MRS", "Mrs", ""),
                new Title(9, "MS", "Ms", "")
                );

            _dbContext.SaveChanges();
        }

        public void Dispose()
        {
            ApplicationContextFactory.Destroy(_dbContext);
        }
    }
}
