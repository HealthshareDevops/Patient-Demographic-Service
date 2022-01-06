using Domain.Common;
using System.Linq;

namespace Domain.Enums
{
    public class NameSource: Entity
    {
        public static readonly NameSource BIRTH_CERTIFICATE = new NameSource(1, "BRCT", "Birth Certificate", "");
        public static readonly NameSource BIRTH_REGISTER = new NameSource(2, "BREG", "Birth Register", "");
        public static readonly NameSource HL7_APPLIED = new NameSource(3, "HL7", "HL7 applied", "Name information source has been applied via the legacy NHI system");
        public static readonly NameSource PROOF_NOT_SIGHTED = new NameSource(4, "NPRF", "Proof Not Sighted", "Information(not proof) provided by the patient / whānau");
        public static readonly NameSource NZ_CERTIFICATE_OF_IDENTITY = new NameSource(5, "NZCI", "NZ Certificate of Identity", "");
        public static readonly NameSource NZ_CITIZEN_CERTIFICATE = new NameSource(6, "NZCT", "NZ Citizenship Certificate", "");
        public static readonly NameSource NZ_EMERGENCY_TRAVEL_DOCUMENT = new NameSource(7, "NZET", "NZ Emergency Travel Document", "");
        public static readonly NameSource NZ_PERMANENT_RESIDENT_VISA = new NameSource(8, "NZPV", "NZ Permanent Resident Visa", "A New Zealand Permanent Resident Visa(not time bound) issued by Immigration New Zealand");
        public static readonly NameSource NZ_RESIDENT_VISA = new NameSource(9, "NZTV", "NZ Resident Visa", "A New Zealand Resident Visa(time bound) issued by Immigration New Zealand");
        public static readonly NameSource NZ_REFUGEE_TRAVEL_DOCUMENT = new NameSource(10, "NZRT", "NZ Refugee Travel Document", "");
        public static readonly NameSource OTHER = new NameSource(11, "OTHR", "Other", "Other official documents");
        public static readonly NameSource PASSP0RT = new NameSource(12, "PPRT", "Passport", "");

        public static readonly NameSource[] AllNameSources = {
            BIRTH_CERTIFICATE, BIRTH_REGISTER, HL7_APPLIED, PROOF_NOT_SIGHTED, NZ_CERTIFICATE_OF_IDENTITY,
            NZ_CITIZEN_CERTIFICATE, NZ_EMERGENCY_TRAVEL_DOCUMENT, NZ_PERMANENT_RESIDENT_VISA, NZ_RESIDENT_VISA,
            NZ_REFUGEE_TRAVEL_DOCUMENT, OTHER, PASSP0RT
        };

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }

        protected NameSource() { }

        public NameSource(long id, string code, string description, string comment)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
        }

        public static NameSource FromCode(string code)
        {
            return AllNameSources.SingleOrDefault(x => x.Code == code);
        }
    }
}
