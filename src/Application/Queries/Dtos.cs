using Domain.Entities;
using System.Collections.Generic;

namespace Application.Queries
{
    public class PatientDto
    {
        public string Nhi { get; set; }
        public List<NameDto> Names { get; set; } = new List<NameDto>();
        public string BirthDate { get; set; }
        public string BirthDateSource { get; set; }
        public string Gender { get; set; }
        public List<AddressDto> Addresses { get; set; } = new List<AddressDto>();

        public static PatientDto ToPatientDto(Patient patnt)
        {
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

            return new PatientDto()
            {
                Nhi = patnt.Nhi,
                Names = nameDtos,
                BirthDate = patnt.BirthDate,
                BirthDateSource = patnt.BirthDateSource.Code,
                Gender = patnt.Gender.Code,
                Addresses = addressDtos
            };
        }
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
        public string EffectiveFrom { get;  set; }
        public string EffectiveTo { get; set; }
        public string Domicile { get; set; }
        public bool IsPrimary { get; set; }
        public string AddressType { get; set; }
    }
}
