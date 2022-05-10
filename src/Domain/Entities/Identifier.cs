using Domain.ValueObjects;
using CSharpFunctionalExtensions;

namespace Domain.Entities
{
    public class Identifier : Entity
    {
        public Nhi Nhi { get; private set; }
        public bool IsMajor { get; private set; }
        public long PatientId { get; private set; }
        public Identifier(Nhi nhi, bool isMajor) {
            Nhi = nhi;  
            IsMajor = isMajor;
        }

        public void MakeMajor(bool isMajor) {
            this.IsMajor = isMajor;
        }
    }
}
