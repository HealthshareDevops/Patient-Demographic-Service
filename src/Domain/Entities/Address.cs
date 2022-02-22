using CSharpFunctionalExtensions;
using Domain.Enums;

namespace Domain.Entities
{
    public class Address : Entity
    {
        // 3.1 Address format
        public AddressFormat AddressFormat { get; private set; }
        // 3.2 Building name
        public string BuildingName { get; private set; }
        // 3.3 Street address/address line 1
        public string StreetAddress { get; private set; }
        // 3.4 Additional street address/address line 2
        public string AdditionalStreetAddress { get; private set; }
        // 3.5 Suburb/address line 3
        public string Suburb { get; private set; }
        // 3.6 Town or city/address line 4
        public string TownOrCity { get; private set; }
        // 3.7 Postcode (zip/postal code)
        public string PostCode { get; private set; }
        // 3.8 Country code
        public string Country { get; private set; }
        // 3.9 Address protected flag
        public bool IsProtected { get; private set; }
        // 3.10 Permanent address flag
        public bool IsPermanent { get; private set; }
        // 3.11 Date address effective from
        public string EffectiveFrom { get; private set; }
        // 3.12 Date address effective to
        public string EffectiveTo { get; private set; }
        // 3.13 Domicile code
        public string Domicile { get; private set; }
        // 3.14 Primary address flag
        public bool IsPrimary { get; private set; }
        // 3.15 Address type
        public AddressType AddressType { get; private set; }

        protected Address() { }

        public Address(AddressFormat addressFormat, string buildingName, string streetAddress, string additionalStreetAddress, string suburb, string townOrCity, string postCode, string country, bool isProtected, bool isPermanent, string effectiveFrom, string effectiveTo, string domicile, bool isPrimary, AddressType addressType)
        {
            AddressFormat = addressFormat;
            BuildingName = buildingName;
            StreetAddress = streetAddress;
            AdditionalStreetAddress = additionalStreetAddress;
            Suburb = suburb;
            TownOrCity = townOrCity;
            PostCode = postCode;
            Country = country;
            IsProtected = isProtected;
            IsPermanent = isPermanent;
            EffectiveFrom = effectiveFrom;
            EffectiveTo = effectiveTo;
            Domicile = domicile;
            IsPrimary = isPrimary;
            AddressType = addressType;
        }
    }
}
