using CSharpFunctionalExtensions;
using System.Linq;

namespace Domain.Enums
{
    public class Country : Entity
    {
        public static readonly Country DJIBOUTI = new Country(1, "004", "Djibouti", "");
        public static readonly Country AFGANISTAN = new Country(2, "008", "Afganistan", "");
        public static readonly Country ALBANIA = new Country(3, "012", "Albania", "");
        public static readonly Country ALGERIA = new Country(4, "016", "Algeria", "");
        public static readonly Country AMERICAN_SAMOA = new Country(5, "020", "American Samoa", "");
        public static readonly Country ANDORRA = new Country(6, "024", "Andorra", "");
        public static readonly Country ANGOLA = new Country(7, "028", "Angola", "");
        public static readonly Country ANGUILLA = new Country(8, "030", "Anguilla", "");
        public static readonly Country AZERBAIJAN = new Country(9, "031", "Azerbaijan", "");
        public static readonly Country ANTARCTICA_UNDEFINED = new Country(10, "032", "Antarctica Undefined", "");
        public static readonly Country ANTARCTICA_FOREIGN = new Country(11, "036", "Antarctica Foreign", "");
        public static readonly Country ANTARCTICA_BRITISH = new Country(12, "040", "Antarctica British", "");
        public static readonly Country ANTARCTICA_USA = new Country(13, "044", "Antarctica USA", "");
        public static readonly Country ANTIGUA_AND_BARBUDA = new Country(14, "048", "Antigua and Barbuda", "");
        public static readonly Country ARMENIA = new Country(15, "051", "Armenia", "");
        public static readonly Country ARGENTINA = new Country(16, "052", "Argentina", "");
        public static readonly Country ARUBA = new Country(17, "056", "Aruba", "");
        public static readonly Country AUSTRALIA = new Country(18, "060", "Australia", "");
        public static readonly Country AUSTRIA = new Country(19, "064", "Austria", "");
        public static readonly Country BAHAMAS = new Country(20, "068", "Bahamas", "");
        public static readonly Country BOSNIA_HERZEGOVINA = new Country(21, "070", "Bosnia-Herzegovina", "");
        public static readonly Country BAHRAIN = new Country(22, "072", "Bahrain", "");
        public static readonly Country AFRICA_UNDEFINED = new Country(23, "073", "Africa Undefined", "");
        public static readonly Country BANGLADESH = new Country(24, "076", "Bangladesh", "");
        public static readonly Country BARBADOS = new Country(25, "080", "Barbados", "");
        public static readonly Country BELARUS = new Country(26, "082", "Belarus", "");
        public static readonly Country BELGIUM = new Country(27, "084", "Belgium", "");
        public static readonly Country BELIZE = new Country(28, "088", "Belize", "");
        public static readonly Country BENIN = new Country(29, "090", "Benin", "");
        public static readonly Country BERMUDA = new Country(30, "092", "Bermuda", "");
        public static readonly Country BHUTAN = new Country(31, "096", "Bhutan", "");
        public static readonly Country BOLIVIA = new Country(32, "100", "Bolivia", "");
        public static readonly Country BOTSWANA = new Country(33, "104", "Botswana", "");
        public static readonly Country BRAZIL = new Country(34, "108", "Brazil", "");
        public static readonly Country BRITISH_INDIAN_OCEAN_TERRITORIES = new Country(35, "112", "British Indian Ocean Territories", "");
        public static readonly Country VIRGIN_ISLANDS_BRITISH = new Country(36, "120", "Virgin Islands, British", "");
        public static readonly Country BRUNEI = new Country(37, "124", "Brunei Daressalam", "");
        public static readonly Country BULGARIA = new Country(38, "128", "Bulgaria", "");
        public static readonly Country MYANMAR = new Country(39, "132", "Myanmar (Burma)", "");
        public static readonly Country BURUNDI = new Country(40, "136", "Burundi", "");
        public static readonly Country WHITE_RUSSIA_DISUSED = new Country(41, "140", "White Russia (disused)", "");
        public static readonly Country CAMEROON = new Country(42, "144", "Cameroon", "");
        public static readonly Country CANADA = new Country(43, "148", "Canada", "");
        public static readonly Country CANTON_AND_ENDERBURY_ISLANDS_DISUSED = new Country(44, "152", "Canton and Enderbury Islands (disused)", "");
        public static readonly Country CAPE_VERDE = new Country(45, "156", "Cape Verde", "");
        public static readonly Country CAYMAN_ISLANDS = new Country(46, "160", "Cayman Islands", "");
        public static readonly Country CENTRAL_AFRICAN_REPUBLIC = new Country(47, "164", "Central African Republic", "");
        public static readonly Country CHAD = new Country(48, "168", "Chad", "");
        public static readonly Country CHANNEL_ISLANDS = new Country(49, "172", "Channel Islands", "");
        public static readonly Country MAYOTTE = new Country(50, "175", "Mayotte", "");
        public static readonly Country CHILE = new Country(51, "176", "Chile", "");
        public static readonly Country CHINA = new Country(52, "180", "China, Peoples Republic of", "");
        public static readonly Country CHRISTMAS_ISLAND = new Country(53, "181", "Christmas Island", "");
        public static readonly Country COCOS_ISLANDS = new Country(54, "182", "Cocos (Keeling) Islands", "");
        public static readonly Country COLOMBIA = new Country(55, "184", "Colombia", "");
        public static readonly Country GRANDE_COMORE_DISUSED = new Country(56, "188", "Grande Comore (disused)", "");
        public static readonly Country CONGO = new Country(57, "192", "Congo", "");
        public static readonly Country COOK_ISLANDS = new Country(58, "196", "Cook Islands", "");
        public static readonly Country COSTA_RICA = new Country(59, "200", "Costa Rica", "");
        public static readonly Country CROATIA = new Country(60, "202", "Croatia", "");
        public static readonly Country CZECH_REPUBLIC = new Country(61, "203", "Czech Republic", "");
        public static readonly Country CUBA = new Country(62, "204", "Cuba", "");
        public static readonly Country CYPRUS = new Country(63, "208", "Cyprus", "");
        public static readonly Country CZECHOSLOVAKIA_DISUSED = new Country(64, "212", "Czechoslovakia (disused)", "");
        public static readonly Country DENMARK = new Country(65, "220", "Denmark", "");
        public static readonly Country DOMINICA = new Country(66, "224", "Dominica", "");
        public static readonly Country DOMINICAN_REPUBLIC = new Country(67, "228", "Dominican Republic", "");
        public static readonly Country EAST_TIMOR = new Country(68, "230", "East Timor", "");
        public static readonly Country ECUADOR = new Country(69, "232", "Ecuador", "");
        public static readonly Country ESTONIA = new Country(70, "233", "Estonia", "");
        public static readonly Country EGYPT = new Country(71, "236", "Egypt", "");
        public static readonly Country ERITREA = new Country(72, "237", "Eritrea", "");
        public static readonly Country SOUTH_GEORGIA_AND_THE_SOUTH_SANDWICH_ISLANDS = new Country(73, "239", "South Georgia and the South Sandwich Islands", "");
        public static readonly Country EL_SALVADOR = new Country(74, "240", "El Salvador", "");
        public static readonly Country BORN_AT_SEA = new Country(75, "242", "Born at sea", "");
        public static readonly Country ENGLAND = new Country(76, "244", "England", "");
        public static readonly Country EQUATORIAL_GUINEA = new Country(77, "248", "Equatorial Guinea", "");
        public static readonly Country ESTONIA_DISUSED = new Country(78, "252", "Estonia (disused)", "");
        public static readonly Country ETHIOPIA = new Country(79, "256", "Ethiopia", "");
        public static readonly Country FAEROE_ISLANDS = new Country(80, "260", "Faeroe Islands", "");
        public static readonly Country FALKLAND_ISLANDS = new Country(81, "264", "Falkland Islands", "");
        public static readonly Country FIJI = new Country(82, "268", "Fiji", "");
        public static readonly Country FINLAND = new Country(83, "272", "Finland", "");
        public static readonly Country FRANCE = new Country(84, "276", "France", "");
        public static readonly Country FRENCH_GUIANA = new Country(85, "280", "French Guiana", "");
        public static readonly Country FRENCH_POLYNESIA = new Country(86, "284", "French Polynesia", "");
        public static readonly Country FRENCH_SOUTHERN_TERRITORIES = new Country(87, "286", "French Southern Territories", "");
        public static readonly Country GABON = new Country(88, "288", "Gabon", "");
        public static readonly Country GAMBIA = new Country(89, "292", "Gambia", "");
        public static readonly Country GEORGIA = new Country(90, "294", "Georgia", "");
        public static readonly Country EAST_GERMANY_DISUSED = new Country(91, "296", "East Germany (disused)", "");
        public static readonly Country GERMANY = new Country(92, "300", "Germany", "");
        public static readonly Country GHANA = new Country(93, "304", "Ghana", "");
        public static readonly Country GIBRALTAR = new Country(94, "308", "Gibraltar", "");
        public static readonly Country KIRIBATI = new Country(95, "312", "Kiribati", "");
        public static readonly Country GREECE = new Country(96, "316", "Greece", "");
        public static readonly Country GREENLAND = new Country(97, "320", "Greenland", "");
        public static readonly Country SERBIA = new Country(98, "321", "Serbia", "");
        public static readonly Country KOSOVO = new Country(99, "322", "Republic of Kosovo", "");
        public static readonly Country GRENADA = new Country(100, "324", "Grenada", "");
        public static readonly Country GUADELOUPE = new Country(101, "328", "Guadeloupe", "");
        public static readonly Country GUAM = new Country(102, "332", "Guam", "");
        public static readonly Country GUATEMALA = new Country(103, "336", "Guatemala", "");
        public static readonly Country GUINEA = new Country(104, "340", "Guinea", "");
        public static readonly Country GUINEA_BISSAU = new Country(105, "344", "Guinea Bissau", "");
        public static readonly Country GUYANA = new Country(106, "348", "Guyana", "");
        public static readonly Country HAITI = new Country(107, "352", "Haiti", "");
        public static readonly Country HONDURAS = new Country(108, "356", "Honduras", "");
        public static readonly Country HONGKONG = new Country(109, "360", "Hong Kong", "");
        public static readonly Country HUNGARY = new Country(110, "364", "Hungary", "");
        public static readonly Country ICELAND = new Country(111, "368", "Iceland", "");
        public static readonly Country INDIA = new Country(112, "372", "India", "");
        public static readonly Country INDONESIA = new Country(113, "376", "Indonesia", "");
        public static readonly Country IRAN = new Country(114, "380", "Iran", "");
        public static readonly Country IRAQ = new Country(115, "384", "Iraq", "");
        public static readonly Country REPUBLIC_OF_IRELAND = new Country(116, "388", "Republic of Ireland", "");
        public static readonly Country ISLE_OF_MAN = new Country(117, "392", "Isle of Man", "");
        public static readonly Country ISRAEL = new Country(118, "396", "Israel", "");
        public static readonly Country KAZAKHSTAN = new Country(119, "398", "Kazakhstan", "");
        public static readonly Country ITALY = new Country(120, "400", "Italy", "");
        public static readonly Country IVORY_COAST = new Country(121,"404","Cote D'Ivoire","");
        public static readonly Country JAMAICA = new Country(122, "408", "Jamaica", "");
        public static readonly Country JAPAN = new Country(123, "412", "Japan", "");
        public static readonly Country JORDAN = new Country(124, "416", "Jordan", "");
        public static readonly Country KYRGYZSTAN = new Country(125, "417", "Kyrgyzstan", "");
        public static readonly Country CAMBODIA = new Country(126, "418", "Cambodia", "");
        public static readonly Country KENYA = new Country(127, "420", "Kenya", "");
        public static readonly Country NORTH_KOREA = new Country(128,"428","Korea, Democratic People's republic of(North)","");
        public static readonly Country SOUTH_KOREA = new Country(129, "432", "Korea, Republic of (South)", "");
        public static readonly Country KUWAIT = new Country(130, "436", "Kuwait", "");
        public static readonly Country LAOS = new Country(131, "440", "Laos", "");
        public static readonly Country LATVIA = new Country(132, "444", "Latvia", "");
        public static readonly Country LEBANON = new Country(133, "448", "Lebanon", "");
        public static readonly Country LESOTHO = new Country(134, "452", "Lesotho", "");
        public static readonly Country LIBERIA = new Country(135, "456", "Liberia", "");
        public static readonly Country LIBYA = new Country(136, "460", "Libyan Arab Republic", "");
        public static readonly Country LIECHTENSTEIN = new Country(137, "464", "Liechtenstein", "");
        public static readonly Country LITHUANIA = new Country(138, "468", "Lithuania", "");
        public static readonly Country LUXEMBOURG = new Country(139, "472", "Luxembourg", "");
        public static readonly Country MACAU = new Country(140, "476", "Macau", "");
        public static readonly Country MADAGASCAR = new Country(141, "480", "Madagascar", "");
        public static readonly Country MALAWI = new Country(142, "484", "Malawi", "");
        public static readonly Country MALAYSIA = new Country(143, "488", "Malaysia", "");
        public static readonly Country MALDIVES = new Country(144, "492", "Maldives", "");
        public static readonly Country MALI = new Country(145, "496", "Mali", "");
        public static readonly Country MOLDOVA = new Country(146, "498", "Moldova", "");
        public static readonly Country MALTA = new Country(147, "500", "Malta", "");
        public static readonly Country MARSHALL_ISLANDS = new Country(148, "502", "Marshall Islands", "");
        public static readonly Country MARTINIQUE = new Country(149, "504", "Martinique", "");
        public static readonly Country MAURITANIA = new Country(150, "508", "Mauritania", "");
        public static readonly Country MAURITIUS = new Country(151, "512", "Mauritius", "");
        public static readonly Country MEXICO = new Country(152, "516", "Mexico", "");
        public static readonly Country MIDWAY_ISLANDS_DISUSED = new Country(153, "517", "Midway Islands (disused)", "");
        public static readonly Country MICRONESIA = new Country(154, "518", "Micronesia, Federated States of", "");
        public static readonly Country MONACO = new Country(155, "520", "Monaco", "");
        public static readonly Country MONGOLIA = new Country(156, "524", "Mongolia", "");
        public static readonly Country MONTESERRAT = new Country(157, "528", "Montserrat", "");
        public static readonly Country MOROCCO = new Country(158, "532", "Morocco", "");
        public static readonly Country MOZAMBIQUE = new Country(159, "536", "Mozambique", "");
        public static readonly Country NAMIBIA = new Country(160, "540", "Namibia", "");
        public static readonly Country NAURU = new Country(161, "544", "Nauru", "");
        public static readonly Country NEPAL = new Country(162, "548", "Nepal", "");
        public static readonly Country NETHERLANDS = new Country(163, "552", "Netherlands", "");
        public static readonly Country NETHERLANDS_ANTILLES = new Country(164, "556", "Netherlands Antilles", "");
        public static readonly Country NEUTRAL_ZONE_DISUSED = new Country(165, "560", "Neutral Zone (disused)", "");
        public static readonly Country NEW_CALEDONIA = new Country(166, "564", "New Caledonia", "");
        public static readonly Country VANUATU = new Country(167, "568", "Vanuatu", "");
        public static readonly Country NEW_ZEALAND = new Country(168, "572", "New Zealand", "");
        public static readonly Country NICARAGUA = new Country(169, "576", "Nicaragua", "");
        public static readonly Country NIGER = new Country(170, "580", "Niger", "");
        public static readonly Country NIGERIA = new Country(171, "584", "Nigeria", "");
        public static readonly Country NIUE = new Country(172, "588", "Niue", "");
        public static readonly Country NORFOLK_ISLAND = new Country(173, "592", "Norfolk Island", "");
        public static readonly Country NORTHERN_IRELAND = new Country(174, "596", "Northern Ireland", "");
        public static readonly Country NOTHERN_MARIANA_ISLANDS = new Country(175, "598", "Northern Mariana Islands", "");
        public static readonly Country NORWAY = new Country(176, "600", "Norway", "");
        public static readonly Country OMAN = new Country(177, "604", "Oman", "");
        public static readonly Country FEDERATED_STATES_OF_MICRONESIA_DISUSED = new Country(178, "608", "Federated States of Micronesia(disused)", "");
        public static readonly Country PAKISTAN = new Country(179, "612", "Pakistan", "");
        public static readonly Country PALAU = new Country(180, "614", "Palau", "");
        public static readonly Country PANAMA = new Country(181, "616", "Panama", "");
        public static readonly Country PAPUA_NEW_GUINEA = new Country(182, "624", "Papua New Guinea", "");
        public static readonly Country PARAGUAY = new Country(183, "628", "Paraguay", "");
        public static readonly Country PERU = new Country(184, "632", "Peru", "");
        public static readonly Country PHILIPPINES = new Country(185, "636", "Philippines", "");
        public static readonly Country PITCAIRN_ISLAND = new Country(186, "640", "Pitcairn Island", "");
        public static readonly Country RUSSIA = new Country(187, "643", "Russia", "");
        public static readonly Country POLAND = new Country(188, "644", "Poland", "");
        public static readonly Country PORTUGAL = new Country(189, "648", "Portugal", "");
        public static readonly Country PUERTO_RICO = new Country(190, "656", "Puerto Rico", "");
        public static readonly Country QATAR = new Country(191, "660", "Qatar", "");
        public static readonly Country REUNION = new Country(192, "664", "Reunion", "");
        public static readonly Country ZIMBABWE = new Country(193, "668", "Zimbabwe", "");
        public static readonly Country ROMANIA = new Country(194, "672", "Romania", "");
        public static readonly Country RWANDA = new Country(195, "676", "Rwanda", "");
        public static readonly Country ST_HELENA = new Country(196, "680", "St Helena", "");
        public static readonly Country ST_KITTS_NEVIS = new Country(197, "684", "St Kitts Nevis", "");
        public static readonly Country ST_LUCIA = new Country(198, "688", "St Lucia", "");
        public static readonly Country ST_PIERRE_MIQUELON = new Country(199, "692", "St Pierre Miquelon", "");
        public static readonly Country ST_VINCENT_AND_THE_GRENADINES = new Country(200, "696", "St Vincent and The Grenadines", "");
        public static readonly Country SAMOA = new Country(201, "698", "Samoa, Western", "");
        public static readonly Country SAN_MARINO = new Country(202, "700", "San Marino", "");
        public static readonly Country SLOVAKIA = new Country(203, "703", "Slovakia", "");
        public static readonly Country SAO_TOME_AND_PRINCIPE = new Country(204, "704", "Sao Tome and Principe", "");
        public static readonly Country SAUDI_ARABIA = new Country(205, "708", "Saudi Arabia", "");
        public static readonly Country SCOTLAND = new Country(206, "712", "Scotland", "");
        public static readonly Country SENEGAL = new Country(207, "716", "Senegal", "");
        public static readonly Country SEYCHELLES = new Country(208, "720", "Seychelles", "");
        public static readonly Country SIERRE_LEONE = new Country(209, "724", "Sierra Leone", "");
        public static readonly Country SINGAPORE = new Country(210, "732", "Singapore", "");
        public static readonly Country SLOVENIA = new Country(211, "733", "Slovenia", "");
        public static readonly Country SOLOMON_ISLANDS = new Country(212, "734", "Solomon Islands", "");
        public static readonly Country SOMALIA = new Country(213, "736", "Somalia", "");
        public static readonly Country SOUTH_AFRICA = new Country(214, "740", "South Africa", "");
        public static readonly Country SPAIN = new Country(215, "744", "Spain", "");
        public static readonly Country SRI_LANKA = new Country(216, "752", "Sri Lanka", "");
        public static readonly Country SUDAN = new Country(217, "756", "Sudan", "");
        public static readonly Country SURINAME = new Country(218, "760", "Suriname", "");
        public static readonly Country TAJIKISTAN = new Country(219, "762", "Tajikistan", "");
        public static readonly Country SWAZILAND = new Country(220, "764", "Swaziland", "");
        public static readonly Country SWEDEN = new Country(221, "768", "Sweden", "");
        public static readonly Country SWITZERLAND = new Country(222, "772", "Switzerland", "");
        public static readonly Country SYRIA = new Country(223, "776", "Syria", "");
        public static readonly Country TAIWAN = new Country(224, "780", "Taiwan", "");
        public static readonly Country TANZANIA = new Country(225, "784", "Tanzania", "");
        public static readonly Country THAILAND = new Country(226, "788", "Thailand", "");
        public static readonly Country TOGO = new Country(227, "792", "Togo", "");
        public static readonly Country TURKMENISTAN = new Country(228, "795", "Turkmenistan", "");
        public static readonly Country TOKELAU = new Country(229, "796", "Tokelau", "");
        public static readonly Country TONGA = new Country(230, "800", "Tonga", "");
        public static readonly Country TRINIDAD_AND_TOBAGO = new Country(231, "804", "Trinidad and Tobago", "");
        public static readonly Country MACEDONIA = new Country(232, "807", "Macedonia, The former Yugoslav Republic of", "");
        public static readonly Country TUNISIA = new Country(233, "808", "Tunisia", "");
        public static readonly Country TURKEY = new Country(234, "812", "Turkey", "");
        public static readonly Country TURKS_AND_CAICOS_ISLANDS = new Country(235, "816", "Turks and Caicos Islands", "");
        public static readonly Country TUVALU = new Country(236, "820", "Tuvalu", "");
        public static readonly Country UGANDA = new Country(237, "824", "Uganda", "");
        public static readonly Country UKRAINE = new Country(238, "828", "Ukraine", "");
        public static readonly Country RUSSIA_DISUSED = new Country(239, "832", "Russia (disused)", "");
        public static readonly Country UNITED_ARAB_EMIRATES = new Country(240, "836", "United Arab Emirates", "");
        public static readonly Country GREAT_BRITAIN = new Country(241, "840", "Great Britain", "");
        public static readonly Country CURACAO = new Country(242, "843", "Curacao", "");
        public static readonly Country UNITED_STATES_OF_AMERICA = new Country(243, "844", "United States of America", "");
        public static readonly Country UNITED_STATES_MINOR_OUTLYING_ISLANDS = new Country(244, "846", "United States Minor Outlying Islands", "");
        public static readonly Country UZBEKISTAN = new Country(245, "848", "Uzbekistan", "");
        public static readonly Country VIRGIN_ISLANDS_US = new Country(246, "852", "Virgin Islands, United States", "");
        public static readonly Country BURKINA_FASO = new Country(247, "856", "Burkina Faso", "");
        public static readonly Country URUGUAY = new Country(248, "860", "Uruguay", "");
        public static readonly Country VATICAN_CITY = new Country(249, "864", "Vatican City", "");
        public static readonly Country VENEZUELA = new Country(250, "868", "Venezuela", "");
        public static readonly Country VIETNAM = new Country(251, "872", "Viet Nam", "");
        public static readonly Country WAKE_ISLAND_DISUSED = new Country(252, "880", "Wake Island (disused)", "");
        public static readonly Country WALES = new Country(253, "884", "Wales", "");
        public static readonly Country WALLIS_AND_FUTUNA_ISLAND = new Country(254, "888", "Wallis and Futuna Island", "");
        public static readonly Country WESTERN_SAHARA = new Country(255, "890", "Western Sahara", "");
        public static readonly Country YEMEN_DISUSED = new Country(256, "896", "Yemen (disused)", "");
        public static readonly Country YEMEN = new Country(257, "897", "Yemen", "");
        public static readonly Country DEMOCRATIC_SOUTH_YEMEN_DISUSED = new Country(258, "900", "Yemen (Democratic South Yemen) (disused)", "");
        public static readonly Country YUGOSLAVIA = new Country(259, "904", "Yugoslavia", "");
        public static readonly Country ZAIRE = new Country(260, "908", "Zaire", "");
        public static readonly Country ZAMBIA = new Country(261, "912", "Zambia", "");
        public static readonly Country AMERICA_UNDEFINED = new Country(262, "951", "America Undefined", "");
        public static readonly Country ASIA_UNDEFINED = new Country(263, "952", "Asia Undefined", "");
        public static readonly Country SOUTH_EAST_ASIA_UNDEFINED = new Country(264, "953", "South East Asia Undefined", "");
        public static readonly Country EUROPE = new Country(265, "954", "Europe", "");
        public static readonly Country GERMANY_UNDEFINED = new Country(266, "955", "Germany Undefined", "");
        public static readonly Country IRELAND_UNDEFINED = new Country(267, "956", "Ireland Undefined", "");
        public static readonly Country MELANESIA_UNDEFINED = new Country(268, "957", "Melanesia Undefined", "");
        public static readonly Country MICRONESIA_UNDEFINED = new Country(269, "958", "Micronesia Undefined", "");
        public static readonly Country PACIFIC_ISLANDS_UNDEFINED = new Country(270, "959", "Pacific Islands Undefined", "");
        public static readonly Country POLYNESIA_UNDEFINED = new Country(271, "960", "Polynesia Undefined", "");
        public static readonly Country SOUTH_AMERICA_UNDEFINED = new Country(272, "961", "South America Undefined", "");
        public static readonly Country NOT_SPECIFIED = new Country(273, "999", "Not Specified", "");

