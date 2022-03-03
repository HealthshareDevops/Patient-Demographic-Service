using CSharpFunctionalExtensions;
using Domain.Enums;
using Domain.ValueObjects;
using System.Linq;

namespace Domain.Entities
{
    public class Ethnicity : Entity
    {
        public static readonly Ethnicity EUROPEAN_NOT_FURTHER_DEFINED       = new Ethnicity( 1,"10",	"European not further defined",         "21");
        public static readonly Ethnicity NZ_EUROPEAN                        = new Ethnicity( 2,"11",	"NZ European",                          "22");
        public static readonly Ethnicity OTHER_EUROPEAN                     = new Ethnicity( 3,"12",	"Other European",                       "20");
        public static readonly Ethnicity NZ_MAORI                           = new Ethnicity( 4,"21",	"NZ Maori",	                            "1");
        public static readonly Ethnicity PACIFIC_ISLAND_NOT_FURTHER_DEFINED = new Ethnicity( 5,"30",	"Pacific Island not further defined",   "9");
        public static readonly Ethnicity SAMOAN                             = new Ethnicity( 6,"31",	"Samoan",	                            "7"); 
        public static readonly Ethnicity COOK_ISLAND_MAORI                  = new Ethnicity( 7,"32",	"Cook Island Maori",	                "6");
        public static readonly Ethnicity TONGAN                             = new Ethnicity( 8,"33",	"Tongan",	                            "5");
        public static readonly Ethnicity NIUEAN                             = new Ethnicity( 9,"34",	"Niuean",	                            "4");
        public static readonly Ethnicity TOKELAUAN                          = new Ethnicity( 10,"35",	"Tokelauan",	                        "2");
        public static readonly Ethnicity FIJIAN                             = new Ethnicity( 11,"36",	"Fijian",	                            "3");
        public static readonly Ethnicity OTHER_PACIFIC_ISLAND               = new Ethnicity( 12,"37",	"Other Pacific Island",	                "8");
        public static readonly Ethnicity ASIAN_NOT_FURTHER_DEFINED          = new Ethnicity( 13,"40",	"Asian not further defined",	        "14");
        public static readonly Ethnicity SOUTHEAST_ASIAN                    = new Ethnicity( 14,"41",	"Southeast Asian",	                    "10");
        public static readonly Ethnicity CHINESE                            = new Ethnicity( 15,"42",	"Chinese",	                            "12");
        public static readonly Ethnicity INDIAN                             = new Ethnicity( 16,"43",	"Indian",	                            "11");
        public static readonly Ethnicity OTHER_ASIAN                        = new Ethnicity( 17,"44",	"Other Asian",	                        "13");
        public static readonly Ethnicity MIDDLE_EASTERN                     = new Ethnicity( 18,"51",	"Middle Eastern",	                    "17");
        public static readonly Ethnicity LATIN_AMERICAN_HISPANIC            = new Ethnicity( 19,"52",	"Latin American / Hispanic",	        "15");
        public static readonly Ethnicity AFRICAN                            = new Ethnicity( 20,"53",	"African",	                            "16");
        public static readonly Ethnicity OTHER_RETIRED                      = new Ethnicity( 21,"54",	"Other(retired on 1/07/2009)",          "19");
        public static readonly Ethnicity OTHER_ETHNICITY                    = new Ethnicity( 22,"61",	"Other ethnicity",	                    "18");
        public static readonly Ethnicity DO_NOT_KNOW                        = new Ethnicity( 23,"94",	"Do not know",	                        "94");
        public static readonly Ethnicity REFUSED_TO_ANSWER                  = new Ethnicity( 24,"95",	"Refused to answer",	                "95");
        public static readonly Ethnicity RESPONSE_UNIDENTIFIABLE            = new Ethnicity( 25,"97",	"Response unidentifiable",	            "97");
        public static readonly Ethnicity NOT_STATED                         = new Ethnicity( 26,"99",	"Not stated",	                        "99");
        public static readonly Ethnicity[] AllEthnicities = {
            EUROPEAN_NOT_FURTHER_DEFINED
            ,NZ_EUROPEAN
            ,OTHER_EUROPEAN
            ,NZ_MAORI
            ,PACIFIC_ISLAND_NOT_FURTHER_DEFINED
            ,SAMOAN
            ,COOK_ISLAND_MAORI
            ,TONGAN
            ,NIUEAN
            ,TOKELAUAN
            ,FIJIAN
            ,OTHER_PACIFIC_ISLAND
            ,ASIAN_NOT_FURTHER_DEFINED
            ,SOUTHEAST_ASIAN
            ,CHINESE
            ,INDIAN
            ,OTHER_ASIAN
            ,MIDDLE_EASTERN
            ,LATIN_AMERICAN_HISPANIC
            ,AFRICAN
            ,OTHER_RETIRED
            ,OTHER_ETHNICITY
            ,DO_NOT_KNOW
            ,REFUSED_TO_ANSWER
            ,RESPONSE_UNIDENTIFIABLE
            ,NOT_STATED

        };
        public string Code { get; private set; }
        public string Description { get; private set; }
        public string Priority { get; private set; }

        protected Ethnicity() { }
        public Ethnicity(long id, string code, string description, string priority)
            : base(id)
        {
            Code = code;
            Description = description;
            Priority = priority;
        }

        public static Ethnicity FromCode(string code)
        {
            return AllEthnicities.SingleOrDefault(x => x.Code == code);
        }
    }
}
