using Domain.Enums;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class TitleConfiguration : IEntityTypeConfiguration<Title>
    {
        public void Configure(EntityTypeBuilder<Title> builder)
        {
            builder.Property(p => p.Id);
            builder.Property(p => p.Code);
            builder.Property(p => p.Description);
            builder.Property(p => p.Comment);

            builder.HasData(
                new Title(1, "DAME", "Dame", ""),
                new Title(2, "DR", "Doctor", ""),
                new Title(3, "HER EXCEL", "Her Excellency", ""),
                new Title(4, "HIS EXCEL", "His Excellency", ""),
                new Title(5, "LADY", "Lady", ""),
                new Title(6, "MISS", "Miss", ""),
                new Title(7, "MR", "Mr", ""),
                new Title(8, "MRS", "Mrs", ""),
                new Title(9, "MS", "Ms", ""),
                new Title(10, "MASTER", "Master", ""),
                new Title(11, "PROF", "Professor", ""),
                new Title(12, "SIR", "Sir", ""),
                new Title(13, "REV", "Reverend", "Title given to ministers of some religions"),
                new Title(14, "RIGHT REV", "The Right Reverend", "Anglican Bishop"),
                new Title(15, "VERY REV", "The Very Reverend", "Dean"),
                new Title(16, "MOST REV", "The Most Reverend", "Archbishop/Bishop/Catholic Priest"),
                new Title(17, "VEN", "The Venerable", "Archdeacon"),
                new Title(18, "CARD", "Cardinal", "Catholic Priest"),
                new Title(19, "MON", "Monsignor", "Catholic Priest"),
                new Title(20, "CANON", "Canon", "Priest"),
                new Title(21, "BR", "Brother", "Of a Religious Order"),
                new Title(22, "FR", "Father", "Of a Religious Order"),
                new Title(23, "SISTER", "Sister", "Of a Religious Order"),
                new Title(24, "HON", "The Honourable", "Executive Council, Speaker, Appeal/High Court and Supreme Court Judges"),
                new Title(25, "RT HON", "The Right Honourable", "The Right Honourable, Prime Minister or Privy Councillor"),
                new Title(26, "AC", "Aircraftman", "Military Personnel"),
                new Title(27, "AIRCDRE", "Air Commodore", "Military Personnel"),
                new Title(28, "AM", "Air Marshal", "Military Personnel"),
                new Title(29, "AMT", "Able Medical Assistant", "Military Personnel"),
                new Title(30, "AVM", "Air Vice Marshal", "Military Personnel"),
                new Title(31, "BDR", "Bombardier", "Military Personnel"),
                new Title(32, "BRIG", "Brigadier", "Military Personnel"),
                new Title(33, "CAPT", "Captain", "Military Personnel"),
                new Title(34, "CDR", "Commander", "Military Personnel"),
                new Title(35, "CDRE", "Commodore", "Military Personnel"),
                new Title(36, "COL", "Colonel", "Military Personnel"),
                new Title(37, "CPL", "Corporal", "Military Personnel"),
                new Title(38, "CPOMED", "Chief Petty Officer Medic", "Military Personnel"),
                new Title(39, "ENS", "Ensign Military", "Personnel"),
                new Title(40, "F/SGT", " Flight Sergeant", "Military Personnel"),
                new Title(41, "FGOFF", "Flying Officer", "Military Personnel"),
                new Title(42, "FLTLT", "Flight Lieutenant", "Military Personnel"),
                new Title(43, "GEN", "General", "Military Personnel"),
                new Title(44, "GPCAPT", "Group Captain", "Military Personnel"),
                new Title(45, "LAC", "Leading Aircraftman", "Military Personnel"),
                new Title(46, "LCPL", "Lance Corporal", "Military Personnel"),
                new Title(47, "LMED", "Leading Medic", "Military Personnel"),
                new Title(48, "LT", "Lieutenant", "Military Personnel"),
                new Title(49, "LT CDR", "Lieutenant Commander", "Military Personnel"),
                new Title(50, "LT COL", "Lieutenant Colonel", "Military Personnel"),
                new Title(51, "LT GEN", "Lieutenant General", "Military Personnel"),
                new Title(52, "MAJ", "Major", "Military Personnel"),
                new Title(53, "MAJ GEN", "Major General", "Military Personnel"),
                new Title(54, "MID", "Midshipman", "Military Personnel"),
                new Title(55, "OMT", "Ordinary Medical Assistant", "Military Personnel"),
                new Title(56, "PLTOFF", "Pilot Officer", "Military Personnel"),
                new Title(57, "POMED", "Petty Officer Medic", "Military Personnel"),
                new Title(58, "PTE", "Private", "Military Personnel"),
                new Title(59, "RA", "Rear Admiral", "Military Personnel"),
                new Title(60, "SGN CDR", "Surgeon Commander", "Military Personnel"),
                new Title(61, "SGN LT", "Surgeon Lieutenant", "Military Personnel"),
                new Title(62, "SGN LTCDR", "Surgeon Lieutenant Commander", "Military Personnel"),
                new Title(63, "SGT", "Sergeant", "Military Personnel"),
                new Title(64, "SLT", "Sub Lieutenant", "Military Personnel"),
                new Title(65, "SPR", "Sapper", "Military Personnel"),
                new Title(66, "SQNLDR", "Squadron Leader", "Military Personnel"),
                new Title(67, "SSGT", "Staff Sergeant", "Military Personnel"),
                new Title(68, "TPR", "Trooper", "Military Personnel"),
                new Title(69, "W/O", "Warrant Officer", "Military Personnel"),
                new Title(70, "WGCDR", "Wing Commander", "Military Personnel"),
                new Title(71, "WO", "Warrant Officer", "Military Personnel"),
                new Title(72, "WOMED", "Warrant Officer Medic", "Military Personnel")
            );
        }
    }
}