        public static readonly Country[] AllCountries =
        {
            DJIBOUTI, AFGANISTAN, ALBANIA, ALGERIA, AMERICAN_SAMOA, ANDORRA, ANGOLA, ANGUILLA, AZERBAIJAN, ANTARCTICA_UNDEFINED, ANTARCTICA_FOREIGN, ANTARCTICA_BRITISH, ANTARCTICA_USA, ANTIGUA_AND_BARBUDA, ARMENIA, ARGENTINA, ARUBA, AUSTRALIA, AUSTRIA,
            BAHAMAS, BOSNIA_HERZEGOVINA, BAHRAIN, AFRICA_UNDEFINED, BANGLADESH, BARBADOS, BELARUS, BELGIUM, BELIZE, BENIN, BERMUDA, BHUTAN, BOLIVIA, BOTSWANA, BRAZIL, BRITISH_INDIAN_OCEAN_TERRITORIES, VIRGIN_ISLANDS_BRITISH, BRUNEI, BULGARIA, MYANMAR, BURUNDI, WHITE_RUSSIA_DISUSED, 
            CAMEROON, CANADA, CANTON_AND_ENDERBURY_ISLANDS_DISUSED, CAPE_VERDE, CAYMAN_ISLANDS, CENTRAL_AFRICAN_REPUBLIC, CHAD, CHANNEL_ISLANDS, MAYOTTE, CHILE, CHINA, CHRISTMAS_ISLAND, COCOS_ISLANDS, COLOMBIA, GRANDE_COMORE_DISUSED, CONGO, COOK_ISLANDS, COSTA_RICA, CROATIA, CZECH_REPUBLIC, CUBA, CYPRUS, CZECHOSLOVAKIA_DISUSED,
            DENMARK, DOMINICA, DOMINICAN_REPUBLIC,
            EAST_TIMOR, ECUADOR, ESTONIA,EGYPT, ERITREA, SOUTH_GEORGIA_AND_THE_SOUTH_SANDWICH_ISLANDS, EL_SALVADOR, BORN_AT_SEA, ENGLAND, EQUATORIAL_GUINEA, ESTONIA_DISUSED, ETHIOPIA, 
            FAEROE_ISLANDS, FALKLAND_ISLANDS, FIJI, FINLAND, FRANCE, FRENCH_GUIANA, FRENCH_POLYNESIA, FRENCH_SOUTHERN_TERRITORIES,
            GABON, GAMBIA, GEORGIA, EAST_GERMANY_DISUSED, GERMANY, GHANA, GIBRALTAR, KIRIBATI, GREECE, GREENLAND, SERBIA, KOSOVO, GRENADA, GUADELOUPE, GUAM, GUATEMALA, GUINEA, GUINEA_BISSAU, GUYANA,  
            HAITI, HONDURAS, HONGKONG, HUNGARY, 
            ICELAND, INDIA, INDONESIA, IRAN, IRAQ, REPUBLIC_OF_IRELAND, ISLE_OF_MAN, ISRAEL, KAZAKHSTAN, ITALY, IVORY_COAST,
            JAMAICA, JAPAN, JORDAN,
            KYRGYZSTAN, CAMBODIA, KENYA, NORTH_KOREA, SOUTH_KOREA, KUWAIT,
            LAOS, LATVIA, LEBANON, LESOTHO, LIBERIA, LIBYA, LIECHTENSTEIN, LITHUANIA, LUXEMBOURG,
            MACAU, MADAGASCAR, MALAWI, MALAYSIA, MALDIVES, MALI, MOLDOVA, MALTA, MARSHALL_ISLANDS, MARTINIQUE, MAURITANIA, MAURITIUS, MEXICO, MIDWAY_ISLANDS_DISUSED, MICRONESIA, MONACO, MONGOLIA, MONTESERRAT, MOROCCO, MOZAMBIQUE,
            NAMIBIA, NAURU, NEPAL, NETHERLANDS, NETHERLANDS_ANTILLES, NEUTRAL_ZONE_DISUSED, NEW_CALEDONIA, VANUATU, NEW_ZEALAND, NICARAGUA, NIGER, NIGERIA, NIUE, NORFOLK_ISLAND, NORTHERN_IRELAND, NOTHERN_MARIANA_ISLANDS, NORWAY,
            OMAN, FEDERATED_STATES_OF_MICRONESIA_DISUSED,
            PAKISTAN, PALAU, PANAMA, PAPUA_NEW_GUINEA, PARAGUAY, PERU, PHILIPPINES, PITCAIRN_ISLAND, RUSSIA, POLAND, PORTUGAL, PUERTO_RICO, 
            QATAR,
            REUNION, ZIMBABWE, ROMANIA, RWANDA,
            ST_HELENA, ST_KITTS_NEVIS, ST_LUCIA, ST_PIERRE_MIQUELON, ST_VINCENT_AND_THE_GRENADINES, SAMOA, SAN_MARINO, SLOVAKIA, SAO_TOME_AND_PRINCIPE, SAUDI_ARABIA, SCOTLAND, SENEGAL, SEYCHELLES, SIERRE_LEONE, SINGAPORE, SLOVENIA, SOLOMON_ISLANDS, SOMALIA, SOUTH_AFRICA, SPAIN, SRI_LANKA, SUDAN, SURINAME, TAJIKISTAN, SWAZILAND, SWEDEN, SWITZERLAND, SYRIA,
            TAIWAN, TANZANIA, THAILAND, TOGO, TURKMENISTAN, TOKELAU, TONGA, TRINIDAD_AND_TOBAGO, MACEDONIA, TUNISIA, TURKEY, TURKS_AND_CAICOS_ISLANDS, TUVALU,
            UGANDA, UKRAINE, RUSSIA_DISUSED, UNITED_ARAB_EMIRATES, GREAT_BRITAIN, CURACAO, UNITED_STATES_OF_AMERICA, UNITED_STATES_MINOR_OUTLYING_ISLANDS, UZBEKISTAN, VIRGIN_ISLANDS_US, BURKINA_FASO, URUGUAY,
            VATICAN_CITY, VENEZUELA, VIETNAM, WAKE_ISLAND_DISUSED, 
            WALES, WALLIS_AND_FUTUNA_ISLAND, WESTERN_SAHARA,
            YEMEN_DISUSED, YEMEN, DEMOCRATIC_SOUTH_YEMEN_DISUSED, YUGOSLAVIA,
            ZAIRE, ZAMBIA,
            AMERICA_UNDEFINED, ASIA_UNDEFINED, SOUTH_EAST_ASIA_UNDEFINED, EUROPE, GERMANY_UNDEFINED, IRELAND_UNDEFINED, MELANESIA_UNDEFINED, MICRONESIA_UNDEFINED, PACIFIC_ISLANDS_UNDEFINED, POLYNESIA_UNDEFINED, SOUTH_AMERICA_UNDEFINED,
            NOT_SPECIFIED
        };

        public string Code { get; }
        public string Description { get; }
        public string Comment { get; }
        
        protected Country() { }

        public Country(long id, string code, string description, string comment)
            : base(id)
        {
            Code = code;
            Description = description;
            Comment = comment;
        }
        public static Country FromCode(string code)
        {
            return AllCountries.SingleOrDefault(x => x.Code == code);
        }
    }
}
