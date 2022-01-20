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
        
        protected Patient() { }

        public Patient(Nhi nhi, HumanName humanName, BirthDate birthDate, BirthDateSource birthDateSource, Gender gender)
        {
            Nhi = nhi ?? throw new ArgumentNullException(nameof(nhi));
            
            AddName(humanName);

            Gender = gender ?? throw new ArgumentNullException(nameof(gender));

            SetBirthDateAndPlaceInfo(birthDate, birthDateSource);
        }

        public void AddName(HumanName humanName)
        {
            _humanNames.Add(humanName);
        }

        private void SetBirthDateAndPlaceInfo(BirthDate birthDate, BirthDateSource birthDateSource)
        {
            BirthDate = birthDate ?? throw new ArgumentNullException(nameof(birthDate));
            BirthDateSource = birthDateSource ?? throw new ArgumentNullException(nameof(birthDateSource));
        }
    }
}
