using Domain.Entities;
using System.Collections.Generic;

namespace Application.Queries
{
    public class PatientDto
    {
        public List<IdentifierDto> Identifiers { get; set; } = new List<IdentifierDto>();
        public List<NameDto> Names { get; set; } = new List<NameDto>();
        public string BirthDate { get; set; }
        public string BirthDateSource { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
        public List<EthnicityDto> Ethnicities { get; set; } = new List<EthnicityDto>();
        public List<AddressDto> Addresses { get; set; } = new List<AddressDto>();
        public List<ContactDto> Contacts { get; set; } = new List<ContactDto>();

        public static PatientDto ToPatientDto(Patient patnt)
        {
            var identifierDtos = new List<IdentifierDto>();
            foreach(var identifier in patnt.Identifiers)
            {
                var identifierDto = new IdentifierDto();
                identifierDto.Nhi = identifier.Nhi;
                identifierDto.IsMajor = identifier.IsMajor;
                identifierDtos.Add(identifierDto);
            }

            var nameDtos = new List<NameDto>();
            foreach (var humanName in patnt.HumanNames)
            {
                var nameDto = new NameDto();
                nameDto.Suffix = !(humanName.Suffix is null) ? humanName.Suffix.Code : string.Empty;
                nameDto.GivenName = humanName.Name.GivenName;
                nameDto.MiddleName = humanName.Name.MiddleName;
                nameDto.FamilyName = humanName.Name.FamilyName;
                nameDto.Title = !(humanName.Title is null) ? humanName.Title.Code : string.Empty;
                nameDto.NameSource = !(humanName.NameSource is null) ? humanName.NameSource.Code : string.Empty;
                nameDto.IsPreferred = humanName.IsPreferred;
                nameDto.IsProtected = humanName.IsProtected;
                nameDto.EffectiveFrom = humanName.EffectiveFrom;
                nameDto.EffectiveTo = humanName.EffectiveTo;
                nameDtos.Add(nameDto);
            }
            
            var ethnicityDtos = new List<EthnicityDto>();
            foreach (var patientEthnicity in patnt.PatientEthnicities)
            {
                var ethnicityDto = new EthnicityDto();
                if (patientEthnicity.Ethnicity != null)
                {
                    ethnicityDto.Code = patientEthnicity.Ethnicity.Code;
                    ethnicityDto.Description = patientEthnicity.Ethnicity.Description;
                    ethnicityDto.Priority = patientEthnicity.Ethnicity.Priority;
                    ethnicityDtos.Add(ethnicityDto);
                }
            }

            var addressDtos = new List<AddressDto>();
            foreach(var address in patnt.Addresses)
            {
                var addressDto = new AddressDto();
                addressDto.AddressFormat = !(address.AddressFormat is null) ? address.AddressFormat.Code : string.Empty;
                addressDto.BuildingName = address.BuildingName;
                addressDto.StreetAddress = address.StreetAddress;
                addressDto.AdditionalStreetAddress = address.AdditionalStreetAddress;
                addressDto.Suburb = address.Suburb;
                addressDto.TownOrCity = address.TownOrCity;
                addressDto.PostCode = address.PostCode;
                addressDto.Country = !(address.Country is null) ? address.Country.Code : string.Empty;
                addressDto.IsProtected = address.IsProtected;
                addressDto.IsPermanent = address.IsPermanent;
                addressDto.EffectiveFrom = address.EffectiveFrom;
                addressDto.EffectiveTo = address.EffectiveTo;
                addressDto.Domicile = !(address.Domicile is null) ? address.Domicile.Code : string.Empty;
                addressDto.IsPrimary = address.IsPrimary;
                addressDto.AddressType = address.AddressType.Code;
                addressDtos.Add(addressDto);
            }

            var contactDtos = new List<ContactDto>();
            foreach (var contact in patnt.Contacts)
            {   var contactDto = new ContactDto();
                contactDto.ContactUsage = !(contact.ContactUsage is null) ? contact.ContactUsage.Code : string.Empty;
                contactDto.ContactType = !(contact.ContactType is null) ? contact.ContactType.Code : string.Empty; 
                contactDto.Detail = contact.Detail;
                contactDto.IsProtected = contact.IsProtected;
                contactDto.EffectiveFrom = contact.EffectiveFrom;   
                contactDto.EffectiveTo = contact.EffectiveTo;   
                contactDto.IsPreferred = contact.IsPreferred;
                contactDtos.Add(contactDto);
            }

            return new PatientDto()
            {
                Names = nameDtos,
                BirthDate = patnt.BirthDate,
                BirthDateSource = patnt.BirthDateSource.Code,
                Age = patnt.Age,
                Gender = patnt.Gender.Code,
                Identifiers = identifierDtos,
                Ethnicities = ethnicityDtos,
                Addresses = addressDtos,
                Contacts = contactDtos
            };
        }
    }
    public class IdentifierDto
    {
        public string Nhi { get; set; }
        public bool IsMajor { get; set; }
    }

    public class NameDto
    {
        public string Title { get; set; }
        public string GivenName { get; set; }
        public string MiddleName { get; set; }
        public string FamilyName { get; set; }
        public string Suffix { get; set; }
        public bool IsPreferred { get; set; }
        public bool IsProtected { get; set; }
        public string NameSource { get; set; }
        public string EffectiveFrom { get; set; }
        public string EffectiveTo { get; set; }
    }

    public class EthnicityDto
    {
        public string Code { get; set; }
        public string Description { get; set; }
        public string Priority { get; set; }
    }

    public class AddressDto
    {
        public string AddressFormat { get; set; }
        public string BuildingName { get; set; }
        public string StreetAddress { get; set; }
        public string AdditionalStreetAddress { get; set; }
        public string Suburb { get; set; }
        public string TownOrCity { get; set; }
        public string PostCode { get; set; }
        public string Country { get; set; }
        public bool IsProtected { get; set; }
        public bool IsPermanent { get; set; }
        public string EffectiveFrom { get; set; }
        public string EffectiveTo { get; set; }
        public string Domicile { get; set; }
        public bool IsPrimary { get; set; }
        public string AddressType { get; set; }
    }

    public class ContactDto
    {
        public string ContactUsage { get; set; }

        public string ContactType { get; set; }

        public string Detail { get; set; }

        public bool IsProtected { get; set; }

        public string EffectiveFrom { get; set; }

        public string EffectiveTo { get; set; }

        public bool IsPreferred { get; set; }
    }
}
