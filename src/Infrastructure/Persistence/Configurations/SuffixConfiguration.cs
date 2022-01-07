using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class SuffixConfiguration : IEntityTypeConfiguration<Suffix>
    {
        public void Configure(EntityTypeBuilder<Suffix> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Code);
            builder.Property(p => p.Comment);
            builder.HasData(
                new Suffix(1, "1ST", "The First"),
                new Suffix(2, "2ND", "The Second"),
                new Suffix(3, "3RD", "The Third"),
                new Suffix(4, "ADC", "Aide-de-Camp"),
                new Suffix(5, "AE", "Air Efficiency Award"),
                new Suffix(6, "AFC", "Air Force Cross"),
                new Suffix(7, "AFM", "Air Force Medal"),
                new Suffix(8, "ARRC", "Associate of the Royal Red Cross"),
                new Suffix(9, "BEM", "British Empire Medal"),
                new Suffix(10, "BT", "Baronet"),
                new Suffix(11, "CB", "Companion of the Order of the Bath"),
                new Suffix(12, "CBE", "Commander of the Order of the British Empire"),
                new Suffix(13, "CGC", "Conspicuous Gallantry Cross"),
                new Suffix(14, "CGM", "Conspicuous Gallantry Medal"),
                new Suffix(15, "CH ", "Companion of Honour, Order of the Companions of Honour"),
                new Suffix(16, "CMG", "Companion of the Order of St Michael and St George"),
                new Suffix(17, "CNZM", "Companion of the New Zealand Order of Merit"),
                new Suffix(18, "CSO", "Companion of the Distinguished Service Order"),
                new Suffix(19, "CVO", "Commander of the Royal Victorian Order"),
                new Suffix(20, "DBE", "Dame Commander of the Order of the British Empire"),
                new Suffix(21, "DCB", "Dame Commander of the Order of the Bath"),
                new Suffix(22, "DCM", "Distinguished Conduct Medal"),
                new Suffix(23, "DCMG", "Dame Commander of the Order of St Michael and St George"),
                new Suffix(24, "DCNZM", "Distinguished Companion of the New Zealand Order of Merit"),
                new Suffix(25, "DCVO", "Dame Commander of the Royal Victorian Order"),
                new Suffix(26, "DFC", "Distinguished Flying Cross"),
                new Suffix(27, "DFM", "Distinguished Flying Medal"),
                new Suffix(28, "DNZM", "Dame Companion of the New Zealand Order of Merit"),
                new Suffix(29, "DSC", "Distinguished Service Cross"),
                new Suffix(30, "DSM", "Distinguished Service Medal"),
                new Suffix(31, "DSO", "Distinguished Service Order"),
                new Suffix(32, "ED ", "Efficiency Decoration"),
                new Suffix(33, "EM", "Efficiency Medal"),
                new Suffix(34, "GBE", "Dame/Knight Grand Cross, Order of the British Empire"),
                new Suffix(35, "GC", "George Cross"),
                new Suffix(36, "GCB", "Dame/Knight Grand Cross, Order of the Bath"),
                new Suffix(37, "GCMG", "Dame/Knight Grand Cross, Order of St Michael and St George"),
                new Suffix(38, "GCVO", "Dame/Knight Grand Cross, Royal Victorian Order"),
                new Suffix(39, "GM", "George Medal"),
                new Suffix(40, "GNZM", "Dame/Knight Grand Companion of the New Zealand Order of Merit"),
                new Suffix(41, "ISO", "Companion of the Imperial Service Order"),
                new Suffix(42, "JNR", "Junior"),
                new Suffix(43, "JP", "Justice of the Peace"),
                new Suffix(44, "KBE", "Knight Commander, Order of the British Empire"),
                new Suffix(45, "KCB", "Knight Commander, Order of the Bath"),
                new Suffix(46, "KCMG ", "Knight Commander, Order of St Michael and St George"),
                new Suffix(47, "KCVO", "Knight Commander, Royal Victorian Order"),
                new Suffix(48, "KG", "Knight of the Garter, Order of the Garter"),
                new Suffix(49, "KNZM", "Knight Companion, the New Zealand Order of Merit"),
                new Suffix(50, "KT", "Knight of the Thistle, Order of the Thistle"),
                new Suffix(51, "LG", "Lady of the Garter"),
                new Suffix(52, "LT", "Lady of the Thistle"),
                new Suffix(53, "LVO", "Lieutenant of the Royal Victorian Order"),
                new Suffix(54, "MBE", "Member of the Order of the British Empire"),
                new Suffix(55, "MC", "Military Cross"),
                new Suffix(56, "MID", "Mentioned in Dispatches"),
                new Suffix(57, "MM", "Military Medal"),
                new Suffix(58, "MNZM", "Member of the New Zealand Order of Merit"),
                new Suffix(59, "MP", "Member of Parliament"),
                new Suffix(60, "MVO", "Member of the Royal Victorian Order"),
                new Suffix(61, "NZC", "New Zealand Cross"),
                new Suffix(62, "OBE", "Officer of the Order of the British Empire"),
                new Suffix(63, "OM", " Member of the Order of Merit"),
                new Suffix(64, "ONZ", "Member of the Order of New Zealand"),
                new Suffix(65, "ONZM", "Officer of the New Zealand Order of Merit"),
                new Suffix(66, "QC", "Queen’s Counsel"),
                new Suffix(67, "QCBC", "Queen’s Commendation for Brave Conduct"),
                new Suffix(68, "QCVSA", "Queen’s Commendation for Valuable Service in the Air"),
                new Suffix(69, "QFSM", "Queen’s Fire Service Medal for Distinguished Service"),
                new Suffix(70, "QGM", "Queen’s Gallantry Medal"),
                new Suffix(71, "QHP", "Queen’s Honorary Physician"),
                new Suffix(72, "QPM", "Queen’s Police Medal for Distinguished Service"),
                new Suffix(73, "QSM", "Queen’s Service Medal"),
                new Suffix(74, "QSO", "Companion of the Queen’s Service Order"),
                new Suffix(75, "RD", "Royal New Zealand Naval Reserve Decoration"),
                new Suffix(76, "RRC", "Royal Red Cross"),
                new Suffix(77, "RVM", "Royal Victorian Medal"),
                new Suffix(78, "SNR", "Senior"),
                new Suffix(79, "VC", "Victoria Cross"),
                new Suffix(80, "VRD", "Royal New Zealand Naval Volunteer Reserve Decoration"),
                new Suffix(81, "WKB", "Wife of Knight Bachelor, Baronet or Peer of the Realm")
            );
        }
    }
}
