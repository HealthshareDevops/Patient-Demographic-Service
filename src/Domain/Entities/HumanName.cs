using Domain.Common;
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
        public NameSource Source { get; private set; }
        public Date EffectiveFrom { get; private set; }
        public Date EffectiveTo { get; private set; }

        protected HumanName() { }
        public HumanName(
            Title title,
            Name name,
            Suffix suffix,
            bool isPreferred,
            bool isProtected,
            NameSource source,
            Date effectiveFrom,
            Date effectiveTo)
        {
            Title = title;
            Name = name;
            Suffix = suffix;
            IsPreferred = isPreferred;
            IsProtected = isProtected;
            Source = source;
            EffectiveFrom = effectiveFrom;
            EffectiveTo = effectiveTo;
        }
    }
}
