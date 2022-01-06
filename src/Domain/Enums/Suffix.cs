using Domain.Common;
using System.Linq;

namespace Domain.Enums
{
    public class Suffix : Entity
    {
        public static readonly Suffix FIRST = new Suffix(1, "1ST", "The First");
        public static readonly Suffix SECOND = new Suffix(2, "2ND", "The Second");
        public static readonly Suffix THIRD = new Suffix(3, "3RD", "The Third");
        public static readonly Suffix ADC = new Suffix(4, "ADC", "Aide-de-Camp");
        public static readonly Suffix AE = new Suffix(5, "AE", "Air Efficiency Award");
        public static readonly Suffix AFC = new Suffix(6, "AFC", "Air Force Cross");
        public static readonly Suffix AFM = new Suffix(7, "AFM", "Air Force Medal");
        public static readonly Suffix ARRC = new Suffix(8, "ARRC", "Associate of the Royal Red Cross");
        public static readonly Suffix BEM = new Suffix(9, "BEM", "British Empire Medal");
        public static readonly Suffix BT = new Suffix(10, "BT", "Baronet");
        public static readonly Suffix CB = new Suffix(11, "CB", "Companion of the Order of the Bath");
        public static readonly Suffix CBE = new Suffix(12, "CBE", "Commander of the Order of the British Empire");
        public static readonly Suffix CGC = new Suffix(13, "CGC", "Conspicuous Gallantry Cross");
        public static readonly Suffix CGM = new Suffix(14, "CGM", "Conspicuous Gallantry Medal");
        public static readonly Suffix CH = new Suffix(15, "CH ", "Companion of Honour, Order of the Companions of Honour");
        public static readonly Suffix CMG = new Suffix(16, "CMG", "Companion of the Order of St Michael and St George");
        public static readonly Suffix CNZM = new Suffix(17, "CNZM", "Companion of the New Zealand Order of Merit");
        public static readonly Suffix CSO = new Suffix(18, "CSO", "Companion of the Distinguished Service Order");
        public static readonly Suffix CVO = new Suffix(19, "CVO", "Commander of the Royal Victorian Order");
        public static readonly Suffix DBE = new Suffix(20, "DBE", "Dame Commander of the Order of the British Empire");
        public static readonly Suffix DCB = new Suffix(21, "DCB", "Dame Commander of the Order of the Bath");
        public static readonly Suffix DCM = new Suffix(22, "DCM", "Distinguished Conduct Medal");
        public static readonly Suffix DCMG = new Suffix(23, "DCMG", "Dame Commander of the Order of St Michael and St George");
        public static readonly Suffix DCNZM = new Suffix(24, "DCNZM", "Distinguished Companion of the New Zealand Order of Merit");
        public static readonly Suffix DCVO = new Suffix(25, "DCVO", "Dame Commander of the Royal Victorian Order");
        public static readonly Suffix DFC = new Suffix(26, "DFC", "Distinguished Flying Cross");
        public static readonly Suffix DFM = new Suffix(27, "DFM", "Distinguished Flying Medal");
        public static readonly Suffix DNZM = new Suffix(28, "DNZM", "Dame Companion of the New Zealand Order of Merit");
        public static readonly Suffix DSC = new Suffix(29, "DSC", "Distinguished Service Cross");
        public static readonly Suffix DSM = new Suffix(30, "DSM", "Distinguished Service Medal");
        public static readonly Suffix DSO = new Suffix(31, "DSO", "Distinguished Service Order");
        public static readonly Suffix ED = new Suffix(32, "ED ", "Efficiency Decoration");
        public static readonly Suffix EM = new Suffix(33, "EM", "Efficiency Medal");
        public static readonly Suffix GBE = new Suffix(34, "GBE", "Dame/Knight Grand Cross, Order of the British Empire");
        public static readonly Suffix GC = new Suffix(35, "GC", "George Cross");
        public static readonly Suffix GCB = new Suffix(36, "GCB", "Dame/Knight Grand Cross, Order of the Bath");
        public static readonly Suffix GCMG = new Suffix(37, "GCMG", "Dame/Knight Grand Cross, Order of St Michael and St George");
        public static readonly Suffix GCVO = new Suffix(38, "GCVO", "Dame/Knight Grand Cross, Royal Victorian Order");
        public static readonly Suffix GM = new Suffix(39, "GM", "George Medal");
        public static readonly Suffix GNZM = new Suffix(40, "GNZM", "Dame/Knight Grand Companion of the New Zealand Order of Merit");
        public static readonly Suffix ISO = new Suffix(41, "ISO", "Companion of the Imperial Service Order");
        public static readonly Suffix JNR = new Suffix(42, "JNR", "Junior");
        public static readonly Suffix JP = new Suffix(43, "JP", "Justice of the Peace");
        public static readonly Suffix KBE = new Suffix(44, "KBE", "Knight Commander, Order of the British Empire");
        public static readonly Suffix KCB = new Suffix(45, "KCB", "Knight Commander, Order of the Bath");
        public static readonly Suffix KCMG = new Suffix(46, "KCMG ", "Knight Commander, Order of St Michael and St George");
        public static readonly Suffix KCVO = new Suffix(47, "KCVO", "Knight Commander, Royal Victorian Order");
        public static readonly Suffix KG = new Suffix(48, "KG", "Knight of the Garter, Order of the Garter");
        public static readonly Suffix KNZM = new Suffix(49, "KNZM", "Knight Companion, the New Zealand Order of Merit");
        public static readonly Suffix KT = new Suffix(50, "KT", "Knight of the Thistle, Order of the Thistle");
        public static readonly Suffix LG = new Suffix(51, "LG", "Lady of the Garter");
        public static readonly Suffix LT = new Suffix(52, "LT", "Lady of the Thistle");
        public static readonly Suffix LVO = new Suffix(53, "LVO", "Lieutenant of the Royal Victorian Order");
        public static readonly Suffix MBE = new Suffix(54, "MBE", "Member of the Order of the British Empire");
        public static readonly Suffix MC = new Suffix(55, "MC", "Military Cross");
        public static readonly Suffix MID = new Suffix(56, "MID", "Mentioned in Dispatches");
        public static readonly Suffix MM = new Suffix(57, "MM", "Military Medal");
        public static readonly Suffix MNZM = new Suffix(58, "MNZM", "Member of the New Zealand Order of Merit");
        public static readonly Suffix MP = new Suffix(59, "MP", "Member of Parliament");
        public static readonly Suffix MVO = new Suffix(60, "MVO", "Member of the Royal Victorian Order");
        public static readonly Suffix NZC = new Suffix(61, "NZC", "New Zealand Cross");
        public static readonly Suffix OBE = new Suffix(62, "OBE", "Officer of the Order of the British Empire");
        public static readonly Suffix OM = new Suffix(63, "OM", " Member of the Order of Merit");
        public static readonly Suffix ONZ = new Suffix(64, "ONZ", "Member of the Order of New Zealand");
        public static readonly Suffix ONZM = new Suffix(65, "ONZM", "Officer of the New Zealand Order of Merit");
        public static readonly Suffix QC = new Suffix(66, "QC", "Queen’s Counsel");
        public static readonly Suffix QCBC = new Suffix(67, "QCBC", "Queen’s Commendation for Brave Conduct");
        public static readonly Suffix QCVSA = new Suffix(68, "QCVSA", "Queen’s Commendation for Valuable Service in the Air");
        public static readonly Suffix QFSM = new Suffix(69, "QFSM", "Queen’s Fire Service Medal for Distinguished Service");
        public static readonly Suffix QGM = new Suffix(70, "QGM", "Queen’s Gallantry Medal");
        public static readonly Suffix QHP = new Suffix(71, "QHP", "Queen’s Honorary Physician");
        public static readonly Suffix QPM = new Suffix(72, "QPM", "Queen’s Police Medal for Distinguished Service");
        public static readonly Suffix QSM = new Suffix(73, "QSM", "Queen’s Service Medal");
        public static readonly Suffix QSO = new Suffix(74, "QSO", "Companion of the Queen’s Service Order");
        public static readonly Suffix RD = new Suffix(75, "RD", "Royal New Zealand Naval Reserve Decoration");
        public static readonly Suffix RRC = new Suffix(76, "RRC", "Royal Red Cross");
        public static readonly Suffix RVM = new Suffix(77, "RVM", "Royal Victorian Medal");
        public static readonly Suffix SNR = new Suffix(78, "SNR", "Senior");
        public static readonly Suffix VC = new Suffix(79, "VC", "Victoria Cross");
        public static readonly Suffix VRD = new Suffix(80, "VRD", "Royal New Zealand Naval Volunteer Reserve Decoration");
        public static readonly Suffix WKB = new Suffix(81, "WKB", "Wife of Knight Bachelor, Baronet or Peer of the Realm");

