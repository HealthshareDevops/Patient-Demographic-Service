using CSharpFunctionalExtensions;
using Domain.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Domain.Entities
{
    public class Patient : Entity
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

        protected Patient() { }

        public Patient(Nhi nhi, HumanName humanName)
        {
            Nhi = nhi;
            AddName(humanName);
        }

        public void AddName(HumanName humanName)
        {
            _humanNames.Add(humanName);
        }

    }
}
