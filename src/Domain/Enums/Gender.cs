using CSharpFunctionalExtensions;
using Domain.Exceptions;
using System.Linq;

namespace Domain.Enums
{
    public class Gender : Entity
    {
        public static readonly Gender FEMALE = new Gender(1, "F", "Female", "", "F");
        public static readonly Gender MALE = new Gender(2, "M", "Male", "", "M");
        public static readonly Gender OTHER = new Gender(3, "O", "Other Gender", "", "O");
        public static readonly Gender UNKNOWN = new Gender(4, "U", "Unspecified or Unknown", "A proper value is applicable but is not provided", "UN");

        public static readonly Gender[] AllGenders = { FEMALE, MALE, OTHER, UNKNOWN };

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }
        public string HL7AdministrativeGender { get; }

        protected Gender() { }

        public Gender(long id, string code, string description, string comment, string hl7AdministrativeGender)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
            HL7AdministrativeGender = hl7AdministrativeGender;
        }

        public static Gender FromCode(string code)
        {
            return AllGenders.SingleOrDefault(x => x.Code == code) ?? throw new UnsupportedGenderException(code);
        }
    }
}
