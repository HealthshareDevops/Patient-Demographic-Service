using CSharpFunctionalExtensions;
using System.Linq;

namespace Domain.Enums
{
    public class ContactType : Entity
    {
        public static readonly ContactType A = new ContactType(1, "A", "Monitored alarms", "");
        public static readonly ContactType C = new ContactType(2, "C", "Mobile (cell phone)", "");
        public static readonly ContactType E = new ContactType(3, "E", "Email", "");
        public static readonly ContactType F = new ContactType(4, "F", "Facsimile", "");
        public static readonly ContactType M = new ContactType(5, "M", "Electronic mail box", "A specific, individual mail 'container' provided by a particular vendor or agency (eg, Chat, Skype)");
        public static readonly ContactType P = new ContactType(6, "P", "Pager", "");
        public static readonly ContactType S = new ContactType(7, "S", "Short messaging service (SMS)", "A text message");
        public static readonly ContactType T = new ContactType(8, "T", "Telephone number", "");
        public static readonly ContactType U = new ContactType(9, "U", "URL (Universal Resource Locator)", "");
        public static readonly ContactType V = new ContactType(10, "V", "Videoconferencing", "");
        public static readonly ContactType W = new ContactType(11, "W", "Web forum (social media)", "");
        // Additional DHB codeset
        public static readonly ContactType CP = new ContactType(12, "CP", "Mobile", "DHB code");
        public static readonly ContactType FX = new ContactType(13, "FX", "Facsimile", "DHB code");
        public static readonly ContactType INTERNET = new ContactType(14, "Internet", "Email", "DHB code");
        public static readonly ContactType NET = new ContactType(15, "NET", "Email", "DHB code");
        public static readonly ContactType PH = new ContactType(16, "PH", "Telephone", "DHB code");


        public static readonly ContactType[] AllContactTypes = { A, C, E, F, M, P, S, T, U, V, W, CP, FX, INTERNET, NET, PH };

        protected ContactType() { }

        public ContactType(long id, string code, string description, string comment)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
        }

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }

        public static ContactType FromCode(string code)
        {
            return AllContactTypes.SingleOrDefault(x => x.Code == code);
        }
    }
}
