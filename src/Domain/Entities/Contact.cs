using CSharpFunctionalExtensions;
using Domain.Enums;
using Domain.ValueObjects;

namespace Domain.Entities
{
    public class Contact : Entity
    {
        public ContactUsage ContactUsage { get; private set; }

        public ContactType ContactType { get; private set; }

        public string Detail { get; private set; }

        public bool IsProtected { get; private set; }

        //Date contact effective from
        public Date EffectiveFrom { get; private set; }

        //Date address effective to
        public Date EffectiveTo { get; private set; }

        public bool IsPreferred { get; private set; }

        protected Contact() { }

        public Contact(ContactUsage contactUsage, ContactType contactType, string detail,
             bool isProtected,  Date effectiveFrom, Date effectiveTo, bool isPreferred)
        {
            ContactUsage = contactUsage;
            ContactType = contactType;
            Detail = detail;
            IsProtected = isProtected;
            EffectiveFrom = effectiveFrom;
            EffectiveTo = effectiveTo;
            IsPreferred = isPreferred;
        }

    }
}
