using CSharpFunctionalExtensions;
using Domain.Entities;
using System.Linq;

namespace Domain.Entities
{
    public class PatientEthnicity
    {
        public long PatientId { get; private set; }
        public Patient Patient { get; private set; }

        public long EthnicityId { get; private set; }
        public Ethnicity Ethnicity { get; private set; }

        protected PatientEthnicity() { }
        public PatientEthnicity(Patient patient, Ethnicity ethnicity)
        {
            Patient = patient;
            Ethnicity = ethnicity;
        }

    }
}
