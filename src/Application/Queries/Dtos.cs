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
        public List<ContactDto> Contacts { get; set; } = new List<ContactDto>();

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

            var contactDtos = new List<ContactDto>();
            foreach (var contact in patnt.Contacts)
            {   var contactDto = new ContactDto();
                contactDto.ContactUsage = contact.ContactUsage.Code;
                contactDto.ContactType = contact.ContactType.Code; 
                contactDto.Detail = contact.Detail;
                contactDto.IsProtected = contact.IsProtected;
                contactDto.EffectiveFrom = contact.EffectiveFrom;   
                contactDto.EffectiveTo = contact.EffectiveTo;   
                contactDto.IsPreferred = contact.IsPreferred;
                contactDtos.Add(contactDto);
            }

            return new PatientDto()
            {
                Nhi = patnt.Nhi,
                Names = nameDtos,
                BirthDate = patnt.BirthDate,
                BirthDateSource = patnt.BirthDateSource.Code,
                Gender = patnt.Gender.Code,
                Contacts = contactDtos,
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

    public class ContactDto
    {

        public string ContactUsage { get; set; }

        public string ContactType { get;  set; }

        public string Detail { get;  set; }

        public bool IsProtected { get;  set; }

        public string EffectiveFrom { get;  set; }

        public string EffectiveTo { get;  set; }

        public bool IsPreferred { get;  set; }
    }
}
