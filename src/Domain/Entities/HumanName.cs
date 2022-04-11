using CSharpFunctionalExtensions;
using Domain.Enums;
using Domain.ValueObjects;

namespace Domain.Entities
{
    public class HumanName : Entity
    {
        public Title Title { get; private set; }
        public Name Name { get; private set; }
        public Suffix Suffix { get; private set; }
        public bool IsPreferred { get; private set; }
        public bool IsProtected { get; private set; }
        public NameSource NameSource { get; private set; }
        public Date EffectiveFrom { get; private set; }
        public Date EffectiveTo { get; private set; }
        public long PatientId { get; private set; }

        protected HumanName() { }
        public HumanName(
            Title title,
            Name name,
            Suffix suffix,
            bool isPreferred,
            bool isProtected,
            NameSource nameSource,
            Date effectiveFrom,
            Date effectiveTo)
        {
            Title = title;
            Name = name;
            Suffix = suffix;
            IsPreferred = isPreferred;
            IsProtected = isProtected;
            NameSource = nameSource;
            EffectiveFrom = effectiveFrom;
            EffectiveTo = effectiveTo;
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
        public bool IsEqual(HumanName name)
        {
            return Title == name.Title
                && Name.Equals(name.Name)
                && Suffix == name.Suffix
                && IsPreferred == name.IsPreferred
                && IsProtected == name.IsProtected
                && NameSource == name.NameSource
                && EffectiveFrom.Equals(name.EffectiveFrom)
                && EffectiveTo.Equals(name.EffectiveTo);
        }
    }
}