        public static readonly Suffix[] AllSuffixes =
         {
            FIRST, SECOND, THIRD, ADC, AE,
            AFC, AFM, ARRC, BEM, BT,
            CB, CBE, CGC, CGM, CH,
            CMG, CNZM, CSO, CVO, DBE,
            DCB, DCM, DCMG, DCNZM, DCVO,
            DFC, DFM, DNZM, DSC, DSM,
            DSO, ED, EM, GBE, GC,
            GCB, GCMG, GCVO, GM, GNZM,
            ISO, JNR, JP, KBE, KCB,
            KCMG, KCVO, KG, KNZM, KT,
            LG, LT, LVO, MBE, MC,
            MID, MM, MNZM, MP, MVO,
            NZC, OBE, OM, ONZ, ONZM,
            QC, QCBC, QCVSA, QFSM, QGM,
            QHP, QPM, QSM, QSO, RD,
            RRC, RVM, SNR, VC, VRD,
            WKB
        };

        public string Code { get; }
        public string Comment { get; }

        protected Suffix() { }
        public Suffix(long id, string code, string comment)
            : base(id)
        {
            Code = code;
            Comment = comment;
        }

        public static Suffix FromCode(string code)
        {
            return AllSuffixes.SingleOrDefault(x => x.Code == code);
        }
    }
}
