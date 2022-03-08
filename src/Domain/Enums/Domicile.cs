using CSharpFunctionalExtensions;

namespace Domain.Enums
{
    public class Domicile : Entity
    {
        public string Code { get; }
        public string Description { get; }
        public string TLA { get; }
        public string Status { get; }
        public string YearOfCensus { get; }
        public string RetiredYear { get; }
        public string AU13 { get; }
        public string DHB { get; }
        public string RHAReg { get; }

        protected Domicile() { }

        public Domicile(long id, string code, string description, string tLA, string status, string yearOfCensus, string retiredYear, string aU13, string dHB, string rHAReg)
            : base(id)
        {
            Code = code;
            Description = description;
            TLA = tLA;
            Status = status;
            YearOfCensus = yearOfCensus;
            RetiredYear = retiredYear;
            AU13 = aU13;
            DHB = dHB;
            RHAReg = rHAReg;
        }
    }
}
