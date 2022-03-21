using CSharpFunctionalExtensions;
using System.Linq;

namespace Domain.Enums
{
    public class AddressType : Entity
    {
        public static readonly AddressType MAILING = new AddressType(1, "M", "Mailing", "", "PST");
        public static readonly AddressType RESIDENTIAL = new AddressType(2, "R", "Residential", "", "H");

        public static readonly AddressType[] AllAddressTypes = { MAILING, RESIDENTIAL };

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }
        public string HL7PostalAddressUse { get; }

        protected AddressType() { }

        public AddressType(long id, string code, string description, string comment, string hL7PostalAddressUse)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
            HL7PostalAddressUse = hL7PostalAddressUse;
        }

        public static AddressType FromCode(string code)
        {
            return AllAddressTypes.SingleOrDefault(x => x.Code == code);
        }
    }
}
