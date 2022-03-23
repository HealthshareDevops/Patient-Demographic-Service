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
        ////public Identifier Identifier { get; private set; }
        //private readonly List<Identifier> _identifiers = new List<Identifier>();
        //public virtual IReadOnlyList<Identifier> Identifiers => _identifiers.ToList();

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

        public void UpdatePatientInfo(BirthDate birthDate, BirthDateSource birthDateSource, Gender gender, List<HumanName> humanNames, List<Address> addresses, List<Ethnicity> ethnicities)
        {
            UpdateHumanNameInfoList(humanNames);
            DeleteHumanNameInfoList(humanNames);

            ArgumentNullException.ThrowIfNull(gender);
            if (!gender.Equals(Gender))
            {
                Gender = gender;
            }

            SetBirthDateAndPlaceInfo(birthDate, birthDateSource);

            UpdateAddressInfoList(addresses);
            DeleteAddressInfoList(addresses);

            UpdateEthnicityInfoList(ethnicities);
            DeleteEthnicityInfoList(ethnicities);
        }

        private void UpdateHumanNameInfoList(List<HumanName> namesToAdd)
        {
            foreach(var name in namesToAdd)
            {
                var found = _humanNames.Find(n =>
                {
                    return n.Title == name.Title
                                && n.Name.Equals(name.Name)
                                && n.Suffix == name.Suffix
                                && n.IsPreferred == n.IsPreferred
                                && n.IsProtected == n.IsProtected
                                && n.NameSource == name.NameSource
                                && n.EffectiveFrom.Equals(name.EffectiveFrom)
                                && n.EffectiveTo.Equals(name.EffectiveTo);
                });

                if (found is null)
                {
                    _humanNames.Add(name);
                }
            }
        }

        private void DeleteHumanNameInfoList(List<HumanName> namesToKeep)
        {
            _humanNames.RemoveAll(n => !namesToKeep.Exists(k => n.Title == k.Title 
                                                                                                        && n.Name.Equals(k.Name) 
                                                                                                        && n.Suffix == k.Suffix 
                                                                                                        && n.IsPreferred == n.IsPreferred
                                                                                                        && n.IsProtected == n.IsProtected
                                                                                                        && n.NameSource == k.NameSource
                                                                                                        && n.EffectiveFrom.Equals(k.EffectiveFrom)
                                                                                                        && n.EffectiveTo.Equals(k.EffectiveTo)));
        }

        private void UpdateAddressInfoList(List<Address> addressesToAdd)
        {
            foreach (var addr in addressesToAdd)
            {
                var found = _addresses.FirstOrDefault(a => IsTwoAddressesEqual(a, addr));

                if (found is null)
                {
                    _addresses.Add(addr);
                }
            }
        }

        private void DeleteAddressInfoList(List<Address> addressesToKeep)
        {
            _addresses.RemoveAll(a => !addressesToKeep.Exists(addr => IsTwoAddressesEqual(a, addr)));
        }

        private bool IsTwoAddressesEqual(Address addr1, Address addr2)
        {
            return addr1.AddressFormat == addr2.AddressFormat
                                && addr1.BuildingName == addr2.BuildingName
                                && addr1.StreetAddress == addr2.StreetAddress
                                && addr1.AdditionalStreetAddress == addr2.AdditionalStreetAddress
                                && addr1.Suburb == addr2.Suburb
                                && addr1.TownOrCity == addr2.TownOrCity
                                && addr1.PostCode == addr2.PostCode
                                && addr1.Country == addr2.Country
                                && addr1.IsProtected == addr2.IsProtected
                                && addr1.IsPermanent == addr2.IsPermanent
                                && addr1.EffectiveFrom.Equals(addr2.EffectiveFrom)
                                && addr1.EffectiveTo.Equals(addr2.EffectiveTo)
                                && addr1.Domicile == addr2.Domicile
                                && addr1.AddressType == addr2.AddressType;
        }

        private void UpdateEthnicityInfoList(List<Ethnicity> ethnicityToAdd)
        {
            foreach (var eth in ethnicityToAdd)
            {
                var found = _patientEthnicities.FirstOrDefault(e => e.EthnicityId == eth.Id);

                if (found is null)
                {
                    _patientEthnicities.Add(new PatientEthnicity(this, eth));
                }
            }
        }

        private void DeleteEthnicityInfoList(List<Ethnicity> ethnicitiesToKeep)
        {
            _patientEthnicities.RemoveAll(e => !ethnicitiesToKeep.Exists(eth => eth == e.Ethnicity));
        }
    }
}