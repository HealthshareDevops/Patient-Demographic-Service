using Domain.Common;
using System.Linq;

namespace Domain.Enums
{
    public class Title : Entity
    {
        public static readonly Title DAME = new Title(1, "DAME", "Dame", "");
        public static readonly Title DOCTOR = new Title(2, "DR", "Doctor", "");
        public static readonly Title HER_EXCELLENCY = new Title(3, "HER EXCEL", "Her Excellency", "");
        public static readonly Title HIS_EXCELLENCY = new Title(4, "HIS EXCEL", "His Excellency", "");
        public static readonly Title LADY = new Title(5, "LADY", "Lady", "");
        public static readonly Title MISS = new Title(6, "MISS", "Miss", "");
        public static readonly Title MR = new Title(7, "MR", "Mr", "");
        public static readonly Title MRS = new Title(8, "MRS", "Mrs", "");
        public static readonly Title MS = new Title(9, "MS", "Ms", "");
        public static readonly Title MASTER = new Title(10, "MASTER", "Master", "");
        public static readonly Title PROFESSOR = new Title(11, "PROF", "Professor", "");
        public static readonly Title SIR = new Title(12, "SIR", "Sir", "");
        public static readonly Title REVERAND = new Title(13, "REV", "Reverend", "Title given to ministers of some religions");
        public static readonly Title THE_RIGHT_REVERAND = new Title(14, "RIGHT REV", "The Right Reverend", "Anglican Bishop");
        public static readonly Title THE_VERY_REVERAND = new Title(15, "VERY REV", "The Very Reverend", "Dean");
        public static readonly Title THE_MOST_REVERAND = new Title(16, "MOST REV", "The Most Reverend", "Archbishop/Bishop/Catholic Priest");
        public static readonly Title THE_VENERABLE = new Title(17, "VEN", "The Venerable", "Archdeacon");
        public static readonly Title CARDINAL = new Title(18, "CARD", "Cardinal", "Catholic Priest");
        public static readonly Title MONSIGNOR = new Title(19, "MON", "Monsignor", "Catholic Priest");
        public static readonly Title CANON = new Title(20, "CANON", "Canon", "Priest");
        public static readonly Title BROTHER = new Title(21, "BR", "Brother", "Of a Religious Order");
        public static readonly Title FATHER = new Title(22, "FR", "Father", "Of a Religious Order");
        public static readonly Title SISTER = new Title(23, "SISTER", "Sister", "Of a Religious Order");
        public static readonly Title THE_HONOURABLE = new Title(24, "HON", "The Honourable", "Executive Council, Speaker, Appeal/High Court and Supreme Court Judges");
        public static readonly Title THE_RIGHT_HONOURABLE = new Title(25, "RT HON", "The Right Honourable", "The Right Honourable, Prime Minister or Privy Councillor");
        public static readonly Title AIRCRAFTMAN = new Title(26, "AC", "Aircraftman", "Military Personnel");
        public static readonly Title AIR_COMMODORE = new Title(27, "AIRCDRE", "Air Commodore", "Military Personnel");
        public static readonly Title AIR_MARSHAL = new Title(28, "AM", "Air Marshal", "Military Personnel");
        public static readonly Title ABLE_MEDICAL_ASSISTANT = new Title(29, "AMT", "Able Medical Assistant", "Military Personnel");
        public static readonly Title AIR_VICE_MARSHAL = new Title(30, "AVM", "Air Vice Marshal", "Military Personnel");
        public static readonly Title BOMBARDIER = new Title(31, "BDR", "Bombardier", "Military Personnel");
        public static readonly Title BRIGADIER = new Title(32, "BRIG", "Brigadier", "Military Personnel");
        public static readonly Title CAPTAIN = new Title(33, "CAPT", "Captain", "Military Personnel");
        public static readonly Title COMMANDER = new Title(34, "CDR", "Commander", "Military Personnel");
        public static readonly Title COMMODORE = new Title(35, "CDRE", "Commodore", "Military Personnel");
        public static readonly Title COLONEL = new Title(36, "COL", "Colonel", "Military Personnel");
        public static readonly Title CORPORAL = new Title(37, "CPL", "Corporal", "Military Personnel");
        public static readonly Title CHIEF_PETTY_OFFICER_MEDIC = new Title(38, "CPOMED", "Chief Petty Officer Medic", "Military Personnel");
        public static readonly Title ENSIGN_MILITARY = new Title(39, "ENS", "Ensign Military", "Personnel");
        public static readonly Title FLIGHT_SERGEANT = new Title(40, "F/SGT", " Flight Sergeant", "Military Personnel");
        public static readonly Title FLYING_OFFICER = new Title(41, "FGOFF", "Flying Officer", "Military Personnel");
        public static readonly Title FLIGHT_LIEUTENANT = new Title(42, "FLTLT", "Flight Lieutenant", "Military Personnel");
        public static readonly Title GENERAL = new Title(43, "GEN", "General", "Military Personnel");
        public static readonly Title GROUP_CAPTAIN = new Title(44, "GPCAPT", "Group Captain", "Military Personnel");
        public static readonly Title LEADING_AIRCRAFTMAN = new Title(45, "LAC", "Leading Aircraftman", "Military Personnel");
        public static readonly Title LANCE_CORPORAL = new Title(46, "LCPL", "Lance Corporal", "Military Personnel");
        public static readonly Title LEADING_MEDIC = new Title(47, "LMED", "Leading Medic", "Military Personnel");
        public static readonly Title LIEUTENANT = new Title(48, "LT", "Lieutenant", "Military Personnel");
        public static readonly Title LIEUTENANT_COMMANDER = new Title(49, "LT CDR", "Lieutenant Commander", "Military Personnel");
        public static readonly Title LIEUTENANT_COLONEL = new Title(50, "LT COL", "Lieutenant Colonel", "Military Personnel");
        public static readonly Title LIEUTENANT_GENERAL = new Title(51, "LT GEN", "Lieutenant General", "Military Personnel");
        public static readonly Title MAJOR = new Title(52, "MAJ", "Major", "Military Personnel");
        public static readonly Title MAJOR_GENERAL = new Title(53, "MAJ GEN", "Major General", "Military Personnel");
        public static readonly Title MIDSHIPMAN = new Title(54, "MID", "Midshipman", "Military Personnel");
        public static readonly Title ORDINARY_MEDICAL_ASSISTANT = new Title(55, "OMT", "Ordinary Medical Assistant", "Military Personnel");
        public static readonly Title PILOT_OFFICER = new Title(56, "PLTOFF", "Pilot Officer", "Military Personnel");
        public static readonly Title PETTY_OFFICER_MEDIC = new Title(57, "POMED", "Petty Officer Medic", "Military Personnel");
        public static readonly Title PRIVATE = new Title(58, "PTE", "Private", "Military Personnel");
        public static readonly Title REAR_ADMIRAL = new Title(59, "RA", "Rear Admiral", "Military Personnel");
        public static readonly Title SURGEON_COMMANDER = new Title(60, "SGN CDR", "Surgeon Commander", "Military Personnel");
        public static readonly Title SURGEON_LIEUTENANT = new Title(61, "SGN LT", "Surgeon Lieutenant", "Military Personnel");
        public static readonly Title SURGEON_LIEUTENANT_COMMANDER = new Title(62, "SGN LTCDR", "Surgeon Lieutenant Commander", "Military Personnel");
        public static readonly Title SERGEANT = new Title(63, "SGT", "Sergeant", "Military Personnel");
        public static readonly Title SUB_LIEUTENANT = new Title(64, "SLT", "Sub Lieutenant", "Military Personnel");
        public static readonly Title SAPPER = new Title(65, "SPR", "Sapper", "Military Personnel");
        public static readonly Title SQUADRON_LEADER = new Title(66, "SQNLDR", "Squadron Leader", "Military Personnel");
        public static readonly Title STAFF_SERGEANT = new Title(67, "SSGT", "Staff Sergeant", "Military Personnel");
        public static readonly Title TROOPER = new Title(68, "TPR", "Trooper", "Military Personnel");
        public static readonly Title WARRANT_OFFICER_1 = new Title(69, "W/O", "Warrant Officer", "Military Personnel");
        public static readonly Title WING_COMMANDER = new Title(70, "WGCDR", "Wing Commander", "Military Personnel");
        public static readonly Title WARRANT_OFFICER_2 = new Title(71, "WO", "Warrant Officer", "Military Personnel");
        public static readonly Title WARRANT_OFFICER_MEDIC = new Title(72, "WOMED", "Warrant Officer Medic", "Military Personnel");

