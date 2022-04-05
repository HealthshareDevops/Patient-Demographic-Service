namespace Infrastructure.Services
{
    public class SNSSettings
    {
        public string NewPatientTopicARN { get; set; }
        public bool NewPatientNotify { get; set; }
        public string NewPatientMessageGroupId { get; set; }
    }
}
