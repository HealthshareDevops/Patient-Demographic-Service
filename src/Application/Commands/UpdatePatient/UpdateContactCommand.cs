namespace Application.Commands.UpdatePatient
{
    public class UpdateContactCommand
    {
        public string ContactUsage { get; set; }
        public string ContactType { get; set; }
        public string Detail { get; set; }
        public bool IsProtected { get; set; }
        public string EffectiveFrom { get; set; }
        public string EffectiveTo { get; set; }
        public bool IsPreferred { get; set; }
    }
}
