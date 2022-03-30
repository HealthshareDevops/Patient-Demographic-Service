using CSharpFunctionalExtensions;
using System.Linq;

namespace Domain.Enums
{
    public class ContactUsage : Entity
    {
        public static readonly ContactUsage B = new ContactUsage(1, "B", "Business", "Business address");
        public static readonly ContactUsage E = new ContactUsage(2, "E", "Emergency", "Emergency address");
        public static readonly ContactUsage P = new ContactUsage(2, "P", "Personal", "Personal address");

        public static readonly ContactUsage[] AllContactUsages= { B, E, P };

        protected ContactUsage() { }

        public ContactUsage(long id, string code, string description, string comment)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
        }

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }

        public static ContactUsage FromCode(string code)
        {
            return AllContactUsages.SingleOrDefault(x => x.Code == code);
        }


    }
}
