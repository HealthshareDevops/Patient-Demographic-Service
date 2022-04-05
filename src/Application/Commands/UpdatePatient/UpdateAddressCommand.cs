namespace Application.Commands.UpdatePatient
{
    public class UpdateAddressCommand
    {
        public string AddressFormat { get; set; }
        public string BuildingName { get; set; }
        public string StreetAddress { get; set; }
        public string AdditionalStreetAddress { get; set; }
        public string Suburb { get; set; }
        public string TownOrCity { get; set; }
        public string PostCode { get; set; }
        public string Country { get; set; }
        public bool IsProtected { get; set; }
        public bool IsPermanent { get; set; }
        public string EffectiveFrom { get; set; }
        public string EffectiveTo { get; set; }
        public string Domicile { get; set; }
        public bool IsPrimary { get; set; }
        public string AddressType { get; set; }
    }
}
