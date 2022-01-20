using CSharpFunctionalExtensions;
using Domain.Exceptions;
using System.Linq;

namespace Domain.Enums
{
    public class BirthDateSource : Entity
    {
        public static readonly BirthDateSource BIRTH_CERTIFICATE = new BirthDateSource(1, "BRCT", "Birth Certificate", "An overseas birth certificate is acceptable");
        public static readonly BirthDateSource BIRTH_REGISTER = new BirthDateSource(2, "BREG", "Birth Register", "Only applied by the Ministry of Health update from matching with the Birth Register");
        public static readonly BirthDateSource HL7_APPLIED = new BirthDateSource(3, "HL7", "HL7 applied", "Date of birth has been applied via HL7 message");
        public static readonly BirthDateSource MIGRATED = new BirthDateSource(4, "MIGR", "Migrated", "From the legacy NHI system");
        public static readonly BirthDateSource PROOF_NOT_SIGHTED = new BirthDateSource(5, "NPRF", "Proof Not Sighted", "Information(not proof) provided by the patient/whānau");
        public static readonly BirthDateSource NZ_CERTIFICATE_OF_IDENTITY = new BirthDateSource(6, "NZCI", "NZ Certificate of Identity", "");
        public static readonly BirthDateSource NZ_CITIZENSHIP_CERTIFICATE = new BirthDateSource(7, "NZCT", "NZ Citizenship Certificate", "New Zealand Citizenship Certificate issued by Department of Internal Affairs");
        public static readonly BirthDateSource NZ_EMERERGENCY_TRAVEL_DOCUMENT = new BirthDateSource(8, "NZET", "NZ Emergency Travel Document", "");
        public static readonly BirthDateSource NZ_PERMANENT_RESIDENT_VISA = new BirthDateSource(9, "NZPV", "NZ Permanent Resident Visa", "A New Zealand Permanent Resident Visa(not time bound) issued by Immigration New Zealand");
        public static readonly BirthDateSource NZ_RESIDENT_VISA = new BirthDateSource(10, "NZTV", "NZ Resident Visa", "A New Zealand Resident Visa(time bound) issued by Immigration New Zealand");
        public static readonly BirthDateSource NZ_REFUGEE_TRAVEL_DOCUMENT = new BirthDateSource(11, "NZRT", "NZ Refugee Travel Document", "");
        public static readonly BirthDateSource OTHER = new BirthDateSource(12, "OTHR", "Other", "Other official document provided");
        public static readonly BirthDateSource PASSPORT = new BirthDateSource(13, "PPRT", "Passport", "An overseas passport is acceptable");


        public static readonly BirthDateSource[] AllBirthDateSources =
            {
                BIRTH_CERTIFICATE, BIRTH_REGISTER, HL7_APPLIED, MIGRATED, PROOF_NOT_SIGHTED,
                NZ_CERTIFICATE_OF_IDENTITY, NZ_CITIZENSHIP_CERTIFICATE, NZ_EMERERGENCY_TRAVEL_DOCUMENT,
                NZ_PERMANENT_RESIDENT_VISA, NZ_RESIDENT_VISA, NZ_REFUGEE_TRAVEL_DOCUMENT,
                OTHER, PASSPORT
            };

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }

        public BirthDateSource(long id, string code, string description, string comment)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
        }

        public static BirthDateSource FromCode(string code)
        {
            return AllBirthDateSources.SingleOrDefault(x => x.Code == code) ?? throw new UnsupportedBirthDateSourceException(code);
        }
    }
}
