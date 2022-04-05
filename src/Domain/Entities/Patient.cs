using CSharpFunctionalExtensions;
using Domain.Common;
using Domain.Enums;
using Domain.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Domain.Entities
{
    public class Patient : Entity, IAuditableEntity
    {
        // 2.1 NHI number
        public Nhi Nhi { get; private set; }

        //// Do we need list of Identifier (Part of Nhi) - ToDo
        ///public Identifier Identifier { get; private set; }
        private readonly List<Identifier> _identifiers = new List<Identifier>();
        public virtual IReadOnlyList<Identifier> Identifiers => _identifiers.ToList();

        // 2.2 Patient name
        private readonly List<HumanName> _humanNames = new List<HumanName>();
        public virtual IReadOnlyList<HumanName> HumanNames => _humanNames.ToList();

        // 2.3 Birth date and place
        public BirthDate BirthDate { get; private set; }
        public BirthDateSource BirthDateSource { get; private set; }

        // 2.4 Gender
        public Gender Gender { get; private set; }

        // 2.5 Ethnicities
        private readonly List<PatientEthnicity> _patientEthnicities = new List<PatientEthnicity>();
        public virtual IReadOnlyList<PatientEthnicity> PatientEthnicities => _patientEthnicities.ToList();

        // 3 Addresses
        private readonly List<Address> _addresses = new List<Address>();
        public virtual IReadOnlyList<Address> Addresses => _addresses.ToList();

        // 5 Contact
        private readonly List<Contact> _contacts = new List<Contact>();
        public virtual IReadOnlyList<Contact> Contacts => _contacts.ToList();

        public int Age
        {
            get
            {
                var today = DateTime.Today;
                var age = today.Year - BirthDate.DtValue.Year;
                if (BirthDate.DtValue.Date > today.AddYears(-age)) --age;
                return age;
            }
        }

        protected Patient() { }

        public Patient(Nhi nhi, BirthDate birthDate, BirthDateSource birthDateSource, Gender gender)
        {
            Nhi = nhi ?? throw new ArgumentNullException(nameof(nhi));
            
            //AddName(humanName);

            //TODO - This can called from the command handle
            

            Gender = gender ?? throw new ArgumentNullException(nameof(gender));

            SetBirthDateAndPlaceInfo(birthDate, birthDateSource); 
        }

        public void AddName(Title title,
            Name name,
            Suffix suffix,
            bool isPreferred,
            bool isProtected,
            NameSource nameSource,
            Date effectiveFrom,
            Date effectiveTo)
        {
            var humanName = new HumanName(this, title, name, suffix, isPreferred, isProtected, nameSource, effectiveFrom, effectiveTo);
            _humanNames.Add(humanName);
        }


        //Merge Patient Identity - use case changes
        public void AddIdentity(Identifier identity) {
           // Identifier id = new Identifier(nhi, isMajor);

            if (identity.IsMajor)
            {
                foreach (var idtfr  in _identifiers)
                {
                    idtfr.MakeMajor(false);
                }
            }
            _identifiers.Add(identity);
        }
    //    public void AddName(HumanName humanName)
    //    {
    //        var humanName = new HumanName(this, title, name, suffix, isPreferred, isProtected, nameSource, effectiveFrom, effectiveTo);
    //       _humanNames.Add(humanName);
    //   }

        public void AddEthnicity(Ethnicity ethnicity)
        {
            _patientEthnicities.Add(new PatientEthnicity(this, ethnicity));
        }

        public void AddAddress(Address address)
        {
            if(address.IsPrimary)
            {
                foreach(var addr in _addresses)
                {
                    addr.MakePrimary(false);
                }
            }
            _addresses.Add(address);
        }

        public void AddContact(Contact contact)
        {
            _contacts.Add(contact);
        }

        private void SetBirthDateAndPlaceInfo(BirthDate birthDate, BirthDateSource birthDateSource)
        {
            BirthDate = birthDate ?? throw new ArgumentNullException(nameof(birthDate));
            BirthDateSource = birthDateSource ?? throw new ArgumentNullException(nameof(birthDateSource));
        }

        public void UpdatePatientInfo(BirthDate birthDate, BirthDateSource birthDateSource, Gender gender, List<HumanName> humanNames, List<Address> addresses, List<Ethnicity> ethnicities, List<Contact> contacts)
        {
            UpdateHumanNameList(humanNames);

            ArgumentNullException.ThrowIfNull(gender);
            if (!gender.Equals(Gender))
            {
                Gender = gender;
            }

            SetBirthDateAndPlaceInfo(birthDate, birthDateSource);

            UpdateAddressList(addresses);

            UpdateEthnicityList(ethnicities);

            UpdateContactList(contacts);
        }

        private void UpdateHumanNameList(List<HumanName> namesToKeep)
        {
            foreach(var name in namesToKeep)
            {
                var found = _humanNames.Find(n => name.IsEqual(n));

                if (found is null)
                {
                    _humanNames.Add(name);
                }
            }

            _humanNames.RemoveAll(n1 => !namesToKeep.Exists(n2 => n1.IsEqual(n2)));
        }

        private void UpdateAddressList(List<Address> addressesToKeep)
        {
            foreach (var addr in addressesToKeep)
            {
                var found = _addresses.FirstOrDefault(a => addr.IsEqual(a));

                if (found is null)
                {
                    _addresses.Add(addr);
                }
            }

            _addresses.RemoveAll(a1 => !addressesToKeep.Exists(a2 => a1.IsEqual(a2)));
        }

        private void UpdateEthnicityList(List<Ethnicity> ethnicityToAdd)
        {
            // Check incoming ethnicity the PatientEthnicities list, if it does not exist in PatientEthnicities list.
            foreach (var eth in ethnicityToAdd)
            {
                var found = _patientEthnicities.FirstOrDefault(e => e.Ethnicity.Id == eth.Id);

                // New ethnicity, add it to the Patient list.
                if (found is null)
                {
                    _patientEthnicities.Add(new PatientEthnicity(this, eth));
                }
            }

            // Remove ethnicity from PatientEthnicities list if it does not exist in current list
            _patientEthnicities.RemoveAll(e => !ethnicityToAdd.Exists(eth => e.Ethnicity.Id == eth.Id));
        }

        private void UpdateContactList(List<Contact> contactsToKeep)
        {
            foreach(var contact in contactsToKeep)
            {
                var found = _contacts.FirstOrDefault(c => contact.IsEqual(c));
                if(found is null)
                {
                    _contacts.Add(contact);
                }
            }

            // Remove contacts from the Patient contacts list, which do not exists in the incoming list.
            _contacts.RemoveAll(c1 => !contactsToKeep.Exists(c2 => c1.IsEqual(c2)));
        }
    }
}