        public static readonly Title[] AllTitles = {
            DAME, DOCTOR, HER_EXCELLENCY, HIS_EXCELLENCY, LADY,
            MISS, MR, MRS, MS, MASTER,
            PROFESSOR, SIR, REVERAND, THE_RIGHT_REVERAND, THE_VERY_REVERAND,
            THE_MOST_REVERAND, THE_VENERABLE, CARDINAL, MONSIGNOR, CANON,
            BROTHER, FATHER, SISTER, THE_HONOURABLE, THE_RIGHT_HONOURABLE,
            AIRCRAFTMAN, AIR_COMMODORE, AIR_MARSHAL, ABLE_MEDICAL_ASSISTANT, AIR_VICE_MARSHAL,
            BOMBARDIER, BRIGADIER, CAPTAIN, COMMANDER, COMMODORE,
            COLONEL, CORPORAL, CHIEF_PETTY_OFFICER_MEDIC, ENSIGN_MILITARY, FLIGHT_SERGEANT,
            FLYING_OFFICER, FLIGHT_LIEUTENANT, GENERAL, GROUP_CAPTAIN, LEADING_AIRCRAFTMAN,
            LANCE_CORPORAL, LEADING_MEDIC, LIEUTENANT, LIEUTENANT_COMMANDER, LIEUTENANT_COLONEL,
            LIEUTENANT_GENERAL, MAJOR, MAJOR_GENERAL, MIDSHIPMAN, ORDINARY_MEDICAL_ASSISTANT,
            PILOT_OFFICER, PETTY_OFFICER_MEDIC, PRIVATE, REAR_ADMIRAL, SURGEON_COMMANDER,
            SURGEON_LIEUTENANT, SURGEON_LIEUTENANT_COMMANDER, SERGEANT, SUB_LIEUTENANT, SAPPER,
            SQUADRON_LEADER, STAFF_SERGEANT, TROOPER, WARRANT_OFFICER_2, WING_COMMANDER,
            WARRANT_OFFICER_2, WARRANT_OFFICER_MEDIC
        };

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }

        protected Title() { }
        public Title(long id, string code, string description, string comment)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
        }

        public static Title FromCode(string code)
        {
            return AllTitles.SingleOrDefault(x => x.Code == code);
        }
    }
}
