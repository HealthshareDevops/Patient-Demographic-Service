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

        /// <summary>
        /// This function checks whether the two contacts are equal.
        /// Incoming (new/update contact) does not have Id field.
        /// If all the values except Ids are equal, two contacts are considered equal.
        /// Id is application generated, application specific. 
        /// 
        /// Note: This is different from other equality check, check Id also no referential check.
        /// </summary>
        /// <param name="contact"></param>
        /// <returns></returns>
        public bool IsEqual (Contact contact)
        {
            return ContactType == contact.ContactType
                 && ContactUsage == contact.ContactUsage
                 && Detail == contact.Detail
                 && IsProtected == contact.IsProtected
                 && EffectiveFrom == contact.EffectiveFrom
                 && EffectiveTo == contact.EffectiveTo
                 && IsPreferred == contact.IsPreferred;
        }

    }
}
