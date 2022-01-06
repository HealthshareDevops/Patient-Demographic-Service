using Domain.Common;
using Domain.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Domain.Entities
{
    public class Patient
    {
        public long Id { get; private set; }
        public string Nhi { get; private set; }
        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public string MiddleName { get; private set; }

        protected Patient() { }

        public Patient(string nhi, string firstName, string middleName, string lastName)
        {
            Nhi = nhi;
            FirstName = firstName;
            MiddleName = middleName;
            LastName = lastName;
        }

    }
}
