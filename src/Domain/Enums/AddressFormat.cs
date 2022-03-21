using CSharpFunctionalExtensions;
using System.Linq;

namespace Domain.Enums
{
    public class AddressFormat : Entity
    {
        public static readonly AddressFormat CIQ = new AddressFormat(1, "CIQ", "NZ CIQ Address Profile", "");
        public static readonly AddressFormat POST = new AddressFormat(2, "POST", "NZ Post Address Standard", "");

        public static readonly AddressFormat[] AllAddressFormats = { CIQ, POST };

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }

        protected AddressFormat() { }

        public AddressFormat(long id, string code, string description, string comment)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
        }

        public static AddressFormat FromCode(string code)
        {
            return AllAddressFormats.SingleOrDefault(x => x.Code == code);
        }
    }
}
