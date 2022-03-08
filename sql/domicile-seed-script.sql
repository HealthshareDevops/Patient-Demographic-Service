/**
 *  Script to seed domicile codes into Domiciles table
 *  source: https://www.health.govt.nz/nz-health-statistics/data-references/code-tables/common-code-tables/domicile-code-table 
 **/

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'TLA', N'Status', N'YearOfCensus', N'RetiredYear', N'AU13', N'DHB', N'RHAReg') AND [object_id] = OBJECT_ID(N'[Domiciles]'))
    SET IDENTITY_INSERT [Domiciles] ON;

INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1, N'0001', N'Awanui', N'001', N'C', N'1991', N'', N'500100', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2, N'0002', N'Karikari Peninsula-Maungataniwha', N'001', N'C', N'1991', N'', N'500202', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (3, N'0003', N'Taipa Bay - Mangonui', N'001', N'C', N'1991', N'', N'500203', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (4, N'0004', N'Herekino', N'001', N'C', N'1991', N'', N'500204', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (5, N'0005', N'Ahipara', N'001', N'C', N'1991', N'', N'500205', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (6, N'0006', N'North Cape', N'001', N'C', N'1991', N'', N'500206', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (7, N'0007', N'Houhora', N'001', N'C', N'1991', N'', N'500207', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (8, N'0008', N'Motutangi - Kareponia', N'001', N'C', N'1991', N'', N'500208', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (9, N'0009', N'Kaitaia West', N'001', N'C', N'1991', N'', N'500301', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (10, N'0010', N'Kaitaia East', N'001', N'C', N'1991', N'', N'500302', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (11, N'0011', N'Kaeo', N'001', N'C', N'1991', N'', N'500401', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (12, N'0012', N'Mangapai - Matauri Bay', N'001', N'C', N'1991', N'', N'500402', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (13, N'0013', N'Kohukohu', N'001', N'C', N'1991', N'', N'500500', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (14, N'0014', N'Rawene', N'001', N'C', N'1991', N'', N'500600', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (15, N'0015', N'Omapere and Opononi', N'001', N'C', N'1991', N'', N'500700', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (16, N'0016', N'Hokianga North', N'001', N'C', N'1991', N'', N'500801', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (17, N'0017', N'Hokianga South', N'001', N'C', N'1991', N'', N'500802', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (18, N'0018', N'Kerikeri', N'001', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (19, N'0019', N'Russell', N'001', N'C', N'1991', N'', N'501000', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (20, N'0020', N'Paihia', N'001', N'C', N'1991', N'', N'501100', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (21, N'0021', N'Haruru Falls', N'001', N'C', N'1991', N'', N'501200', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (22, N'0022', N'Opua East', N'001', N'C', N'1991', N'', N'501300', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (23, N'0023', N'Kawakawa', N'001', N'C', N'1991', N'', N'501400', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (24, N'0024', N'Moerewa', N'001', N'C', N'1991', N'', N'501500', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (25, N'0025', N'Waitangi - Te Tii', N'001', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (26, N'0026', N'Pokere - Waihaha', N'001', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (27, N'0027', N'Okaihau', N'001', N'C', N'1991', N'', N'501631', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (28, N'0028', N'Ohaeawai', N'001', N'C', N'1991', N'', N'501632', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (29, N'0029', N'Waihou Valley - Hupara', N'001', N'C', N'1991', N'', N'501633', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (30, N'0030', N'Ngapuhi - Kaikou', N'001', N'C', N'1991', N'', N'501634', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (31, N'0031', N'Kaikohe', N'001', N'C', N'1991', N'', N'501700', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (32, N'0032', N'Opouteke - Tanekaha', N'002', N'C', N'1991', N'', N'501802', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (33, N'0033', N'Bream Head', N'002', N'R', N'1991', N'2006', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (34, N'0034', N'Marsden Point - Ruakaka', N'002', N'C', N'1991', N'', N'501806', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (35, N'0035', N'Ngunguru', N'002', N'C', N'1991', N'', N'501807', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (36, N'0036', N'Punaruku - Kiripaka', N'002', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (37, N'0037', N'Wharekohe - Oakleigh', N'002', N'C', N'1991', N'', N'501809', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (38, N'0038', N'Maungatapere', N'002', N'C', N'1991', N'', N'501810', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (39, N'0039', N'Waiotira - Springfield', N'002', N'C', N'1991', N'', N'501811', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (40, N'0040', N'Waipu', N'002', N'R', N'1991', N'2006', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (41, N'0041', N'Springs Flat', N'002', N'C', N'1991', N'', N'502001', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (42, N'0042', N'Three Mile Bush', N'002', N'C', N'1991', N'', N'502002', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (43, N'0043', N'Te Hihi', N'002', N'C', N'1991', N'', N'502003', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (44, N'0044', N'Abbey Caves', N'002', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (45, N'0045', N'Otaika - Portland', N'002', N'C', N'1991', N'', N'502005', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (46, N'0046', N'Kamo West', N'002', N'C', N'1991', N'', N'502101', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (47, N'0047', N'Kamo East', N'002', N'C', N'1991', N'', N'502102', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (48, N'0048', N'Tikipunga West', N'002', N'C', N'1991', N'', N'502201', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (49, N'0049', N'Tikipunga East', N'002', N'C', N'1991', N'', N'502202', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (50, N'0050', N'Whau Valley', N'002', N'C', N'1991', N'', N'502300', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (51, N'0051', N'Otangarei', N'002', N'C', N'1991', N'', N'502400', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (52, N'0052', N'Western Hills', N'002', N'C', N'1991', N'', N'502500', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (53, N'0053', N'Kensington', N'002', N'C', N'1991', N'', N'502600', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (54, N'0054', N'Mairtown', N'002', N'C', N'1991', N'', N'502700', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (55, N'0055', N'Regent', N'002', N'C', N'1991', N'', N'502800', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (56, N'0056', N'Woodhill', N'002', N'C', N'1991', N'', N'502900', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (57, N'0057', N'Vinetown', N'002', N'C', N'1991', N'', N'503000', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (58, N'0058', N'Whangarei Central', N'002', N'C', N'1991', N'', N'503100', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (59, N'0059', N'Riverside', N'002', N'C', N'1991', N'', N'503200', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (60, N'0060', N'Horahora', N'002', N'C', N'1991', N'', N'503300', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (61, N'0061', N'Maunu', N'002', N'C', N'1991', N'', N'503400', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (62, N'0062', N'Raumanga East', N'002', N'C', N'1991', N'', N'503500', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (63, N'0063', N'Morningside', N'002', N'C', N'1991', N'', N'503600', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (64, N'0064', N'Parahaki', N'002', N'C', N'1991', N'', N'503700', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (65, N'0065', N'Raumanga West', N'002', N'C', N'1991', N'', N'503800', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (66, N'0066', N'Port - Limeburners', N'002', N'C', N'1991', N'', N'503900', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (67, N'0067', N'Sherwood Rise', N'002', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (68, N'0068', N'Onerahi', N'002', N'C', N'1991', N'', N'504100', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (69, N'0069', N'Hikurangi', N'002', N'C', N'1991', N'', N'504300', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (70, N'0070', N'Te Kopuru', N'003', N'C', N'1991', N'', N'504400', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (71, N'0071', N'Kaipara Coastal', N'003', N'C', N'1991', N'', N'504501', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (72, N'0072', N'Maungaru', N'003', N'C', N'1991', N'', N'504502', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (73, N'0073', N'Dargaville', N'003', N'C', N'1991', N'', N'504600', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (74, N'0074', N'Maungaturoto', N'003', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (75, N'0075', N'Ruawai', N'003', N'C', N'1991', N'', N'504800', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (76, N'0076', N'Kaiwaka', N'003', N'C', N'1991', N'', N'504900', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (77, N'0077', N'Rehia - Oneriri', N'003', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (78, N'0078', N'Mangawhai', N'003', N'R', N'1991', N'2001', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (79, N'0079', N'Wellsford', N'004', N'C', N'1991', N'', N'505300', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (80, N'0080', N'Leigh', N'004', N'C', N'1991', N'', N'505400', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (81, N'0081', N'Warkworth', N'004', N'C', N'1991', N'', N'505500', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (82, N'0082', N'Kumeu', N'004', N'R', N'1991', N'1996', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (83, N'0083', N'Waipareira West', N'004', N'C', N'1991', N'', N'505700', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (84, N'0084', N'Orewa', N'004', N'R', N'1991', N'1996', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (85, N'0085', N'Red Beach', N'004', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (86, N'0086', N'Stanmore Bay', N'004', N'R', N'1991', N'2006', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (87, N'0087', N'Manly', N'004', N'C', N'1991', N'', N'505902', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (88, N'0088', N'Army Bay', N'004', N'R', N'1991', N'2001', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (89, N'0089', N'Silverdale South', N'004', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (90, N'0090', N'Silverdale North', N'004', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (91, N'0091', N'Dairy Flat - Redvale', N'004', N'C', N'1991', N'', N'506300', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (92, N'0092', N'Paremoremo West', N'004', N'C', N'1991', N'', N'506400', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (93, N'0093', N'Cape Rodney', N'004', N'R', N'1991', N'1996', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (94, N'0094', N'Tauhoa - Puhoi', N'004', N'C', N'1991', N'', N'506613', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (95, N'0095', N'Tahekeroa', N'004', N'C', N'1991', N'', N'506614', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (96, N'0096', N'Kawau', N'004', N'C', N'1991', N'', N'506620', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (97, N'0097', N'Snells Beach', N'004', N'C', N'1991', N'', N'506631', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (98, N'0098', N'Algies Bay - Mahurangi', N'004', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (99, N'0099', N'Parakai', N'004', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (100, N'0100', N'Kerikeri', N'001', N'C', N'1996', N'', N'500900', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (101, N'0101', N'Waitangi -TeTii', N'001', N'R', N'1991', N'2006', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (102, N'0102', N'Opua West', N'001', N'C', N'1996', N'', N'501612', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (103, N'0103', N'Bay of Islands', N'001', N'C', N'1996', N'', N'501613', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (104, N'0105', N'Pokere - Waihaha', N'001', N'C', N'1996', N'', N'501620', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (105, N'0106', N'Whangaruru Harbour', N'002', N'C', N'1996', N'', N'501813', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (106, N'0107', N'Punaruku - Kiripaka', N'002', N'C', N'1996', N'', N'501814', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (107, N'0108', N'Abbey Caves', N'002', N'C', N'1996', N'', N'502004', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (108, N'0109', N'Sherwood Rise', N'002', N'C', N'1996', N'', N'504000', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (109, N'0110', N'Maungaturoto', N'003', N'C', N'1996', N'', N'504700', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (110, N'0111', N'Rehia-Oneriri', N'003', N'C', N'1996', N'', N'505010', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (111, N'0112', N'Kumeu', N'004', N'R', N'1996', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (112, N'0113', N'Wairewa', N'004', N'C', N'1996', N'', N'505803', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (113, N'0114', N'Hatfields Beach', N'004', N'C', N'1996', N'', N'505804', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (114, N'0115', N'Orewa', N'004', N'C', N'1996', N'', N'505805', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (115, N'0116', N'Cape Rodney', N'004', N'R', N'1996', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (116, N'0117', N'Matheson Bay', N'004', N'C', N'1996', N'', N'506616', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (117, N'0118', N'Mangawhai', N'003', N'C', N'2001', N'', N'505021', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (118, N'0119', N'Mangawhai Heads', N'003', N'C', N'2001', N'', N'505022', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (119, N'0120', N'Army Bay', N'004', N'C', N'2001', N'', N'505904', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (120, N'0121', N'Gulf Harbour', N'004', N'R', N'2001', N'2006', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (121, N'0122', N'Kapiro', N'001', N'C', N'2006', N'', N'501614', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (122, N'0123', N'Waitangi', N'001', N'C', N'2006', N'', N'501615', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (123, N'0124', N'Bream Bay', N'002', N'C', N'2006', N'', N'501815', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (124, N'0125', N'Waipu', N'002', N'C', N'2006', N'', N'501816', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (125, N'0126', N'Pataua-Whareora', N'002', N'C', N'2006', N'', N'501817', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (126, N'0127', N'Parua Bay', N'002', N'C', N'2006', N'', N'501818', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (127, N'0128', N'Bream Head', N'002', N'C', N'2006', N'', N'501819', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (128, N'0129', N'Vipond', N'004', N'C', N'2006', N'', N'505906', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (129, N'0130', N'Stanmore Bay West', N'004', N'C', N'2006', N'', N'505907', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (130, N'0131', N'Stanmore Bay East', N'004', N'C', N'2006', N'', N'505908', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (131, N'0132', N'Wade Heads', N'004', N'C', N'2006', N'', N'505909', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (132, N'0133', N'Gulf Harbour', N'004', N'C', N'2006', N'', N'505910', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (133, N'0134', N'Gulf Harbour Marina', N'004', N'C', N'2006', N'', N'505911', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (134, N'0135', N'Waimauku', N'004', N'C', N'2013', N'', N'505601', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (135, N'0136', N'Huapai', N'004', N'C', N'2013', N'', N'505602', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (136, N'0137', N'Riverhead Urban', N'004', N'C', N'2013', N'', N'505603', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (137, N'0138', N'Kumeu East', N'004', N'C', N'2013', N'', N'505604', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (138, N'0139', N'Kumeu West', N'004', N'C', N'2013', N'', N'505605', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (139, N'0140', N'Silverdale Central', N'004', N'C', N'2013', N'', N'505806', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (140, N'0141', N'Red Beach West', N'004', N'C', N'2013', N'', N'505807', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (141, N'0142', N'Red Beach East', N'004', N'C', N'2013', N'', N'505808', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (142, N'0143', N'Weiti River', N'004', N'C', N'2013', N'', N'506001', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (143, N'0144', N'Stillwater', N'004', N'C', N'2013', N'', N'506002', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (144, N'0145', N'Silverdale South', N'004', N'C', N'2013', N'', N'506003', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (145, N'0146', N'Silverdale North', N'004', N'C', N'2013', N'', N'506201', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (146, N'0147', N'Orewa West', N'004', N'C', N'2013', N'', N'506202', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (147, N'0148', N'Algies Bay', N'004', N'C', N'2013', N'', N'506633', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (148, N'0149', N'Mahurangi', N'004', N'C', N'2013', N'', N'506634', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (149, N'0150', N'Parakai Rural', N'004', N'C', N'2013', N'', N'506644', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (150, N'0151', N'Parakai Urban', N'004', N'C', N'2013', N'', N'506645', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (151, N'0152', N'Point Wells', N'004', N'C', N'2013', N'', N'506657', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (152, N'0153', N'Omaha', N'004', N'C', N'2013', N'', N'506658', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (153, N'0154', N'Matakana', N'004', N'C', N'2013', N'', N'506659', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (154, N'0155', N'Cape Rodney', N'004', N'C', N'2013', N'', N'506660', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (155, N'0156', N'Cape Rodney South', N'004', N'C', N'2013', N'', N'506661', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (156, N'0200', N'South Head', N'004', N'C', N'1991', N'', N'506642', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (157, N'0201', N'Kaukapakapa', N'004', N'R', N'1991', N'1996', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (158, N'0202', N'Muriwai Beach', N'004', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (159, N'0203', N'Rewiti', N'004', N'C', N'1991', N'', N'506652', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (160, N'0204', N'Riverhead', N'004', N'C', N'1991', N'', N'506653', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (161, N'0205', N'Helensville', N'004', N'R', N'1991', N'1996', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (162, N'0206', N'Awaruku', N'005', N'C', N'1991', N'', N'506901', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (163, N'0207', N'Glamorgan', N'005', N'C', N'1991', N'', N'506902', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (164, N'0208', N'Torbay', N'005', N'C', N'1991', N'', N'506903', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (165, N'0209', N'Waiake', N'005', N'C', N'1991', N'', N'507000', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (166, N'0210', N'Browns Bay', N'005', N'C', N'1991', N'', N'507101', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (167, N'0211', N'Oaktree', N'005', N'C', N'1991', N'', N'507102', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (168, N'0212', N'Rothesay Bay', N'005', N'C', N'1991', N'', N'507200', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (169, N'0213', N'Murrays Bay', N'005', N'C', N'1991', N'', N'507300', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (170, N'0214', N'Mairangi Bay', N'005', N'C', N'1991', N'', N'507400', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (171, N'0215', N'Campbells Bay', N'005', N'C', N'1991', N'', N'507500', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (172, N'0216', N'Castor Bay', N'005', N'C', N'1991', N'', N'507710', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (173, N'0217', N'Crown Hill', N'005', N'C', N'1991', N'', N'507720', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (174, N'0218', N'Lake Pupuke', N'005', N'C', N'1991', N'', N'507800', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (175, N'0219', N'Westlake', N'005', N'C', N'1991', N'', N'507900', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (176, N'0220', N'Takapuna Central', N'005', N'C', N'1991', N'', N'508010', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (177, N'0221', N'Hauraki', N'005', N'C', N'1991', N'', N'508020', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (178, N'0222', N'Seacliffe', N'005', N'C', N'1991', N'', N'508110', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (179, N'0223', N'Bayswater', N'005', N'C', N'1991', N'', N'508120', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (180, N'0224', N'Kaipatiki', N'005', N'C', N'1991', N'', N'508210', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (181, N'0225', N'Windy Ridge', N'005', N'C', N'1991', N'', N'508220', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (182, N'0226', N'Glenfield Central', N'005', N'C', N'1991', N'', N'508310', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (183, N'0227', N'Glenfield North', N'005', N'C', N'1991', N'', N'508320', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (184, N'0228', N'Glendhu', N'005', N'C', N'1991', N'', N'508411', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (185, N'0229', N'Witheford', N'005', N'C', N'1991', N'', N'508412', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (186, N'0230', N'Target Road', N'005', N'C', N'1991', N'', N'508420', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (187, N'0231', N'Forrest Hill', N'005', N'C', N'1991', N'', N'508510', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (188, N'0232', N'Sunnynook', N'005', N'C', N'1991', N'', N'508520', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (189, N'0233', N'Monarch Park', N'005', N'C', N'1991', N'', N'508610', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (190, N'0234', N'Sunnybrae', N'005', N'C', N'1991', N'', N'508620', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (191, N'0235', N'Albany North', N'005', N'R', N'1991', N'2001', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (192, N'0236', N'Albany South', N'005', N'R', N'1991', N'2001', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (193, N'0237', N'Long Bay', N'005', N'C', N'1991', N'', N'508900', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (194, N'0238', N'Paremoremo East', N'005', N'C', N'1991', N'', N'509000', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (195, N'0239', N'Greenhithe', N'005', N'C', N'1991', N'', N'509100', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (196, N'0240', N'Narrow Neck', N'005', N'C', N'1991', N'', N'509300', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (197, N'0241', N'Mt Victoria', N'005', N'C', N'1991', N'', N'509400', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (198, N'0242', N'Stanley Bay', N'005', N'C', N'1991', N'', N'509500', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (199, N'0243', N'Ocean View', N'005', N'C', N'1991', N'', N'509701', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (200, N'0244', N'Tuff Crater', N'005', N'C', N'1991', N'', N'509702', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (201, N'0245', N'Northcote South', N'005', N'C', N'1991', N'', N'509800', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (202, N'0246', N'Beachhaven North', N'005', N'C', N'1991', N'', N'510010', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (203, N'0247', N'Beachhaven South', N'005', N'C', N'1991', N'', N'510020', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (204, N'0248', N'Birkdale North', N'005', N'C', N'1991', N'', N'510210', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (205, N'0249', N'Birkdale South', N'005', N'C', N'1991', N'', N'510220', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (206, N'0250', N'Kauri Park', N'005', N'C', N'1991', N'', N'510401', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (207, N'0251', N'Chelsea', N'005', N'C', N'1991', N'', N'510402', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (208, N'0252', N'Birkenhead East', N'005', N'C', N'1991', N'', N'510500', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (209, N'0253', N'Henderson North', N'006', N'C', N'1991', N'', N'510700', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (210, N'0254', N'Henderson South', N'006', N'C', N'1991', N'', N'510800', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (211, N'0255', N'Tangutu', N'006', N'C', N'1991', N'', N'511001', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (212, N'0256', N'Woodglen', N'006', N'C', N'1991', N'', N'511002', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (213, N'0257', N'Glen Eden East', N'006', N'C', N'1991', N'', N'511100', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (214, N'0258', N'New Lynn North', N'006', N'R', N'1991', N'2006', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (215, N'0259', N'Fruitvale', N'006', N'C', N'1991', N'', N'511401', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (216, N'0260', N'Rewarewa', N'006', N'C', N'1991', N'', N'511402', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (217, N'0261', N'Glendene North', N'006', N'C', N'1991', N'', N'511601', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (218, N'0262', N'Glendene South', N'006', N'C', N'1991', N'', N'511602', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (219, N'0263', N'Kelston Central', N'006', N'C', N'1991', N'', N'511700', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (220, N'0264', N'Sunnyvale', N'006', N'C', N'1991', N'', N'511800', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (221, N'0265', N'Kaurilands', N'006', N'C', N'1991', N'', N'511901', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (222, N'0266', N'Crum Park', N'006', N'C', N'1991', N'', N'511902', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (223, N'0267', N'Titirangi South', N'006', N'C', N'1991', N'', N'512000', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (224, N'0268', N'Green Bay', N'006', N'C', N'1991', N'', N'512100', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (225, N'0269', N'Matipo', N'006', N'C', N'1991', N'', N'512201', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (226, N'0270', N'Durham Green', N'006', N'C', N'1991', N'', N'512202', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (227, N'0271', N'Te Atatu Central', N'006', N'C', N'1991', N'', N'512300', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (228, N'0272', N'Edmonton', N'006', N'C', N'1991', N'', N'512401', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (229, N'0273', N'Wakeling', N'006', N'C', N'1991', N'', N'512402', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (230, N'0274', N'McLeod', N'006', N'C', N'1991', N'', N'512500', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (231, N'0275', N'Konini', N'006', N'C', N'1991', N'', N'512600', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (232, N'0276', N'Waima', N'006', N'C', N'1991', N'', N'512700', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (233, N'0277', N'Laingholm', N'006', N'C', N'1991', N'', N'512801', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (234, N'0278', N'Armour Bay', N'006', N'C', N'1991', N'', N'512802', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (235, N'0279', N'Parrs Park', N'006', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (236, N'0280', N'Otimai', N'006', N'C', N'1991', N'', N'512902', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (237, N'0281', N'Sturges South', N'006', N'R', N'1991', N'2006', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (238, N'0282', N'Opanuku', N'006', N'C', N'1991', N'', N'513020', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (239, N'0283', N'Swanson', N'006', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (240, N'0284', N'Ranui North', N'006', N'R', N'1991', N'2006', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (241, N'0285', N'Sturges North', N'006', N'C', N'1991', N'', N'513220', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (242, N'0286', N'Kingdale', N'006', N'C', N'1991', N'', N'513301', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (243, N'0287', N'Fairdene', N'006', N'C', N'1991', N'', N'513302', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (244, N'0288', N'Whenuapai West', N'006', N'R', N'1991', N'1996', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (245, N'0289', N'Herald', N'006', N'C', N'1991', N'', N'513420', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (246, N'0290', N'Hobsonville', N'006', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (247, N'0291', N'Royal Road West', N'006', N'R', N'1991', N'2001', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (248, N'0292', N'West Harbour', N'006', N'C', N'1991', N'', N'513521', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (249, N'0293', N'Lucken Point', N'006', N'C', N'1991', N'', N'513522', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (250, N'0294', N'Royal Heights', N'006', N'C', N'1991', N'', N'513530', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (251, N'0295', N'West Massey', N'006', N'C', N'1991', N'', N'513610', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (252, N'0296', N'Birdwood', N'006', N'R', N'1991', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (253, N'0297', N'Waimumu North', N'006', N'C', N'1991', N'', N'513631', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (254, N'0298', N'Waimumu South', N'006', N'C', N'1991', N'', N'513632', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (255, N'0299', N'Taupaki', N'004', N'C', N'1991', N'', N'513701', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (256, N'0300', N'Kaukapakapa', N'004', N'R', N'1996', N'2013', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (257, N'0301', N'Helensville', N'004', N'C', N'1996', N'', N'506800', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (258, N'0302', N'Whenuapai West', N'006', N'C', N'1996', N'', N'513410', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (259, N'0303', N'Albany', N'005', N'C', N'2001', N'', N'508701', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (260, N'0304', N'Northcross', N'005', N'R', N'2001', N'2006', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (261, N'0305', N'North Harbour', N'005', N'R', N'2001', N'2006', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (262, N'0306', N'Pinehill', N'005', N'R', N'2001', N'2006', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (263, N'0307', N'Unsworth Heights', N'005', N'C', N'2001', N'', N'508803', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (264, N'0308', N'Westgate', N'006', N'C', N'2001', N'', N'513511', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (265, N'0309', N'Royal Road West', N'006', N'C', N'2001', N'', N'513512', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (266, N'0310', N'Fairview', N'005', N'C', N'2006', N'', N'508703', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (267, N'0311', N'Northcross', N'005', N'C', N'2006', N'', N'508704', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (268, N'0312', N'Pinehill', N'005', N'C', N'2006', N'', N'508804', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (269, N'0313', N'Windsor Park', N'005', N'C', N'2006', N'', N'508805', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (270, N'0314', N'North Harbour West', N'005', N'C', N'2006', N'', N'508806', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (271, N'0315', N'North Harbour East', N'005', N'C', N'2006', N'', N'508807', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (272, N'0316', N'New Lynn North', N'006', N'C', N'2006', N'', N'511301', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (273, N'0317', N'New Lynn South', N'006', N'C', N'2006', N'', N'511302', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (274, N'0318', N'Lynnmall', N'006', N'C', N'2006', N'', N'511303', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (275, N'0319', N'Henderson West', N'006', N'C', N'2006', N'', N'513011', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (276, N'0320', N'Palm Heights', N'006', N'C', N'2006', N'', N'513012', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (277, N'0321', N'McLaren Park', N'006', N'C', N'2006', N'', N'513013', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (278, N'0322', N'Urlich', N'006', N'C', N'2006', N'', N'513211', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (279, N'0323', N'Starling Park', N'006', N'C', N'2006', N'', N'513212', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (280, N'0324', N'Ranui Domain', N'006', N'C', N'2006', N'', N'513213', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (281, N'0325', N'Ranui South', N'006', N'C', N'2006', N'', N'513214', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (282, N'0326', N'Kaukapakapa Rural', N'004', N'C', N'2013', N'', N'506646', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (283, N'0327', N'Kaukapakapa', N'004', N'C', N'2013', N'', N'506647', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (284, N'0328', N'Helensville South', N'004', N'C', N'2013', N'', N'506648', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (285, N'0329', N'Muriwai Beach', N'004', N'C', N'2013', N'', N'506654', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (286, N'0330', N'Muriwai Valley', N'004', N'C', N'2013', N'', N'506655', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (287, N'0331', N'Waitakere West', N'004', N'C', N'2013', N'', N'506656', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (288, N'0332', N'Parrs Park West', N'006', N'C', N'2013', N'', N'512903', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (289, N'0333', N'Parrs Park', N'006', N'C', N'2013', N'', N'512904', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (290, N'0334', N'Oratia West', N'006', N'C', N'2013', N'', N'512905', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (291, N'0335', N'Oratia', N'006', N'C', N'2013', N'', N'512906', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (292, N'0336', N'Swanson', N'006', N'C', N'2013', N'', N'513101', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (293, N'0337', N'Swanson South', N'006', N'C', N'2013', N'', N'513102', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (294, N'0338', N'Hobsonville East', N'006', N'C', N'2013', N'', N'513431', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (295, N'0339', N'Hobsonville South', N'006', N'C', N'2013', N'', N'513432', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (296, N'0340', N'Birdwood West', N'006', N'C', N'2013', N'', N'513621', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (297, N'0341', N'Birdwood East', N'006', N'C', N'2013', N'', N'513622', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (298, N'0400', N'Waitakere', N'006', N'C', N'1991', N'', N'513702', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (299, N'0401', N'Karekare', N'006', N'C', N'1991', N'', N'513800', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (300, N'0402', N'Freemans Bay', N'007', N'C', N'1991', N'', N'514000', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (301, N'0403', N'Auckland Central', N'007', N'R', N'1991', N'2001', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (302, N'0404', N'Newton', N'007', N'C', N'1991', N'', N'514200', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (303, N'0405', N'Grafton', N'007', N'R', N'1991', N'2001', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (304, N'0406', N'Roberton', N'007', N'C', N'1991', N'', N'514401', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (305, N'0407', N'Glenavon', N'007', N'C', N'1991', N'', N'514402', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (306, N'0408', N'New Windsor', N'007', N'C', N'1991', N'', N'514500', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (307, N'0409', N'Avondale South', N'007', N'C', N'1991', N'', N'514600', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (308, N'0410', N'Blockhouse Bay', N'007', N'C', N'1991', N'', N'514700', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (309, N'0411', N'Rosebank', N'007', N'C', N'1991', N'', N'514801', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (310, N'0412', N'Avondale West', N'007', N'C', N'1991', N'', N'514802', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (311, N'0413', N'Waterview', N'007', N'C', N'1991', N'', N'514900', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (312, N'0414', N'Point Chevalier West', N'007', N'C', N'1991', N'', N'515001', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (313, N'0415', N'Point Chevalier East', N'007', N'C', N'1991', N'', N'515002', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (314, N'0416', N'Point Chevalier South', N'007', N'C', N'1991', N'', N'515003', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (315, N'0417', N'Westmere', N'007', N'C', N'1991', N'', N'515100', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (316, N'0418', N'Herne Bay', N'007', N'C', N'1991', N'', N'515201', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (317, N'0419', N'St Marys', N'007', N'C', N'1991', N'', N'515202', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (318, N'0420', N'Ponsonby West', N'007', N'C', N'1991', N'', N'515301', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (319, N'0421', N'Ponsonby East', N'007', N'C', N'1991', N'', N'515302', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (320, N'0422', N'Grey Lynn West', N'007', N'C', N'1991', N'', N'515410', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (321, N'0423', N'Grey Lynn East', N'007', N'C', N'1991', N'', N'515420', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (322, N'0424', N'Surrey Crescent', N'007', N'R', N'1991', N'1996', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (323, N'0425', N'Arch Hill', N'007', N'C', N'1991', N'', N'515500', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (324, N'0426', N'Eden Terrace', N'007', N'R', N'1991', N'1996', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (325, N'0427', N'Epsom North', N'007', N'C', N'1991', N'', N'515700', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (326, N'0428', N'Epsom Central', N'007', N'C', N'1991', N'', N'515801', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (327, N'0429', N'Epsom South', N'007', N'C', N'1991', N'', N'515802', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (328, N'0430', N'Parnell East', N'007', N'C', N'1991', N'', N'515901', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (329, N'0431', N'Parnell West', N'007', N'C', N'1991', N'', N'515902', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (330, N'0432', N'Mt Hobson', N'007', N'C', N'1991', N'', N'516001', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (331, N'0433', N'Remuera South', N'007', N'C', N'1991', N'', N'516002', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (332, N'0434', N'Abbotts Park', N'007', N'C', N'1991', N'', N'516003', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (333, N'0435', N'Remuera West', N'007', N'C', N'1991', N'', N'516101', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (334, N'0436', N'Waitaramoa', N'007', N'C', N'1991', N'', N'516102', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (335, N'0437', N'Orakei South', N'007', N'C', N'1991', N'', N'516201', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (336, N'0438', N'Waiata', N'007', N'C', N'1991', N'', N'516202', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (337, N'0439', N'Meadowbank North', N'007', N'C', N'1991', N'', N'516301', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (338, N'0440', N'Meadowbank South', N'007', N'C', N'1991', N'', N'516302', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (339, N'0441', N'Orakei North', N'007', N'C', N'1991', N'', N'516400', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (340, N'0442', N'Mission Bay', N'007', N'C', N'1991', N'', N'516500', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (341, N'0443', N'Kohimarama West', N'007', N'C', N'1991', N'', N'516601', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (342, N'0444', N'Kohimarama East', N'007', N'C', N'1991', N'', N'516602', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (343, N'0445', N'St Heliers', N'007', N'C', N'1991', N'', N'516700', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (344, N'0446', N'Glendowie', N'007', N'C', N'1991', N'', N'516800', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (345, N'0447', N'Glen Innes North', N'007', N'C', N'1991', N'', N'516900', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (346, N'0448', N'Glen Innes West', N'007', N'C', N'1991', N'', N'517001', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (347, N'0449', N'Glen Innes East', N'007', N'C', N'1991', N'', N'517002', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (348, N'0450', N'Point England', N'007', N'C', N'1991', N'', N'517100', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (349, N'0451', N'St Johns', N'007', N'R', N'1991', N'2013', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (350, N'0452', N'Newmarket', N'007', N'C', N'1991', N'', N'517400', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (351, N'0453', N'Kingsland', N'007', N'C', N'1991', N'', N'517500', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (352, N'0454', N'St Lukes', N'007', N'C', N'1991', N'', N'517600', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (353, N'0455', N'Sandringham North', N'007', N'C', N'1991', N'', N'517701', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (354, N'0456', N'Sandringham West', N'007', N'C', N'1991', N'', N'517702', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (355, N'0457', N'Sandringham East', N'007', N'C', N'1991', N'', N'517703', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (356, N'0458', N'Mt Albert Central', N'007', N'C', N'1991', N'', N'517800', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (357, N'0459', N'Springleigh', N'007', N'C', N'1991', N'', N'517901', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (358, N'0460', N'Owairaka West', N'007', N'C', N'1991', N'', N'517902', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (359, N'0461', N'Owairaka East', N'007', N'C', N'1991', N'', N'517903', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (360, N'0462', N'Mt Eden North', N'007', N'R', N'1991', N'1996', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (361, N'0463', N'Sherbourne', N'007', N'C', N'1991', N'', N'518102', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (362, N'0464', N'Balmoral', N'007', N'C', N'1991', N'', N'518201', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (363, N'0465', N'Mt Eden East', N'007', N'C', N'1991', N'', N'518202', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (364, N'0466', N'Maungawhau', N'007', N'C', N'1991', N'', N'518301', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (365, N'0467', N'Mt Eden South', N'007', N'C', N'1991', N'', N'518302', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (366, N'0468', N'Three Kings', N'007', N'C', N'1991', N'', N'518500', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (367, N'0469', N'Royal Oak', N'007', N'C', N'1991', N'', N'518600', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (368, N'0470', N'Hillsborough West', N'007', N'C', N'1991', N'', N'518701', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (369, N'0471', N'Hillsborough East', N'007', N'C', N'1991', N'', N'518702', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (370, N'0472', N'Walmsley', N'007', N'C', N'1991', N'', N'518801', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (371, N'0473', N'Wesley', N'007', N'C', N'1991', N'', N'518802', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (372, N'0474', N'Akarana', N'007', N'C', N'1991', N'', N'518803', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (373, N'0475', N'Lynfield North', N'007', N'C', N'1991', N'', N'518901', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (374, N'0476', N'Lynfield South', N'007', N'C', N'1991', N'', N'518902', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (375, N'0477', N'Waikowhai West', N'007', N'C', N'1991', N'', N'519001', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (376, N'0478', N'Waikowhai East', N'007', N'C', N'1991', N'', N'519002', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (377, N'0479', N'Mt St John', N'007', N'C', N'1991', N'', N'519200', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (378, N'0480', N'One Tree Hill Central', N'007', N'C', N'1991', N'', N'519300', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (379, N'0481', N'One Tree Hill East', N'007', N'C', N'1991', N'', N'519400', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (380, N'0482', N'Penrose', N'007', N'C', N'1991', N'', N'519500', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (381, N'0483', N'Onehunga North West', N'007', N'C', N'1991', N'', N'519710', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (382, N'0484', N'Onehunga North East', N'007', N'C', N'1991', N'', N'519720', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (383, N'0485', N'Onehunga South West', N'007', N'C', N'1991', N'', N'519810', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (384, N'0486', N'Onehunga South East', N'007', N'C', N'1991', N'', N'519820', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (385, N'0487', N'Oranga', N'007', N'C', N'1991', N'', N'519900', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (386, N'0488', N'Te Papapa', N'007', N'C', N'1991', N'', N'520000', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (387, N'0489', N'Ellerslie North', N'007', N'C', N'1991', N'', N'520201', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (388, N'0490', N'Ellerslie South', N'007', N'C', N'1991', N'', N'520202', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (389, N'0491', N'Mt Wellington North', N'007', N'R', N'1991', N'2013', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (390, N'0492', N'Ferndale', N'007', N'C', N'1991', N'', N'520401', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (391, N'0493', N'Hamlin', N'007', N'C', N'1991', N'', N'520402', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (392, N'0494', N'Mt Wellington South', N'007', N'C', N'1991', N'', N'520500', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (393, N'0495', N'Tamaki', N'007', N'C', N'1991', N'', N'520601', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (394, N'0496', N'Panmure Basin', N'007', N'C', N'1991', N'', N'520602', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (395, N'0497', N'Waiheke Island', N'007', N'C', N'1991', N'', N'520801', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (396, N'0498', N'Bays - Waiheke Island', N'999', N'R', N'1991', N'2006', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (397, N'0499', N'Islands - Motutapu Rangitoto Rakino', N'007', N'C', N'1991', N'', N'520900', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (398, N'0500', N'Surrey Crescent', N'007', N'C', N'1996', N'', N'515431', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (399, N'0501', N'St Lukes North', N'007', N'C', N'1996', N'', N'515432', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (400, N'0502', N'Eden Terrace', N'007', N'C', N'1996', N'', N'515600', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (401, N'0503', N'Mt Eden North', N'007', N'C', N'1996', N'', N'518101', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (402, N'0504', N'Auckland Harbourside', N'007', N'C', N'2001', N'', N'514101', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (403, N'0505', N'Auckland Central West', N'007', N'C', N'2001', N'', N'514102', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (404, N'0506', N'Auckland Central East', N'007', N'C', N'2001', N'', N'514103', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (405, N'0507', N'Grafton West', N'007', N'C', N'2001', N'', N'514301', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (406, N'0508', N'Grafton East', N'007', N'C', N'2001', N'', N'514302', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (407, N'0509', N'Bays-Waiheke Island', N'999', N'C', N'2006', N'', N'520803', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (408, N'0510', N'Tidal-Waiheke Island', N'999', N'C', N'2006', N'', N'520804', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (409, N'0511', N'St Johns', N'007', N'C', N'2013', N'', N'517201', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (410, N'0512', N'Stonefields', N'007', N'C', N'2013', N'', N'517202', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (411, N'0513', N'Mt Wellington Domain', N'007', N'C', N'2013', N'', N'520301', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (412, N'0514', N'Mt Wellington West', N'007', N'C', N'2013', N'', N'520302', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (413, N'0515', N'Mt Wellington North', N'007', N'C', N'2013', N'', N'520303', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (414, N'0600', N'Great Barrier Island', N'007', N'C', N'1991', N'', N'521000', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (415, N'0601', N'Paerata - Cape Hill', N'010', N'C', N'1991', N'', N'521111', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (416, N'0602', N'Eden Road - Hill Top', N'010', N'C', N'1991', N'', N'521112', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (417, N'0603', N'Buckland', N'010', N'R', N'1991', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (418, N'0604', N'Redoubt', N'010', N'C', N'1991', N'', N'521114', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (419, N'0605', N'Opuawhanga', N'010', N'C', N'1991', N'', N'521115', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (420, N'0606', N'Patumahoe', N'010', N'C', N'1991', N'', N'521121', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (421, N'0607', N'Kingseat', N'010', N'C', N'1991', N'', N'521122', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (422, N'0608', N'Pokeno', N'010', N'C', N'1991', N'', N'521131', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (423, N'0609', N'Hunua', N'010', N'C', N'1991', N'', N'521132', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (424, N'0610', N'Mangatawhiri', N'010', N'R', N'1991', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (425, N'0611', N'Awhitu', N'010', N'C', N'1991', N'', N'521151', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (426, N'0612', N'Glenbrook', N'010', N'C', N'1991', N'', N'521152', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (427, N'0613', N'Otaua', N'010', N'C', N'1991', N'', N'521153', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (428, N'0614', N'Bombay', N'010', N'C', N'1991', N'', N'521160', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (429, N'0615', N'Hingaia', N'009', N'C', N'1991', N'', N'521201', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (430, N'0616', N'Whangapouri Creek', N'010', N'C', N'1991', N'', N'521202', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (431, N'0617', N'Bremner', N'009', N'C', N'1991', N'', N'521203', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (432, N'0618', N'Drury', N'009', N'C', N'1991', N'', N'521301', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (433, N'0619', N'Runciman', N'010', N'C', N'1991', N'', N'521302', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (434, N'0620', N'Mellons Bay', N'008', N'C', N'1991', N'', N'521501', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (435, N'0621', N'Cockle Bay', N'008', N'R', N'1991', N'1996', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (436, N'0622', N'Howick West', N'008', N'C', N'1991', N'', N'521601', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (437, N'0623', N'Howick Central', N'008', N'C', N'1991', N'', N'521602', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (438, N'0624', N'Otahuhu East', N'007', N'R', N'1991', N'2006', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (439, N'0625', N'Otahuhu West', N'007', N'C', N'1991', N'', N'521901', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (440, N'0626', N'Middlemore', N'008', N'C', N'1991', N'', N'521902', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (441, N'0627', N'Papatoetoe West', N'008', N'C', N'1991', N'', N'522100', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (442, N'0628', N'Papatoetoe North', N'008', N'C', N'1991', N'', N'522201', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (443, N'0629', N'Papatoetoe Central', N'008', N'C', N'1991', N'', N'522202', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (444, N'0630', N'Dingwall', N'008', N'C', N'1991', N'', N'522301', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (445, N'0631', N'Papatoetoe East', N'008', N'C', N'1991', N'', N'522302', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (446, N'0632', N'Puhinui', N'008', N'C', N'1991', N'', N'522400', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (447, N'0633', N'Bucklands and Eastern Beaches', N'008', N'C', N'1991', N'', N'522601', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (448, N'0634', N'Bucklands Beach South', N'008', N'R', N'1991', N'2006', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (449, N'0635', N'Bleakhouse', N'008', N'C', N'1991', N'', N'522603', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (450, N'0636', N'Pigeon Mountain North', N'008', N'C', N'1991', N'', N'522711', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (451, N'0637', N'Murvale', N'008', N'C', N'1991', N'', N'522712', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (452, N'0638', N'Pigeon Mountain South', N'008', N'C', N'1991', N'', N'522721', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (453, N'0639', N'Aberfeldy', N'008', N'C', N'1991', N'', N'522722', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (454, N'0640', N'Elsmore Park', N'008', N'C', N'1991', N'', N'522723', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (455, N'0641', N'Halfmoon Bay', N'008', N'C', N'1991', N'', N'522730', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (456, N'0642', N'Pakuranga North', N'008', N'C', N'1991', N'', N'522810', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (457, N'0643', N'Sunnyhills', N'008', N'C', N'1991', N'', N'522820', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (458, N'0644', N'Pakuranga Central', N'008', N'C', N'1991', N'', N'522910', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (459, N'0645', N'Edgewater', N'008', N'C', N'1991', N'', N'522920', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (460, N'0646', N'Pakuranga East', N'008', N'C', N'1991', N'', N'523000', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (461, N'0647', N'Botany Downs', N'008', N'C', N'1991', N'', N'523101', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (462, N'0648', N'Maungamaungaroa', N'008', N'R', N'1991', N'1996', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (463, N'0649', N'Cascades', N'008', N'R', N'1991', N'2001', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (464, N'0650', N'East Tamaki', N'008', N'R', N'1991', N'2001', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (465, N'0651', N'Shelly Park', N'008', N'C', N'1991', N'', N'523201', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (466, N'0652', N'Turanga', N'008', N'C', N'1991', N'', N'523202', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (467, N'0653', N'Beachlands - Maraetai', N'008', N'C', N'1991', N'', N'523300', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (468, N'0654', N'Grange', N'008', N'R', N'1991', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (469, N'0655', N'Otara West', N'008', N'C', N'1991', N'', N'523402', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (470, N'0656', N'Otara North', N'008', N'C', N'1991', N'', N'523501', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (471, N'0657', N'Otara East', N'008', N'C', N'1991', N'', N'523502', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (472, N'0658', N'Otara South', N'008', N'C', N'1991', N'', N'523601', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (473, N'0659', N'Ferguson', N'008', N'C', N'1991', N'', N'523602', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (474, N'0660', N'Flat Bush', N'008', N'R', N'1991', N'2001', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (475, N'0661', N'Clover Park', N'008', N'C', N'1991', N'', N'523721', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (476, N'0662', N'Redoubt North', N'008', N'C', N'1991', N'', N'523722', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (477, N'0663', N'Wairere', N'008', N'R', N'1991', N'2001', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (478, N'0664', N'Randwick Park', N'008', N'R', N'1991', N'2001', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (479, N'0665', N'Ardmore', N'008', N'C', N'1991', N'', N'523813', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (480, N'0666', N'Redoubt South', N'008', N'C', N'1991', N'', N'523820', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (481, N'0667', N'Takanini East', N'009', N'R', N'1991', N'2001', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (482, N'0668', N'Takanini West', N'009', N'C', N'1991', N'', N'523920', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (483, N'0669', N'Ambury', N'008', N'C', N'1991', N'', N'524001', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (484, N'0670', N'Mangere Bridge', N'008', N'C', N'1991', N'', N'524002', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (485, N'0671', N'Mangere Central', N'008', N'C', N'1991', N'', N'524111', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (486, N'0672', N'Mascot', N'008', N'C', N'1991', N'', N'524112', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (487, N'0673', N'Arahanga', N'008', N'C', N'1991', N'', N'524121', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (488, N'0674', N'Viscount', N'008', N'C', N'1991', N'', N'524122', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (489, N'0675', N'Mangere South', N'008', N'C', N'1991', N'', N'524200', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (490, N'0676', N'Mangere East', N'008', N'C', N'1991', N'', N'524301', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (491, N'0677', N'Aorere', N'008', N'C', N'1991', N'', N'524302', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (492, N'0678', N'Kohuora', N'008', N'C', N'1991', N'', N'524303', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (493, N'0679', N'Favona', N'008', N'R', N'1991', N'2006', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (494, N'0680', N'Mangere Station', N'008', N'C', N'1991', N'', N'524402', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (495, N'0681', N'Harania North', N'008', N'C', N'1991', N'', N'524510', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (496, N'0682', N'Harania West', N'008', N'C', N'1991', N'', N'524520', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (497, N'0683', N'Harania East', N'008', N'C', N'1991', N'', N'524530', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (498, N'0684', N'Manukau Central', N'008', N'R', N'1991', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (499, N'0685', N'Wiri', N'008', N'C', N'1991', N'', N'524602', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (500, N'0686', N'Burbank', N'008', N'C', N'1991', N'', N'524711', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (501, N'0687', N'Homai West', N'008', N'C', N'1991', N'', N'524712', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (502, N'0688', N'Rowandale', N'008', N'C', N'1991', N'', N'524713', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (503, N'0689', N'Homai East', N'008', N'C', N'1991', N'', N'524720', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (504, N'0690', N'Weymouth', N'008', N'R', N'1991', N'2006', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (505, N'0691', N'Clendon', N'008', N'R', N'1991', N'2006', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (506, N'0692', N'Hillpark', N'008', N'C', N'1991', N'', N'524901', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (507, N'0693', N'Manurewa East', N'008', N'C', N'1991', N'', N'524902', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (508, N'0694', N'Manurewa Central', N'008', N'C', N'1991', N'', N'525001', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (509, N'0695', N'Beaumont', N'008', N'C', N'1991', N'', N'525002', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (510, N'0696', N'Leabank', N'008', N'C', N'1991', N'', N'525101', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (511, N'0697', N'Wattle Farm', N'008', N'C', N'1991', N'', N'525102', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (512, N'0698', N'Clevedon', N'008', N'R', N'1991', N'2006', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (513, N'0699', N'Papakura Central', N'009', N'C', N'1991', N'', N'525410', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (514, N'0700', N'Cockle Bay', N'008', N'C', N'1996', N'', N'521502', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (515, N'0701', N'Maungamaungaroa', N'008', N'C', N'1996', N'', N'523102', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (516, N'0702', N'Golfland', N'008', N'C', N'2001', N'', N'523105', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (517, N'0703', N'Millhouse', N'008', N'C', N'2001', N'', N'523106', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (518, N'0704', N'Burswood', N'008', N'C', N'2001', N'', N'523107', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (519, N'0705', N'East Tamaki', N'008', N'R', N'2001', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (520, N'0706', N'Dannemora', N'008', N'C', N'2001', N'', N'523109', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (521, N'0707', N'Kilkenny', N'008', N'C', N'2001', N'', N'523110', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (522, N'0708', N'Point View', N'008', N'R', N'2001', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (523, N'0709', N'Ormiston', N'008', N'C', N'2001', N'', N'523713', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (524, N'0710', N'Wairere', N'008', N'R', N'2001', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (525, N'0711', N'Flat Bush', N'008', N'C', N'2001', N'', N'523711', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (526, N'0712', N'Donegal Park', N'008', N'C', N'2001', N'', N'523712', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (527, N'0713', N'Totara Heights', N'008', N'C', N'2001', N'', N'523814', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (528, N'0714', N'Randwick Park', N'008', N'C', N'2001', N'', N'523816', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (529, N'0715', N'Hyperion', N'008', N'C', N'2001', N'', N'523817', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (530, N'0716', N'Takanini North', N'009', N'C', N'2001', N'', N'523911', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (531, N'0717', N'Takanini South', N'009', N'C', N'2001', N'', N'523912', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (532, N'0718', N'Otahuhu North', N'007', N'C', N'2006', N'', N'521801', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (533, N'0719', N'Fairburn', N'007', N'C', N'2006', N'', N'521802', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (534, N'0720', N'Otahuhu East', N'007', N'C', N'2006', N'', N'521803', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (535, N'0721', N'Bucklands Beach South', N'008', N'C', N'2006', N'', N'522604', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (536, N'0722', N'Half Moon Bay Marina', N'008', N'C', N'2006', N'', N'522605', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (537, N'0723', N'Favona West', N'008', N'C', N'2006', N'', N'524403', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (538, N'0724', N'Favona North', N'008', N'C', N'2006', N'', N'524404', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (539, N'0725', N'Favona South', N'008', N'C', N'2006', N'', N'524405', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (540, N'0726', N'Weymouth West', N'008', N'C', N'2006', N'', N'524811', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (541, N'0727', N'Weymouth East', N'008', N'C', N'2006', N'', N'524812', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (542, N'0728', N'Clendon North', N'008', N'C', N'2006', N'', N'524821', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (543, N'0729', N'Clendon South', N'008', N'C', N'2006', N'', N'524822', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (544, N'0730', N'Clevedon', N'008', N'C', N'2006', N'', N'525201', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (545, N'0731', N'Kawakawa-Orere', N'008', N'C', N'2006', N'', N'525202', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (546, N'0732', N'Buckland', N'010', N'C', N'2013', N'', N'521116', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (547, N'0733', N'Buckland South', N'010', N'C', N'2013', N'', N'521117', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (548, N'0734', N'Paparata', N'010', N'C', N'2013', N'', N'521134', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (549, N'0735', N'Mangatawhiri', N'010', N'C', N'2013', N'', N'521135', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (550, N'0736', N'Kaiaua', N'010', N'C', N'2013', N'', N'521136', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (551, N'0737', N'Highbrook', N'008', N'C', N'2013', N'', N'523112', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (552, N'0738', N'Greenmount', N'008', N'C', N'2013', N'', N'523113', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (553, N'0739', N'Point View', N'008', N'C', N'2013', N'', N'523114', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (554, N'0740', N'Baverstock Oaks', N'008', N'C', N'2013', N'', N'523115', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (555, N'0741', N'Mission Heights', N'008', N'C', N'2013', N'', N'523116', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (556, N'0742', N'Wymondley', N'008', N'C', N'2013', N'', N'523403', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (557, N'0743', N'Grange', N'008', N'C', N'2013', N'', N'523404', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (558, N'0744', N'Redoubt East', N'008', N'C', N'2013', N'', N'523818', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (559, N'0745', N'Mill Road', N'008', N'C', N'2013', N'', N'523819', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (560, N'0746', N'Puhinui South', N'008', N'C', N'2013', N'', N'524603', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (561, N'0747', N'Manukau Central', N'008', N'C', N'2013', N'', N'524604', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (562, N'0800', N'Papakura North', N'009', N'C', N'1991', N'', N'525420', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (563, N'0801', N'Papakura South', N'009', N'C', N'1991', N'', N'525510', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (564, N'0802', N'Opaheke', N'009', N'C', N'1991', N'', N'525520', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (565, N'0803', N'Rosehill', N'009', N'C', N'1991', N'', N'525530', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (566, N'0804', N'Pahurehure', N'009', N'C', N'1991', N'', N'525540', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (567, N'0805', N'Papakura East', N'009', N'C', N'1991', N'', N'525610', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (568, N'0806', N'Massey Park', N'009', N'C', N'1991', N'', N'525620', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (569, N'0807', N'North East Papakura', N'009', N'C', N'1991', N'', N'525630', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (570, N'0808', N'Red Hill', N'009', N'C', N'1991', N'', N'525700', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (571, N'0809', N'Pukekohe North', N'010', N'C', N'1991', N'', N'525910', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (572, N'0810', N'Pukekohe West', N'010', N'C', N'1991', N'', N'525921', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (573, N'0811', N'Bledisloe Park', N'010', N'C', N'1991', N'', N'525922', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (574, N'0812', N'Waiuku', N'010', N'R', N'1991', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (575, N'0813', N'South Waiuku', N'010', N'R', N'1991', N'2013', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (576, N'0814', N'Tuakau', N'010', N'C', N'1991', N'', N'526200', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (577, N'0815', N'Rotowaro', N'013', N'C', N'1991', N'', N'526400', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (578, N'0816', N'Raglan', N'013', N'C', N'1991', N'', N'526500', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (579, N'0817', N'Glen Massey', N'013', N'C', N'1991', N'', N'526601', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (580, N'0818', N'Te Uku', N'013', N'C', N'1991', N'', N'526602', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (581, N'0819', N'Te Pahu', N'017', N'C', N'1991', N'', N'526603', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (582, N'0820', N'Onewhero', N'010', N'C', N'1991', N'', N'526701', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (583, N'0821', N'Te Akau', N'013', N'C', N'1991', N'', N'526702', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (584, N'0822', N'Te Kauwhata', N'013', N'C', N'1991', N'', N'526900', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (585, N'0823', N'Rototuna', N'016', N'R', N'1991', N'2001', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (586, N'0824', N'Sylvester', N'016', N'R', N'1991', N'2001', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (587, N'0825', N'Matangi', N'013', N'C', N'1991', N'', N'527004', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (588, N'0826', N'Whitikahu', N'013', N'C', N'1991', N'', N'527111', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (589, N'0827', N'Taupiri Community', N'013', N'C', N'1991', N'', N'527112', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (590, N'0828', N'Eureka', N'013', N'R', N'1991', N'2013', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (591, N'0829', N'Gordonton', N'013', N'C', N'1991', N'', N'527122', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (592, N'0830', N'Kainui', N'013', N'C', N'1991', N'', N'527123', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (593, N'0831', N'Tamahere - Tauwhare', N'013', N'C', N'1991', N'', N'527131', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (594, N'0832', N'Hautapu', N'017', N'R', N'1991', N'2013', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (595, N'0833', N'Waerenga', N'013', N'C', N'1991', N'', N'527210', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (596, N'0834', N'Maramarua', N'013', N'C', N'1991', N'', N'527221', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (597, N'0835', N'Meremere', N'013', N'C', N'1991', N'', N'527222', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (598, N'0836', N'Huntly West', N'013', N'C', N'1991', N'', N'527401', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (599, N'0837', N'Huntly East', N'013', N'C', N'1991', N'', N'527402', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (600, N'0838', N'Cambridge North', N'017', N'C', N'1991', N'', N'527501', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (601, N'0839', N'Cambridge West', N'017', N'C', N'1991', N'', N'527502', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (602, N'0840', N'Cambridge Central', N'017', N'C', N'1991', N'', N'527503', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (603, N'0841', N'Leamington West', N'017', N'C', N'1991', N'', N'527504', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (604, N'0842', N'Leamington East', N'017', N'C', N'1991', N'', N'527505', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (605, N'0843', N'Ohaupo', N'017', N'C', N'1991', N'', N'527600', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (606, N'0844', N'Kihikihi', N'017', N'C', N'1991', N'', N'527700', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (607, N'0845', N'Peacocke', N'016', N'C', N'1991', N'', N'527810', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (608, N'0846', N'Temple View', N'017', N'C', N'1991', N'', N'527820', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (609, N'0847', N'Horotiu', N'013', N'R', N'1991', N'2013', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (610, N'0848', N'Te Kowhai', N'013', N'C', N'1991', N'', N'527912', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (611, N'0849', N'Whatawhata', N'013', N'C', N'1991', N'', N'527913', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (612, N'0850', N'Ngahinapouri', N'017', N'C', N'1991', N'', N'527914', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (613, N'0851', N'Lake Cameron', N'017', N'C', N'1991', N'', N'527915', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (614, N'0852', N'Te Rore', N'017', N'C', N'1991', N'', N'527921', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (615, N'0853', N'Pirongia', N'017', N'C', N'1991', N'', N'527922', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (616, N'0854', N'Pokuru', N'017', N'C', N'1991', N'', N'527923', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (617, N'0855', N'Lake Ngaroto', N'017', N'C', N'1991', N'', N'527924', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (618, N'0856', N'Tokanui', N'017', N'C', N'1991', N'', N'527925', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (619, N'0857', N'Pukerimu', N'017', N'C', N'1991', N'', N'527931', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (620, N'0858', N'Kaipaki', N'017', N'C', N'1991', N'', N'527932', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (621, N'0859', N'Rotoorangi', N'017', N'C', N'1991', N'', N'527934', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (622, N'0860', N'Te Rahu', N'017', N'C', N'1991', N'', N'527935', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (623, N'0861', N'Kihikihi Flat', N'017', N'C', N'1991', N'', N'527936', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (624, N'0862', N'Allen Road', N'017', N'C', N'1991', N'', N'527937', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (625, N'0863', N'Rotongata', N'017', N'C', N'1991', N'', N'528000', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (626, N'0864', N'Ngaruawahia', N'013', N'C', N'1991', N'', N'528200', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (627, N'0865', N'Bryant', N'016', N'C', N'1991', N'', N'528310', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (628, N'0866', N'Pukete', N'016', N'C', N'1991', N'', N'528320', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (629, N'0867', N'Pukete West', N'016', N'C', N'1991', N'', N'528402', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (630, N'0868', N'Te Rapa', N'016', N'C', N'1991', N'', N'528403', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (631, N'0869', N'Burbush', N'016', N'R', N'1991', N'2001', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (632, N'0870', N'Nawton', N'016', N'C', N'1991', N'', N'528501', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (633, N'0871', N'Brymer', N'016', N'R', N'1991', N'2006', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (634, N'0872', N'Dinsdale North', N'016', N'C', N'1991', N'', N'528601', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (635, N'0873', N'Dinsdale South', N'016', N'C', N'1991', N'', N'528602', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (636, N'0874', N'Beerescourt', N'016', N'C', N'1991', N'', N'528700', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (637, N'0875', N'Maeroa', N'016', N'C', N'1991', N'', N'528800', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (638, N'0876', N'Frankton Junction', N'016', N'C', N'1991', N'', N'528900', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (639, N'0877', N'Swarbrick', N'016', N'C', N'1991', N'', N'529000', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (640, N'0878', N'Hamilton Lake', N'016', N'C', N'1991', N'', N'529100', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (641, N'0879', N'Melville', N'016', N'C', N'1991', N'', N'529200', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (642, N'0880', N'Glenview', N'016', N'C', N'1991', N'', N'529300', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (643, N'0881', N'Queenwood', N'016', N'C', N'1991', N'', N'529401', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (644, N'0882', N'Chedworth', N'016', N'C', N'1991', N'', N'529402', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (645, N'0883', N'Porritt', N'016', N'C', N'1991', N'', N'529501', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (646, N'0884', N'Insoll', N'016', N'C', N'1991', N'', N'529502', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (647, N'0885', N'Fairview Downs', N'016', N'C', N'1991', N'', N'529503', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (648, N'0886', N'Chartwell', N'016', N'C', N'1991', N'', N'529600', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (649, N'0887', N'Hamilton Central', N'016', N'C', N'1991', N'', N'529700', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (650, N'0888', N'Clarkin', N'016', N'C', N'1991', N'', N'529800', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (651, N'0889', N'Claudelands', N'016', N'C', N'1991', N'', N'529900', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (652, N'0890', N'Enderley', N'016', N'C', N'1991', N'', N'530000', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (653, N'0891', N'Peachgrove', N'016', N'C', N'1991', N'', N'530100', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (654, N'0892', N'Hamilton East', N'016', N'C', N'1991', N'', N'530200', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (655, N'0893', N'Naylor', N'016', N'C', N'1991', N'', N'530300', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (656, N'0894', N'Bader', N'016', N'C', N'1991', N'', N'530400', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (657, N'0895', N'University', N'016', N'C', N'1991', N'', N'530500', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (658, N'0896', N'Silverdale', N'016', N'C', N'1991', N'', N'530600', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (659, N'0897', N'Hillcrest West', N'016', N'C', N'1991', N'', N'530700', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (660, N'0898', N'Riverlea', N'016', N'C', N'1991', N'', N'530800', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (661, N'0899', N'Te Awamutu West', N'017', N'C', N'1991', N'', N'531001', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (662, N'0900', N'Horsham Downs', N'016', N'C', N'2001', N'', N'527007', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (663, N'0901', N'Rototuna', N'016', N'C', N'2001', N'', N'527008', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (664, N'0902', N'Huntington', N'016', N'C', N'2001', N'', N'527009', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (665, N'0903', N'Sylvester', N'016', N'C', N'2001', N'', N'527005', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (666, N'0904', N'Flagstaff', N'016', N'C', N'2001', N'', N'527006', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (667, N'0905', N'Burbush', N'016', N'C', N'2001', N'', N'528405', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (668, N'0906', N'Rotokauri', N'016', N'C', N'2001', N'', N'528406', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (669, N'0907', N'Crawshaw', N'016', N'C', N'2006', N'', N'528503', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (670, N'0908', N'Grandview', N'016', N'C', N'2006', N'', N'528504', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (671, N'0909', N'Brymer', N'016', N'C', N'2006', N'', N'528505', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (672, N'0910', N'Waiuku West', N'010', N'C', N'2013', N'', N'526103', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (673, N'0911', N'Waiuku East', N'010', N'C', N'2013', N'', N'526104', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (674, N'0912', N'South Waiuku', N'010', N'C', N'2013', N'', N'526105', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (675, N'0913', N'Pukeoware', N'010', N'C', N'2013', N'', N'526106', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (676, N'0914', N'Newstead', N'013', N'C', N'2013', N'', N'527124', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (677, N'0915', N'Eureka', N'013', N'C', N'2013', N'', N'527125', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (678, N'0916', N'Hautapu', N'017', N'C', N'2013', N'', N'527133', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (679, N'0917', N'Swayne', N'017', N'C', N'2013', N'', N'527134', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (680, N'0918', N'Horotiu', N'013', N'C', N'2013', N'', N'527916', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (681, N'0919', N'Te Rapa North', N'013', N'C', N'2013', N'', N'527917', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (682, N'1000', N'Te Awamutu Central', N'017', N'C', N'1991', N'', N'531002', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (683, N'1001', N'Te Awamutu East', N'017', N'C', N'1991', N'', N'531003', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (684, N'1002', N'Te Awamutu South', N'017', N'C', N'1991', N'', N'531004', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (685, N'1003', N'Kawhia Community', N'018', N'C', N'1991', N'', N'531100', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (686, N'1004', N'Otorohanga', N'018', N'C', N'1991', N'', N'531200', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (687, N'1005', N'Otorohanga Rural West', N'018', N'C', N'1991', N'', N'531301', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (688, N'1006', N'Maihiihi', N'018', N'R', N'1991', N'1996', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (689, N'1007', N'Piopio Community', N'020', N'C', N'1991', N'', N'531500', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (690, N'1008', N'Taharoa', N'020', N'C', N'1991', N'', N'531600', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (691, N'1009', N'Mahoenui', N'020', N'C', N'1991', N'', N'531710', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (692, N'1010', N'Marokopa', N'020', N'C', N'1991', N'', N'531720', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (693, N'1011', N'Waipa Valley', N'020', N'C', N'1991', N'', N'531731', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (694, N'1012', N'Tiroa', N'020', N'C', N'1991', N'', N'531732', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (695, N'1013', N'Mokauiti', N'020', N'C', N'1991', N'', N'531800', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (696, N'1014', N'Te Kuiti', N'020', N'C', N'1991', N'', N'532000', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (697, N'1015', N'Omori', N'021', N'C', N'1991', N'', N'532200', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (698, N'1016', N'Owhango', N'036', N'C', N'1991', N'', N'532300', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (699, N'1017', N'Ohura', N'036', N'C', N'1991', N'', N'532400', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (700, N'1018', N'Ngapuke', N'036', N'C', N'1991', N'', N'532501', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (701, N'1019', N'Kuratau', N'021', N'C', N'1991', N'', N'532502', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (702, N'1020', N'Raurimu', N'036', N'C', N'1991', N'', N'532601', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (703, N'1021', N'National Park', N'036', N'C', N'1991', N'', N'532602', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (704, N'1022', N'Otangiwai - Heao', N'036', N'C', N'1991', N'', N'532700', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (705, N'1023', N'Tarrangower', N'036', N'C', N'1991', N'', N'532901', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (706, N'1024', N'Taumarunui Central', N'036', N'C', N'1991', N'', N'532902', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (707, N'1025', N'Sunshine - Hospital Hill', N'036', N'C', N'1991', N'', N'532903', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (708, N'1026', N'Manunui', N'036', N'C', N'1991', N'', N'532904', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (709, N'1027', N'Whitianga', N'011', N'C', N'1991', N'', N'533000', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (710, N'1028', N'Coromandel', N'011', N'C', N'1991', N'', N'533100', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (711, N'1029', N'Te Rerenga', N'011', N'C', N'1991', N'', N'533200', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (712, N'1030', N'Whangamata', N'011', N'C', N'1991', N'', N'533300', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (713, N'1031', N'Tairua', N'011', N'C', N'1991', N'', N'533400', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (714, N'1032', N'Moanataiari', N'011', N'C', N'1991', N'', N'533501', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (715, N'1033', N'Parawai', N'011', N'C', N'1991', N'', N'533502', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (716, N'1034', N'Pauanui Beach', N'011', N'C', N'1991', N'', N'533602', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (717, N'1035', N'Hikuai', N'011', N'C', N'1991', N'', N'533603', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (718, N'1036', N'Te Puru - Thornton Bay', N'011', N'C', N'1991', N'', N'533604', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (719, N'1037', N'Ngatea', N'012', N'C', N'1991', N'', N'533800', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (720, N'1038', N'Hauraki Plains', N'012', N'C', N'1991', N'', N'533901', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (721, N'1039', N'Turua', N'012', N'C', N'1991', N'', N'533902', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (722, N'1040', N'Kerepehi', N'012', N'C', N'1991', N'', N'533903', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (723, N'1041', N'Waihi Beach', N'022', N'C', N'1991', N'', N'534100', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (724, N'1042', N'Golden Cross', N'012', N'R', N'1991', N'1996', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (725, N'1043', N'Paeroa', N'012', N'C', N'1991', N'', N'534300', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (726, N'1044', N'Waihi', N'012', N'R', N'1991', N'1996', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (727, N'1045', N'Tahuroa', N'015', N'R', N'1991', N'1996', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (728, N'1046', N'Ngarua', N'015', N'R', N'1991', N'1996', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (729, N'1047', N'Waitoa', N'015', N'C', N'1991', N'', N'534602', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (730, N'1048', N'Te Aroha', N'015', N'R', N'1991', N'1996', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (731, N'1049', N'Morrinsville', N'015', N'R', N'1991', N'1996', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (732, N'1050', N'Waharoa', N'015', N'C', N'1991', N'', N'535000', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (733, N'1051', N'Tirau', N'019', N'C', N'1991', N'', N'535100', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (734, N'1052', N'Mangakaretu', N'019', N'C', N'1991', N'', N'535211', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (735, N'1053', N'Kinleith', N'019', N'C', N'1991', N'', N'535212', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (736, N'1054', N'Okauia', N'015', N'C', N'1991', N'', N'535220', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (737, N'1055', N'Te Poi', N'015', N'C', N'1991', N'', N'535231', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (738, N'1056', N'Tapapa', N'019', N'C', N'1991', N'', N'535232', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (739, N'1057', N'Karapiro', N'017', N'C', N'1991', N'', N'535241', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (740, N'1058', N'Hinuera', N'015', N'C', N'1991', N'', N'535242', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (741, N'1059', N'Arapuni', N'019', N'C', N'1991', N'', N'535250', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (742, N'1060', N'Lichfield', N'019', N'C', N'1991', N'', N'535261', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (743, N'1061', N'Wawa', N'019', N'C', N'1991', N'', N'535262', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (744, N'1062', N'Paraonui', N'019', N'C', N'1991', N'', N'535310', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (745, N'1063', N'Parkdale', N'019', N'C', N'1991', N'', N'535320', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (746, N'1064', N'Matarawa', N'019', N'C', N'1991', N'', N'535330', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (747, N'1065', N'Stanley Park', N'019', N'C', N'1991', N'', N'535340', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (748, N'1066', N'Tokoroa Central', N'019', N'C', N'1991', N'', N'535350', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (749, N'1067', N'Aotea', N'019', N'C', N'1991', N'', N'535360', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (750, N'1068', N'Strathmore', N'019', N'C', N'1991', N'', N'535370', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (751, N'1069', N'Amisfield', N'019', N'C', N'1991', N'', N'535380', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (752, N'1070', N'Matamata', N'015', N'R', N'1991', N'2006', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (753, N'1071', N'Putaruru', N'019', N'C', N'1991', N'', N'535600', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (754, N'1072', N'Athenree', N'022', N'C', N'1991', N'', N'535700', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (755, N'1073', N'Katikati Community', N'022', N'C', N'1991', N'', N'535800', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (756, N'1074', N'Maketu Community', N'022', N'C', N'1991', N'', N'535900', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (757, N'1075', N'Omokoroa', N'022', N'C', N'1991', N'', N'536000', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (758, N'1076', N'Papamoa Beach East', N'023', N'R', N'1991', N'2006', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (759, N'1077', N'Island View - Pios Beach', N'022', N'C', N'1991', N'', N'536400', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (760, N'1078', N'Papamoa Beach West', N'023', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (761, N'1079', N'Te Puna', N'022', N'C', N'1991', N'', N'536503', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (762, N'1080', N'Bethlehem', N'023', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (763, N'1081', N'Matapihi', N'023', N'C', N'1991', N'', N'536505', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (764, N'1082', N'Inlet - Tauranga Harbour Omokoroa', N'022', N'C', N'1991', N'', N'536506', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (765, N'1083', N'Inlet - Tauranga Harbour', N'023', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (766, N'1084', N'Matakana Island', N'022', N'C', N'1991', N'', N'536611', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (767, N'1085', N'Aongatete', N'022', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (768, N'1086', N'Inlet - Tauranga Harbour North', N'022', N'C', N'1991', N'', N'536613', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (769, N'1087', N'Minden', N'022', N'C', N'1991', N'', N'536620', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (770, N'1088', N'Kaimai', N'022', N'C', N'1991', N'', N'536630', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (771, N'1089', N'Ohauiti - Ngapeke', N'022', N'C', N'1991', N'', N'536641', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (772, N'1090', N'Upper Papamoa', N'022', N'C', N'1991', N'', N'536642', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (773, N'1091', N'Paengaroa', N'022', N'C', N'1991', N'', N'536651', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (774, N'1092', N'Pongakawa', N'022', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (775, N'1093', N'Mt Maunganui North', N'023', N'C', N'1991', N'', N'536810', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (776, N'1094', N'Omanu', N'023', N'R', N'1991', N'2006', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (777, N'1095', N'Arataki', N'023', N'C', N'1991', N'', N'536831', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (778, N'1096', N'Te Maunga', N'023', N'C', N'1991', N'', N'536832', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (779, N'1097', N'Matua', N'023', N'C', N'1991', N'', N'537000', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (780, N'1098', N'Bellevue', N'023', N'C', N'1991', N'', N'537100', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (781, N'1099', N'Otumoetai North', N'023', N'C', N'1991', N'', N'537201', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (782, N'1100', N'Te Kawa', N'018', N'C', N'1996', N'', N'531303', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (783, N'1101', N'Otorohanga Rural East', N'018', N'C', N'1996', N'', N'531304', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (784, N'1102', N'Ohinemuri', N'012', N'C', N'1996', N'', N'534200', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (785, N'1103', N'Waihi', N'012', N'C', N'1996', N'', N'534400', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (786, N'1104', N'Tahuroa', N'015', N'C', N'1996', N'', N'534500', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (787, N'1105', N'Ngarua', N'015', N'R', N'1996', N'2001', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (788, N'1106', N'Te Aroha', N'015', N'C', N'1996', N'', N'534800', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (789, N'1107', N'Morrinsville', N'015', N'R', N'1996', N'2001', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (790, N'1108', N'Inlet - Tauranga Harbour', N'023', N'C', N'1996', N'', N'536508', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (791, N'1109', N'Waikareao Estuary', N'023', N'C', N'1996', N'', N'536509', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (792, N'1110', N'Motuopae Island', N'023', N'C', N'1996', N'', N'536510', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (793, N'1111', N'Papamoa Beach West', N'023', N'R', N'1996', N'2006', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (794, N'1112', N'Kairua', N'023', N'C', N'1996', N'', N'536512', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (795, N'1113', N'Bethlehem East', N'023', N'C', N'1996', N'', N'536513', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (796, N'1114', N'Bethlehem', N'023', N'C', N'1996', N'', N'536514', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (797, N'1115', N'Tahawai', N'022', N'C', N'1996', N'', N'536614', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (798, N'1116', N'Aongatete', N'022', N'C', N'1996', N'', N'536615', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (799, N'1117', N'Rangiuru', N'022', N'C', N'1996', N'', N'536653', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (800, N'1118', N'Pongakawa', N'022', N'C', N'1996', N'', N'536654', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (801, N'1119', N'Morrinsville West', N'015', N'C', N'2001', N'', N'534901', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (802, N'1120', N'Morrinsville East', N'015', N'C', N'2001', N'', N'534902', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (803, N'1121', N'Springdale', N'015', N'C', N'2001', N'', N'534603', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (804, N'1122', N'Waihou-Walton', N'015', N'C', N'2001', N'', N'534604', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (805, N'1123', N'Matamata North', N'015', N'C', N'2006', N'', N'535501', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (806, N'1124', N'Matamata South', N'015', N'C', N'2006', N'', N'535502', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (807, N'1125', N'Papamoa Beach East', N'023', N'C', N'2006', N'', N'536201', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (808, N'1126', N'Palm Springs', N'023', N'C', N'2006', N'', N'536202', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (809, N'1127', N'Doncaster', N'023', N'C', N'2006', N'', N'536203', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (810, N'1128', N'Pacific View', N'023', N'C', N'2006', N'', N'536515', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (811, N'1129', N'Palm Beach', N'023', N'C', N'2006', N'', N'536516', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (812, N'1130', N'Gravatt', N'023', N'C', N'2006', N'', N'536517', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (813, N'1131', N'Omanu', N'023', N'C', N'2006', N'', N'536821', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (814, N'1132', N'Tauranga City-Marinas', N'023', N'C', N'2006', N'', N'536822', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (815, N'1200', N'Otumoetai South', N'023', N'C', N'1991', N'', N'537202', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (816, N'1201', N'Brookfield', N'023', N'C', N'1991', N'', N'537301', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (817, N'1202', N'Te Reti', N'023', N'C', N'1991', N'', N'537302', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (818, N'1203', N'Judea', N'023', N'C', N'1991', N'', N'537400', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (819, N'1204', N'Gate Pa', N'023', N'C', N'1991', N'', N'537500', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (820, N'1205', N'Greerton', N'023', N'R', N'1991', N'2001', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (821, N'1206', N'Yatton Park', N'023', N'C', N'1991', N'', N'537700', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (822, N'1207', N'Poike', N'023', N'C', N'1991', N'', N'537800', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (823, N'1208', N'Hairini', N'023', N'C', N'1991', N'', N'537900', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (824, N'1209', N'Maungatapu', N'023', N'C', N'1991', N'', N'538000', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (825, N'1210', N'Tauranga Hospital', N'023', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (826, N'1211', N'Tauranga South', N'023', N'C', N'1991', N'', N'538102', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (827, N'1212', N'Tauranga Central', N'023', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (828, N'1213', N'Sulphur Point', N'023', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (829, N'1214', N'Welcome Bay', N'023', N'R', N'1991', N'2006', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (830, N'1215', N'Te Puke West', N'022', N'C', N'1991', N'', N'538501', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (831, N'1216', N'Te Puke East', N'022', N'C', N'1991', N'', N'538502', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (832, N'1217', N'Ngongotaha North', N'024', N'C', N'1991', N'', N'538601', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (833, N'1218', N'Ngongotaha South', N'024', N'R', N'1991', N'1996', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (834, N'1219', N'Ngapuna', N'024', N'R', N'1991', N'1996', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (835, N'1220', N'Lynmore', N'024', N'R', N'1991', N'1996', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (836, N'1221', N'Owhata West', N'024', N'C', N'1991', N'', N'538741', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (837, N'1222', N'Owhata East', N'024', N'C', N'1991', N'', N'538742', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (838, N'1223', N'Hamurana', N'024', N'R', N'1991', N'2001', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (839, N'1224', N'Tikitere', N'024', N'C', N'1991', N'', N'538820', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (840, N'1225', N'Kaingaroa Forest', N'024', N'C', N'1991', N'', N'538831', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (841, N'1226', N'Tarawera', N'024', N'R', N'1991', N'1996', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (842, N'1227', N'Golden Springs', N'024', N'R', N'1991', N'1996', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (843, N'1228', N'Reporoa', N'024', N'C', N'1991', N'', N'538842', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (844, N'1229', N'Ngakuru', N'024', N'C', N'1991', N'', N'538850', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (845, N'1230', N'Arahiwi', N'024', N'C', N'1991', N'', N'538861', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (846, N'1231', N'Waiwhero', N'024', N'C', N'1991', N'', N'538863', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (847, N'1232', N'Mamaku', N'024', N'C', N'1991', N'', N'538864', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (848, N'1233', N'Selwyn Heights', N'024', N'C', N'1991', N'', N'539000', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (849, N'1234', N'Western Heights', N'024', N'C', N'1991', N'', N'539100', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (850, N'1235', N'Fairy Springs', N'024', N'R', N'1991', N'1996', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (851, N'1236', N'Pukehangi North', N'024', N'C', N'1991', N'', N'539310', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (852, N'1237', N'Pukehangi South', N'024', N'C', N'1991', N'', N'539320', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (853, N'1238', N'Mangakakahi', N'024', N'C', N'1991', N'', N'539400', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (854, N'1239', N'Sunnybrook', N'024', N'C', N'1991', N'', N'539500', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (855, N'1240', N'Fordlands', N'024', N'C', N'1991', N'', N'539600', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (856, N'1241', N'Utuhina', N'024', N'C', N'1991', N'', N'539700', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (857, N'1242', N'Pomare', N'024', N'C', N'1991', N'', N'539800', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (858, N'1243', N'Hillcrest', N'024', N'C', N'1991', N'', N'539900', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (859, N'1244', N'Springfield', N'024', N'C', N'1991', N'', N'540000', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (860, N'1245', N'Kawaha Point', N'024', N'C', N'1991', N'', N'540100', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (861, N'1246', N'Koutu', N'024', N'C', N'1991', N'', N'540200', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (862, N'1247', N'Ohinemutu', N'024', N'C', N'1991', N'', N'540300', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (863, N'1248', N'Kuirau', N'024', N'C', N'1991', N'', N'540410', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (864, N'1249', N'Victoria', N'024', N'C', N'1991', N'', N'540420', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (865, N'1250', N'Glenholme East', N'024', N'C', N'1991', N'', N'540510', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (866, N'1251', N'Glenholme West', N'024', N'C', N'1991', N'', N'540520', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (867, N'1252', N'Fenton', N'024', N'C', N'1991', N'', N'540600', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (868, N'1253', N'Whaka', N'024', N'C', N'1991', N'', N'540700', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (869, N'1254', N'Mangakino', N'021', N'C', N'1991', N'', N'540900', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (870, N'1255', N'Turangi', N'021', N'C', N'1991', N'', N'541000', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (871, N'1256', N'Acacia Bay', N'021', N'C', N'1991', N'', N'541311', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (872, N'1257', N'Wairakei - Aratiatia', N'021', N'C', N'1991', N'', N'541312', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (873, N'1258', N'Maunganamu', N'021', N'C', N'1991', N'', N'541313', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (874, N'1259', N'Rangatira', N'021', N'R', N'1991', N'2001', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (875, N'1260', N'Taupo East', N'021', N'C', N'1991', N'', N'541315', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (876, N'1261', N'Wharewaka', N'021', N'C', N'1991', N'', N'541316', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (877, N'1262', N'Marotiri', N'021', N'C', N'1991', N'', N'541320', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (878, N'1263', N'Oruanui', N'021', N'R', N'1991', N'2006', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (879, N'1264', N'Rangitaiki', N'021', N'C', N'1991', N'', N'541342', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (880, N'1265', N'Iwitahi', N'021', N'R', N'1991', N'2013', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (881, N'1266', N'Rangipo', N'021', N'C', N'1991', N'', N'541501', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (882, N'1267', N'Te More', N'021', N'C', N'1991', N'', N'541502', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (883, N'1268', N'Taharua', N'021', N'C', N'1991', N'', N'541503', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (884, N'1269', N'Nukuhau', N'021', N'C', N'1991', N'', N'541710', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (885, N'1270', N'Taupo Central', N'021', N'C', N'1991', N'', N'541720', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (886, N'1271', N'Tauhara', N'021', N'C', N'1991', N'', N'541730', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (887, N'1272', N'Hilltop', N'021', N'C', N'1991', N'', N'541740', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (888, N'1273', N'Waipahihi', N'021', N'C', N'1991', N'', N'541750', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (889, N'1274', N'Richmond Heights', N'021', N'C', N'1991', N'', N'541760', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (890, N'1275', N'Ohope', N'025', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (891, N'1276', N'Matata', N'025', N'C', N'1991', N'', N'542000', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (892, N'1277', N'Taneatua', N'025', N'C', N'1991', N'', N'542100', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (893, N'1278', N'Edgecumbe', N'025', N'C', N'1991', N'', N'542200', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (894, N'1279', N'Te Teko', N'025', N'C', N'1991', N'', N'542300', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (895, N'1280', N'Whakatane North', N'025', N'C', N'1991', N'', N'542410', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (896, N'1281', N'Coastlands', N'025', N'C', N'1991', N'', N'542421', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (897, N'1282', N'Whakatane West', N'025', N'C', N'1991', N'', N'542422', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (898, N'1283', N'Trident', N'025', N'C', N'1991', N'', N'542430', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (899, N'1284', N'Allandale - Mokorua', N'025', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (900, N'1285', N'Orini', N'025', N'C', N'1991', N'', N'542511', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (901, N'1286', N'Maraetotara', N'025', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (902, N'1287', N'Poroporo', N'025', N'C', N'1991', N'', N'542520', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (903, N'1288', N'Otakiri', N'025', N'C', N'1991', N'', N'542530', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (904, N'1289', N'Rotoma', N'025', N'C', N'1991', N'', N'542540', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (905, N'1290', N'Matahina - Minginui', N'025', N'C', N'1991', N'', N'542550', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (906, N'1291', N'Waimana', N'025', N'C', N'1991', N'', N'542561', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (907, N'1292', N'Urewera', N'025', N'C', N'1991', N'', N'542562', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (908, N'1293', N'Kawerau', N'026', N'C', N'1991', N'', N'542600', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (909, N'1294', N'Murupara', N'025', N'C', N'1991', N'', N'542700', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (910, N'1295', N'Opotiki', N'027', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (911, N'1296', N'Te Kaha', N'027', N'C', N'1991', N'', N'542901', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (912, N'1297', N'Waiotahi', N'027', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (913, N'1298', N'Cape Runaway', N'027', N'C', N'1991', N'', N'542903', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (914, N'1299', N'Oponae', N'027', N'C', N'1991', N'', N'542904', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (915, N'1300', N'Tauranga Hospital', N'023', N'C', N'1996', N'', N'538101', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (916, N'1302', N'Tauranga Central', N'023', N'C', N'1996', N'', N'538201', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (917, N'1303', N'Sulphur Point', N'023', N'C', N'1996', N'', N'538202', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (918, N'1304', N'Ngongotaha South', N'024', N'C', N'1996', N'', N'538602', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (919, N'1305', N'Poets Corner', N'024', N'C', N'1996', N'', N'538721', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (920, N'1306', N'Ngapuna', N'024', N'C', N'1996', N'', N'538722', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (921, N'1307', N'Owhata South', N'024', N'C', N'1996', N'', N'538731', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (922, N'1308', N'Lynmore', N'024', N'C', N'1996', N'', N'538732', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (923, N'1309', N'Tarawera', N'024', N'C', N'1996', N'', N'538832', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (924, N'1310', N'Golden Springs', N'024', N'C', N'1996', N'', N'538841', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (925, N'1311', N'Fairy Springs', N'024', N'C', N'1996', N'', N'539200', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (926, N'1312', N'Ohope', N'025', N'C', N'1996', N'', N'541900', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (927, N'1313', N'Allandale - Mokorua', N'025', N'C', N'1996', N'', N'542440', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (928, N'1314', N'Inlet-Ohiwa Harbour West', N'025', N'C', N'1996', N'', N'542513', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (929, N'1315', N'Maraetotara', N'025', N'C', N'1996', N'', N'542514', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (930, N'1316', N'Opotiki', N'027', N'C', N'1996', N'', N'542800', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (931, N'1317', N'Inlet-Ohiwa Harbour East', N'027', N'C', N'1996', N'', N'542905', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (932, N'1318', N'Waiotahi', N'027', N'C', N'1996', N'', N'542906', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (933, N'1319', N'Greerton', N'023', N'C', N'2001', N'', N'537601', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (934, N'1320', N'Pyes Pa', N'023', N'C', N'2001', N'', N'537602', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (935, N'1321', N'Hamurana', N'024', N'C', N'2001', N'', N'538811', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (936, N'1322', N'Inland Water-Lake Rotorua', N'024', N'C', N'2001', N'', N'538812', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (937, N'1323', N'Rangatira Park', N'021', N'C', N'2001', N'', N'541317', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (938, N'1324', N'Rangatira', N'021', N'C', N'2001', N'', N'541318', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (939, N'1325', N'Lakewood', N'021', N'C', N'2001', N'', N'541319', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (940, N'1326', N'Kaitemako', N'023', N'C', N'2006', N'', N'538301', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (941, N'1327', N'Welcome Bay West', N'023', N'C', N'2006', N'', N'538302', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (942, N'1328', N'Welcome Bay East', N'023', N'C', N'2006', N'', N'538303', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (943, N'1329', N'Oruanui', N'021', N'R', N'2006', N'2013', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (944, N'1330', N'Kinloch', N'021', N'C', N'2006', N'', N'541333', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (945, N'1331', N'Tatua', N'021', N'C', N'2013', N'', N'541334', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (946, N'1332', N'Oruanui', N'021', N'C', N'2013', N'', N'541335', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (947, N'1333', N'Broadlands', N'021', N'C', N'2013', N'', N'541344', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (948, N'1334', N'Waitahanui', N'021', N'C', N'2013', N'', N'541345', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (949, N'1335', N'Tongariro', N'021', N'C', N'2013', N'', N'541346', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (950, N'1336', N'Motuoapa', N'021', N'C', N'2013', N'', N'541347', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (951, N'1337', N'Tokaanu', N'021', N'C', N'2013', N'', N'541348', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (952, N'1400', N'East Cape', N'028', N'C', N'1991', N'', N'543301', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (953, N'1401', N'Ruatoria', N'028', N'C', N'1991', N'', N'543302', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (954, N'1402', N'Tokomaru Bay', N'028', N'C', N'1991', N'', N'543303', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (955, N'1403', N'Tarndale - Rakauroa', N'028', N'C', N'1991', N'', N'543601', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (956, N'1404', N'Te Karaka', N'028', N'C', N'1991', N'', N'543602', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (957, N'1405', N'Patutahi', N'028', N'C', N'1991', N'', N'543800', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (958, N'1406', N'Makaraka', N'028', N'C', N'1991', N'', N'543901', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (959, N'1407', N'Matokitoki', N'028', N'C', N'1991', N'', N'543902', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (960, N'1408', N'Wainui', N'028', N'C', N'1991', N'', N'543903', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (961, N'1409', N'Wharekaka', N'028', N'C', N'1991', N'', N'544001', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (962, N'1410', N'Tiniroto', N'028', N'C', N'1991', N'', N'544002', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (963, N'1411', N'Manutuke', N'028', N'C', N'1991', N'', N'544003', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (964, N'1412', N'Tolaga Bay', N'028', N'C', N'1991', N'', N'544004', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (965, N'1413', N'Mangapapa', N'028', N'C', N'1991', N'', N'544200', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (966, N'1414', N'Te Hapara', N'028', N'C', N'1991', N'', N'544300', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (967, N'1415', N'Gisborne Airport', N'028', N'C', N'1991', N'', N'544400', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (968, N'1416', N'Whataupoko', N'028', N'C', N'1991', N'', N'544500', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (969, N'1417', N'Gisborne Central', N'028', N'C', N'1991', N'', N'544600', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (970, N'1418', N'Kaiti North', N'028', N'R', N'1991', N'2001', N'', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (971, N'1419', N'Kaiti South', N'028', N'C', N'1991', N'', N'544801', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (972, N'1420', N'Tamarau', N'028', N'C', N'1991', N'', N'544802', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (973, N'1421', N'Riverdale', N'028', N'C', N'1991', N'', N'544900', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (974, N'1422', N'Tuai', N'029', N'C', N'1991', N'', N'545201', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (975, N'1423', N'Frasertown', N'029', N'C', N'1991', N'', N'545202', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (976, N'1424', N'Maungataniwha', N'029', N'R', N'1991', N'2001', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (977, N'1425', N'Ruakituri - Morere', N'029', N'C', N'1991', N'', N'545204', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (978, N'1426', N'Raupunga', N'029', N'C', N'1991', N'', N'545301', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (979, N'1427', N'Whakaki', N'029', N'C', N'1991', N'', N'545302', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (980, N'1428', N'Nuhaka', N'029', N'C', N'1991', N'', N'545303', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (981, N'1429', N'Mahia', N'029', N'C', N'1991', N'', N'545304', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (982, N'1430', N'Wairoa', N'029', N'C', N'1991', N'', N'545500', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (983, N'1431', N'Bay View', N'031', N'C', N'1991', N'', N'545611', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (984, N'1432', N'Poraiti', N'031', N'C', N'1991', N'', N'545621', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (985, N'1433', N'Meeanee', N'031', N'C', N'1991', N'', N'545631', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (986, N'1434', N'Awatoto', N'031', N'C', N'1991', N'', N'545632', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (987, N'1435', N'Twyford', N'030', N'R', N'1991', N'1996', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (988, N'1436', N'Karamu', N'030', N'C', N'1991', N'', N'545721', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (989, N'1437', N'Whakatu', N'030', N'C', N'1991', N'', N'545722', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (990, N'1438', N'Clive', N'030', N'C', N'1991', N'', N'545730', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (991, N'1439', N'Haumoana', N'030', N'C', N'1991', N'', N'545740', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (992, N'1440', N'Brookvale', N'030', N'R', N'1991', N'1996', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (993, N'1441', N'Irongate', N'030', N'C', N'1991', N'', N'545761', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (994, N'1442', N'Longlands South', N'030', N'C', N'1991', N'', N'545762', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (995, N'1443', N'Tangoio', N'030', N'C', N'1991', N'', N'545811', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (996, N'1444', N'Eskdale', N'030', N'C', N'1991', N'', N'545812', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (997, N'1445', N'Sherenden - Puketapu', N'030', N'C', N'1991', N'', N'545821', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (998, N'1446', N'Omahu', N'030', N'C', N'1991', N'', N'545822', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (999, N'1447', N'Waiohiki', N'030', N'C', N'1991', N'', N'545831', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1000, N'1448', N'Pakowhai', N'030', N'C', N'1991', N'', N'545832', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1001, N'1449', N'Maraekakaho', N'030', N'C', N'1991', N'', N'545841', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1002, N'1450', N'Bridge Pa', N'030', N'C', N'1991', N'', N'545842', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1003, N'1451', N'Poukawa', N'030', N'C', N'1991', N'', N'545851', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1004, N'1452', N'Pakipaki', N'030', N'C', N'1991', N'', N'545852', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1005, N'1453', N'Waimarama', N'030', N'C', N'1991', N'', N'545860', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1006, N'1454', N'Tutira', N'030', N'C', N'1991', N'', N'545911', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1007, N'1455', N'Puketitiri', N'030', N'C', N'1991', N'', N'545912', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1008, N'1456', N'Whanawhana', N'030', N'C', N'1991', N'', N'545913', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1009, N'1457', N'Westshore', N'031', N'C', N'1991', N'', N'546100', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1010, N'1458', N'Ahuriri', N'031', N'C', N'1991', N'', N'546200', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1011, N'1459', N'Onekawa Central', N'031', N'C', N'1991', N'', N'546300', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1012, N'1460', N'Onekawa West', N'031', N'C', N'1991', N'', N'546400', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1013, N'1461', N'Onekawa South', N'031', N'C', N'1991', N'', N'546500', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1014, N'1462', N'Marewa', N'031', N'C', N'1991', N'', N'546600', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1015, N'1463', N'Maraenui', N'031', N'C', N'1991', N'', N'546700', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1016, N'1464', N'Hospital Hill', N'031', N'C', N'1991', N'', N'546801', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1017, N'1465', N'Bluff Hill', N'031', N'C', N'1991', N'', N'546802', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1018, N'1466', N'Nelson Park', N'031', N'C', N'1991', N'', N'546901', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1019, N'1467', N'McLean Park', N'031', N'C', N'1991', N'', N'546902', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1020, N'1468', N'Tamatea North', N'031', N'C', N'1991', N'', N'547001', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1021, N'1469', N'Tamatea South', N'031', N'C', N'1991', N'', N'547002', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1022, N'1470', N'Greenmeadows', N'031', N'C', N'1991', N'', N'547100', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1023, N'1471', N'Taradale North', N'031', N'C', N'1991', N'', N'547200', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1024, N'1472', N'Taradale South', N'031', N'C', N'1991', N'', N'547300', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1025, N'1473', N'Pirimai', N'031', N'C', N'1991', N'', N'547400', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1026, N'1474', N'Mahora', N'030', N'C', N'1991', N'', N'547600', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1027, N'1475', N'St Leonards', N'030', N'C', N'1991', N'', N'547700', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1028, N'1476', N'Frimley', N'030', N'R', N'1991', N'1996', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1029, N'1477', N'Raureka', N'030', N'C', N'1991', N'', N'547900', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1030, N'1478', N'Mayfair', N'030', N'C', N'1991', N'', N'548000', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1031, N'1479', N'Parkvale', N'030', N'C', N'1991', N'', N'548100', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1032, N'1480', N'Hastings Central', N'030', N'C', N'1991', N'', N'548200', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1033, N'1481', N'Akina', N'030', N'C', N'1991', N'', N'548300', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1034, N'1482', N'Woolwich', N'030', N'C', N'1991', N'', N'548400', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1035, N'1483', N'Camberley', N'030', N'C', N'1991', N'', N'548500', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1036, N'1484', N'Kingsley - Chatham', N'030', N'C', N'1991', N'', N'548611', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1037, N'1485', N'Lochain', N'030', N'C', N'1991', N'', N'548612', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1038, N'1486', N'Flaxmere East', N'030', N'C', N'1991', N'', N'548620', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1039, N'1487', N'Anderson Park', N'030', N'C', N'1991', N'', N'548810', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1040, N'1488', N'Iona', N'030', N'R', N'1991', N'2006', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1041, N'1489', N'Te Mata', N'030', N'R', N'1991', N'1996', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1042, N'1490', N'Takapau', N'032', N'C', N'1991', N'', N'549000', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1043, N'1491', N'Waipawa', N'032', N'C', N'1991', N'', N'549100', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1044, N'1492', N'Tikokino', N'032', N'C', N'1991', N'', N'549200', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1045, N'1493', N'Otane', N'032', N'C', N'1991', N'', N'549400', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1046, N'1494', N'Waipukurau', N'032', N'R', N'1991', N'1996', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1047, N'1495', N'Porangahau', N'032', N'C', N'1991', N'', N'549601', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1048, N'1496', N'Elsthorpe - Flemington', N'032', N'R', N'1991', N'1996', N'', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1049, N'1497', N'Norsewood - Herbertville', N'041', N'R', N'1991', N'1996', N'', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1050, N'1498', N'Owahanga', N'041', N'C', N'1991', N'', N'549901', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1051, N'1499', N'Mara', N'041', N'C', N'1991', N'', N'549902', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1052, N'1500', N'Twyford', N'030', N'C', N'1996', N'', N'545710', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1053, N'1501', N'Brookvale', N'030', N'C', N'1996', N'', N'545750', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1054, N'1502', N'Frimley', N'030', N'C', N'1996', N'', N'547800', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1055, N'1503', N'Te Mata', N'030', N'R', N'1996', N'2006', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1056, N'1504', N'Waipukurau', N'032', N'C', N'1996', N'', N'549500', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1057, N'1505', N'Elsthorpe - Flemington', N'032', N'C', N'1996', N'', N'549602', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1058, N'1506', N'Norsewood - Herbertville', N'041', N'C', N'1996', N'', N'549800', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1059, N'1507', N'Kaiti North', N'028', N'C', N'2001', N'', N'544701', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1060, N'1508', N'Outer Kaiti', N'028', N'C', N'2001', N'', N'544702', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1061, N'1509', N'Maungataniwha', N'029', N'C', N'2001', N'', N'545205', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1062, N'1510', N'Inland Water-Lake Waikaremoana', N'029', N'C', N'2001', N'', N'545206', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1063, N'1511', N'Bare Island', N'999', N'C', N'2001', N'', N'620904', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1064, N'1512', N'Iona', N'030', N'C', N'2006', N'', N'548821', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1065, N'1513', N'Havelock Hills', N'030', N'C', N'2006', N'', N'548822', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1066, N'1514', N'Te Mata', N'030', N'C', N'2006', N'', N'548831', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1067, N'1515', N'Havelock North Central', N'030', N'C', N'2006', N'', N'548832', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1068, N'1516', N'Te Mata Hills', N'030', N'C', N'2006', N'', N'548833', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1069, N'1600', N'Dannevirke West', N'041', N'C', N'1991', N'', N'550101', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1070, N'1601', N'Dannevirke East', N'041', N'C', N'1991', N'', N'550102', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1071, N'1602', N'Papatawa', N'041', N'C', N'1991', N'', N'550200', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1072, N'1603', N'Woodville', N'041', N'C', N'1991', N'', N'550500', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1073, N'1604', N'Urenui', N'033', N'C', N'1991', N'', N'550600', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1074, N'1605', N'Okoki - Okau', N'033', N'C', N'1991', N'', N'550700', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1075, N'1606', N'Oakura', N'033', N'C', N'1991', N'', N'550800', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1076, N'1607', N'Bell Block', N'033', N'C', N'1991', N'', N'550901', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1077, N'1608', N'Paraite', N'033', N'C', N'1991', N'', N'550902', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1078, N'1609', N'Glen Avon', N'033', N'C', N'1991', N'', N'551012', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1079, N'1610', N'Bowden', N'033', N'C', N'1991', N'', N'551013', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1080, N'1611', N'Mangaoraka', N'033', N'C', N'1991', N'', N'551014', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1081, N'1612', N'Carrington', N'033', N'C', N'1991', N'', N'551021', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1082, N'1613', N'Highlands Park', N'033', N'C', N'1991', N'', N'551022', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1083, N'1614', N'Fernleigh', N'033', N'C', N'1991', N'', N'551023', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1084, N'1615', N'Barrett', N'033', N'C', N'1991', N'', N'551024', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1085, N'1616', N'Omata', N'033', N'C', N'1991', N'', N'551030', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1086, N'1617', N'Lepperton', N'033', N'C', N'1991', N'', N'551111', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1087, N'1618', N'Kaitake', N'033', N'C', N'1991', N'', N'551112', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1088, N'1619', N'Okato', N'033', N'C', N'1991', N'', N'551120', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1089, N'1620', N'Waitara West', N'033', N'C', N'1991', N'', N'551301', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1090, N'1621', N'Waitara East', N'033', N'C', N'1991', N'', N'551302', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1091, N'1622', N'Moturoa', N'033', N'C', N'1991', N'', N'551400', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1092, N'1623', N'Lynmouth', N'033', N'C', N'1991', N'', N'551501', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1093, N'1624', N'Spotswood', N'033', N'C', N'1991', N'', N'551502', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1094, N'1625', N'Marfell', N'033', N'C', N'1991', N'', N'551503', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1095, N'1626', N'Upper Westown', N'033', N'C', N'1991', N'', N'551600', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1096, N'1627', N'Westown', N'033', N'C', N'1991', N'', N'551700', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1097, N'1628', N'New Plymouth Central', N'033', N'C', N'1991', N'', N'551800', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1098, N'1629', N'Kawaroa', N'033', N'C', N'1991', N'', N'551900', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1099, N'1630', N'Mount Bryan', N'033', N'C', N'1991', N'', N'552001', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1100, N'1631', N'Marsland Hill', N'033', N'C', N'1991', N'', N'552002', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1101, N'1632', N'Fitzroy', N'033', N'C', N'1991', N'', N'552100', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1102, N'1633', N'Welbourn', N'033', N'C', N'1991', N'', N'552200', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1103, N'1634', N'Merrilands', N'033', N'C', N'1991', N'', N'552300', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1104, N'1635', N'Frankleigh', N'033', N'C', N'1991', N'', N'552400', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1105, N'1636', N'Struan Park', N'033', N'C', N'1991', N'', N'552500', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1106, N'1637', N'Egmont Village', N'033', N'C', N'1991', N'', N'552701', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1107, N'1638', N'Kaimata', N'033', N'C', N'1991', N'', N'552702', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1108, N'1639', N'Inglewood', N'033', N'C', N'1991', N'', N'552800', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1109, N'1640', N'Midhurst', N'034', N'C', N'1991', N'', N'552900', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1110, N'1641', N'Whangamomona', N'034', N'C', N'1991', N'', N'553001', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1111, N'1642', N'Douglas', N'034', N'C', N'1991', N'', N'553002', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1112, N'1643', N'Toko', N'034', N'C', N'1991', N'', N'553003', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1113, N'1644', N'Pembroke', N'034', N'C', N'1991', N'', N'553004', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1114, N'1645', N'Stratford West', N'034', N'C', N'1991', N'', N'553101', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1115, N'1646', N'Stratford East', N'034', N'C', N'1991', N'', N'553102', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1116, N'1647', N'Opunake', N'035', N'C', N'1991', N'', N'553200', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1117, N'1648', N'Rahotu', N'035', N'C', N'1991', N'', N'553301', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1118, N'1649', N'Kahui', N'035', N'C', N'1991', N'', N'553302', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1119, N'1650', N'Kaponga', N'035', N'C', N'1991', N'', N'553400', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1120, N'1651', N'Mangatoki - Moeroa', N'035', N'C', N'1991', N'', N'553500', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1121, N'1652', N'Eltham', N'035', N'C', N'1991', N'', N'553601', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1122, N'1653', N'Kapuni', N'035', N'C', N'1991', N'', N'553700', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1123, N'1654', N'Manaia', N'035', N'C', N'1991', N'', N'553800', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1124, N'1655', N'Normanby', N'035', N'C', N'1991', N'', N'553900', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1125, N'1656', N'Hawera North', N'035', N'R', N'1991', N'1996', N'', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1126, N'1657', N'Hawera South', N'035', N'R', N'1991', N'1996', N'', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1127, N'1658', N'Ohawe Beach', N'035', N'R', N'1991', N'1996', N'', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1128, N'1659', N'Waingongoro', N'035', N'R', N'1991', N'1996', N'', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1129, N'1660', N'Tawhiti', N'035', N'R', N'1991', N'1996', N'', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1130, N'1661', N'Ohangai', N'035', N'C', N'1991', N'', N'554120', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1131, N'1662', N'Okaiawa', N'035', N'C', N'1991', N'', N'554130', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1132, N'1663', N'Waitotara', N'035', N'C', N'1991', N'', N'554300', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1133, N'1664', N'Whenuakura', N'035', N'C', N'1991', N'', N'554400', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1134, N'1665', N'Makakaho', N'035', N'C', N'1991', N'', N'554500', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1135, N'1666', N'Patea', N'035', N'C', N'1991', N'', N'554700', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1136, N'1667', N'Waverley', N'035', N'C', N'1991', N'', N'554800', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1137, N'1668', N'Tangiwai', N'036', N'C', N'1991', N'', N'554900', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1138, N'1669', N'Ohakune', N'036', N'C', N'1991', N'', N'555000', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1139, N'1670', N'Raetihi', N'036', N'C', N'1991', N'', N'555100', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1140, N'1671', N'Otamatea', N'037', N'C', N'1991', N'', N'555200', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1141, N'1672', N'Blueskin', N'037', N'C', N'1991', N'', N'555300', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1142, N'1673', N'Maxwell', N'037', N'C', N'1991', N'', N'555400', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1143, N'1674', N'Castlecliff North', N'037', N'C', N'1991', N'', N'555700', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1144, N'1675', N'Castlecliff South', N'037', N'C', N'1991', N'', N'555800', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1145, N'1676', N'Mosston', N'037', N'C', N'1991', N'', N'555900', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1146, N'1677', N'Balgownie', N'037', N'C', N'1991', N'', N'556000', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1147, N'1678', N'Tawhero', N'037', N'C', N'1991', N'', N'556100', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1148, N'1679', N'Gonville South', N'037', N'C', N'1991', N'', N'556200', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1149, N'1680', N'Gonville East', N'037', N'C', N'1991', N'', N'556300', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1150, N'1681', N'Gonville West', N'037', N'C', N'1991', N'', N'556400', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1151, N'1682', N'Springvale West', N'037', N'C', N'1991', N'', N'556500', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1152, N'1683', N'Springvale East', N'037', N'C', N'1991', N'', N'556600', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1153, N'1684', N'Wanganui Collegiate', N'037', N'C', N'1991', N'', N'556700', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1154, N'1685', N'Laird Park', N'037', N'C', N'1991', N'', N'556800', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1155, N'1686', N'Wanganui Central', N'037', N'C', N'1991', N'', N'556900', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1156, N'1687', N'Spriggens Park', N'037', N'C', N'1991', N'', N'557000', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1157, N'1688', N'Cooks Gardens', N'037', N'C', N'1991', N'', N'557100', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1158, N'1689', N'St Johns Hill', N'037', N'C', N'1991', N'', N'557200', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1159, N'1690', N'Lower Aramoho', N'037', N'C', N'1991', N'', N'557300', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1160, N'1691', N'Upper Aramoho', N'037', N'C', N'1991', N'', N'557400', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1161, N'1692', N'Williams Domain', N'037', N'C', N'1991', N'', N'557500', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1162, N'1693', N'Wembley Park', N'037', N'C', N'1991', N'', N'557600', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1163, N'1694', N'Kowhai Park', N'037', N'C', N'1991', N'', N'557700', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1164, N'1695', N'Bastia Hill', N'037', N'C', N'1991', N'', N'557800', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1165, N'1696', N'Durie Hill', N'037', N'C', N'1991', N'', N'557900', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1166, N'1697', N'Putiki', N'037', N'C', N'1991', N'', N'558100', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1167, N'1698', N'Marybank - Gordon Park', N'037', N'C', N'1991', N'', N'558200', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1168, N'1699', N'Fordell - Kakatahi', N'037', N'C', N'1991', N'', N'558300', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1169, N'1700', N'Hawera North', N'035', N'C', N'1996', N'', N'554010', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1170, N'1701', N'Hawera South', N'035', N'C', N'1996', N'', N'554020', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1171, N'1702', N'Ohawe Beach', N'035', N'C', N'1996', N'', N'554111', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1172, N'1703', N'Tawhiti', N'035', N'C', N'1996', N'', N'554113', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1173, N'1704', N'Waingongoro', N'035', N'C', N'1996', N'', N'554114', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1174, N'1705', N'Hawera West', N'035', N'C', N'1996', N'', N'554115', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1175, N'1800', N'Waiouru', N'036', N'C', N'1991', N'', N'558500', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1176, N'1801', N'Mangaweka', N'038', N'C', N'1991', N'', N'558600', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1177, N'1802', N'Hunterville', N'038', N'C', N'1991', N'', N'558700', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1178, N'1803', N'Ratana Community', N'038', N'C', N'1991', N'', N'558800', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1179, N'1804', N'Bulls', N'038', N'C', N'1991', N'', N'558900', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1180, N'1805', N'Ngamatea', N'038', N'C', N'1991', N'', N'559000', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1181, N'1806', N'Moawhango', N'038', N'C', N'1991', N'', N'559210', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1182, N'1807', N'Pohonui - Porewa', N'038', N'C', N'1991', N'', N'559220', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1183, N'1808', N'Lake Alice', N'038', N'R', N'1991', N'1996', N'', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1184, N'1809', N'Koitiata', N'038', N'C', N'1991', N'', N'559240', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1185, N'1810', N'Taihape', N'038', N'C', N'1991', N'', N'559400', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1186, N'1811', N'Marton', N'038', N'R', N'1991', N'1996', N'', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1187, N'1812', N'Kiwitea', N'039', N'C', N'1991', N'', N'559700', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1188, N'1813', N'Pohangina', N'039', N'C', N'1991', N'', N'560000', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1189, N'1814', N'Ashhurst', N'040', N'C', N'1991', N'', N'560200', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1190, N'1815', N'Stoney Creek', N'039', N'C', N'1991', N'', N'560301', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1191, N'1816', N'Whakarongo', N'040', N'C', N'1991', N'', N'560302', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1192, N'1817', N'Oroua Bridge', N'039', N'C', N'1991', N'', N'560411', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1193, N'1818', N'Maewa', N'039', N'C', N'1991', N'', N'560412', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1194, N'1819', N'Halcombe', N'039', N'C', N'1991', N'', N'560421', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1195, N'1820', N'Tokorangi - Hiwinui', N'039', N'C', N'1991', N'', N'560422', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1196, N'1821', N'Feilding North', N'039', N'C', N'1991', N'', N'560710', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1197, N'1822', N'Feilding West', N'039', N'C', N'1991', N'', N'560720', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1198, N'1823', N'Feilding Central', N'039', N'C', N'1991', N'', N'560730', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1199, N'1824', N'Feilding East', N'039', N'C', N'1991', N'', N'560740', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1200, N'1825', N'Sanson', N'039', N'C', N'1991', N'', N'560900', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1201, N'1826', N'Rongotea', N'039', N'C', N'1991', N'', N'561000', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1202, N'1827', N'Tangimoana', N'039', N'C', N'1991', N'', N'561100', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1203, N'1828', N'Himatangi Beach', N'039', N'C', N'1991', N'', N'561200', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1204, N'1829', N'Foxton Beach', N'042', N'C', N'1991', N'', N'561300', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1205, N'1830', N'Rakiraki', N'039', N'C', N'1991', N'', N'561410', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1206, N'1831', N'Ohakea', N'039', N'C', N'1991', N'', N'561421', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1207, N'1832', N'Oroua Downs - Waitohi', N'039', N'C', N'1991', N'', N'561422', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1208, N'1833', N'Moutoa', N'042', N'R', N'1991', N'1996', N'', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1209, N'1834', N'Foxton Community - Foxton', N'042', N'R', N'1991', N'1996', N'', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1210, N'1835', N'Kairanga', N'039', N'C', N'1991', N'', N'561811', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1211, N'1836', N'Longburn', N'039', N'C', N'1991', N'', N'561812', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1212, N'1837', N'Massey University', N'040', N'C', N'1991', N'', N'561813', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1213, N'1838', N'Linton Military Camp', N'040', N'C', N'1991', N'', N'561820', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1214, N'1839', N'Kauwhata', N'039', N'C', N'1991', N'', N'561901', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1215, N'1840', N'Turitea', N'040', N'C', N'1991', N'', N'561902', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1216, N'1841', N'Milson', N'040', N'C', N'1991', N'', N'562100', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1217, N'1842', N'Kelvin Grove', N'040', N'C', N'1991', N'', N'562200', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1218, N'1843', N'Takaro', N'040', N'C', N'1991', N'', N'562310', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1219, N'1844', N'Cloverlea', N'040', N'C', N'1991', N'', N'562320', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1220, N'1845', N'Palmerston North Hospital', N'040', N'C', N'1991', N'', N'562401', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1221, N'1846', N'Papaeoia', N'040', N'C', N'1991', N'', N'562402', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1222, N'1847', N'Roslyn', N'040', N'C', N'1991', N'', N'562500', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1223, N'1848', N'Terrace End', N'040', N'C', N'1991', N'', N'562600', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1224, N'1849', N'Highbury', N'040', N'C', N'1991', N'', N'562710', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1225, N'1850', N'Westbrook', N'040', N'C', N'1991', N'', N'562720', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1226, N'1851', N'Palmerston North Central', N'040', N'C', N'1991', N'', N'562800', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1227, N'1852', N'Awapuni North', N'040', N'C', N'1991', N'', N'562910', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1228, N'1853', N'Awapuni West', N'040', N'C', N'1991', N'', N'562921', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1229, N'1854', N'Awapuni South', N'040', N'C', N'1991', N'', N'562922', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1230, N'1855', N'West End', N'040', N'C', N'1991', N'', N'563000', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1231, N'1856', N'Hokowhitu West', N'040', N'C', N'1991', N'', N'563101', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1232, N'1857', N'Hokowhitu Lagoon', N'040', N'C', N'1991', N'', N'563102', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1233, N'1858', N'Hokowhitu East', N'040', N'C', N'1991', N'', N'563200', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1234, N'1859', N'Aokautere', N'040', N'C', N'1991', N'', N'563300', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1235, N'1860', N'Shannon', N'042', N'C', N'1991', N'', N'563500', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1236, N'1861', N'Waitarere', N'042', N'C', N'1991', N'', N'563600', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1237, N'1862', N'Waikanae Beach', N'043', N'C', N'1991', N'', N'563701', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1238, N'1863', N'Waikanae Central', N'043', N'R', N'1991', N'2001', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1239, N'1864', N'Waikanae East', N'043', N'C', N'1991', N'', N'563703', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1240, N'1865', N'Tokomaru', N'042', N'C', N'1991', N'', N'563801', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1241, N'1866', N'Opiki', N'042', N'C', N'1991', N'', N'563802', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1242, N'1867', N'Kaitawa', N'043', N'C', N'1991', N'', N'563920', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1243, N'1868', N'Lake Horowhenua', N'042', N'C', N'1991', N'', N'564011', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1244, N'1869', N'Waiopehu', N'042', N'C', N'1991', N'', N'564012', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1245, N'1870', N'Kohitere', N'042', N'C', N'1991', N'', N'564013', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1246, N'1871', N'Mangaore - Manakau', N'042', N'C', N'1991', N'', N'564021', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1247, N'1872', N'Otaki Forks', N'043', N'C', N'1991', N'', N'564022', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1248, N'1873', N'Te Horo', N'043', N'C', N'1991', N'', N'564023', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1249, N'1874', N'Levin North', N'042', N'C', N'1991', N'', N'564210', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1250, N'1875', N'Levin West', N'042', N'C', N'1991', N'', N'564220', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1251, N'1876', N'Playford Park', N'042', N'C', N'1991', N'', N'564231', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1252, N'1877', N'Levin South', N'042', N'C', N'1991', N'', N'564232', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1253, N'1878', N'Levin East', N'042', N'C', N'1991', N'', N'564240', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1254, N'1879', N'Otaki', N'043', N'C', N'1991', N'', N'564400', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1255, N'1880', N'Heretaunga Park', N'045', N'C', N'1991', N'', N'564510', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1256, N'1881', N'Trentham South', N'045', N'C', N'1991', N'', N'564520', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1257, N'1882', N'Pinehaven', N'045', N'C', N'1991', N'', N'564530', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1258, N'1883', N'Nabhra', N'045', N'R', N'1991', N'2006', N'', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1259, N'1884', N'Glendale', N'046', N'C', N'1991', N'', N'564800', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1260, N'1885', N'Parkway', N'046', N'C', N'1991', N'', N'564900', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1261, N'1886', N'Fernlea', N'046', N'C', N'1991', N'', N'565000', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1262, N'1887', N'Arakura', N'046', N'C', N'1991', N'', N'565100', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1263, N'1888', N'Homedale West', N'046', N'C', N'1991', N'', N'565200', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1264, N'1889', N'Homedale East', N'046', N'C', N'1991', N'', N'565300', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1265, N'1890', N'Pencarrow', N'046', N'C', N'1991', N'', N'565400', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1266, N'1891', N'Pauatahanui', N'044', N'C', N'1991', N'', N'565601', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1267, N'1892', N'Endeavour', N'044', N'C', N'1991', N'', N'565602', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1268, N'1893', N'Resolution', N'044', N'C', N'1991', N'', N'565603', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1269, N'1894', N'Adventure', N'044', N'C', N'1991', N'', N'565604', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1270, N'1895', N'Paekakariki Hill', N'044', N'C', N'1991', N'', N'565700', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1271, N'1896', N'Paraparaumu Beach North', N'043', N'C', N'1991', N'', N'565901', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1272, N'1897', N'Otaihanga', N'043', N'C', N'1991', N'', N'565902', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1273, N'1898', N'Paraparaumu Beach South', N'043', N'C', N'1991', N'', N'565903', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1274, N'1899', N'Paraparaumu Central', N'043', N'C', N'1991', N'', N'566000', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1275, N'1900', N'Lake Alice', N'038', N'C', N'1996', N'', N'559230', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1276, N'1901', N'Marton', N'038', N'C', N'1996', N'', N'559500', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1277, N'1902', N'Moutoa', N'042', N'C', N'1996', N'', N'561500', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1278, N'1903', N'Foxton', N'042', N'C', N'1996', N'', N'561700', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1279, N'1904', N'Peka Peka', N'043', N'C', N'2001', N'', N'563704', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1280, N'1905', N'Waikanae Park', N'043', N'C', N'2001', N'', N'563705', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1281, N'1906', N'Waikanae West', N'043', N'C', N'2001', N'', N'563706', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1282, N'1907', N'Nabhra', N'045', N'C', N'2006', N'', N'564601', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1283, N'1908', N'Riverstone Terraces', N'045', N'C', N'2006', N'', N'564602', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1284, N'2000', N'Raumati Beach', N'043', N'C', N'1991', N'', N'566101', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1285, N'2001', N'Raumati South', N'043', N'C', N'1991', N'', N'566102', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1286, N'2002', N'Paekakariki', N'043', N'C', N'1991', N'', N'566200', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1287, N'2003', N'Kapiti Island', N'043', N'C', N'1991', N'', N'566301', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1288, N'2004', N'Maungakotukutuku', N'043', N'C', N'1991', N'', N'566302', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1289, N'2005', N'Te Marua', N'045', N'C', N'1991', N'', N'566500', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1290, N'2006', N'Akatarawa', N'045', N'C', N'1991', N'', N'566610', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1291, N'2007', N'Emerald Hill', N'045', N'C', N'1991', N'', N'566620', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1292, N'2008', N'Maoribank', N'045', N'C', N'1991', N'', N'566700', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1293, N'2009', N'Clouston Park', N'045', N'C', N'1991', N'', N'566800', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1294, N'2010', N'Totara Park', N'045', N'C', N'1991', N'', N'566900', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1295, N'2011', N'Ebdentown', N'045', N'C', N'1991', N'', N'567000', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1296, N'2012', N'Upper Hutt Central', N'045', N'C', N'1991', N'', N'567100', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1297, N'2013', N'Maidstone', N'045', N'C', N'1991', N'', N'567200', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1298, N'2014', N'Wallaceville', N'045', N'C', N'1991', N'', N'567300', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1299, N'2015', N'Elderslea', N'045', N'C', N'1991', N'', N'567400', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1300, N'2016', N'Moonshine', N'045', N'C', N'1991', N'', N'567500', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1301, N'2017', N'Brentwood', N'045', N'C', N'1991', N'', N'567600', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1302, N'2018', N'Trentham North', N'045', N'C', N'1991', N'', N'567700', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1303, N'2019', N'Heretaunga - Silverstream', N'045', N'C', N'1991', N'', N'567800', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1304, N'2020', N'Cloustonville', N'045', N'C', N'1991', N'', N'567901', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1305, N'2021', N'Mangaroa', N'045', N'C', N'1991', N'', N'567902', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1306, N'2022', N'Tawhai', N'046', N'C', N'1991', N'', N'568101', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1307, N'2023', N'Holburn', N'046', N'C', N'1991', N'', N'568102', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1308, N'2024', N'Delaney', N'046', N'C', N'1991', N'', N'568103', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1309, N'2025', N'Manuka', N'046', N'C', N'1991', N'', N'568104', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1310, N'2026', N'Taita North', N'046', N'C', N'1991', N'', N'568201', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1311, N'2027', N'Taita South', N'046', N'C', N'1991', N'', N'568202', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1312, N'2028', N'Avalon East', N'046', N'C', N'1991', N'', N'568301', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1313, N'2029', N'Naenae North', N'046', N'C', N'1991', N'', N'568302', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1314, N'2030', N'Naenae South', N'046', N'C', N'1991', N'', N'568303', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1315, N'2031', N'Boulcott - Avalon', N'046', N'R', N'1991', N'2001', N'', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1316, N'2032', N'Epuni West', N'046', N'C', N'1991', N'', N'568501', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1317, N'2033', N'Epuni East', N'046', N'C', N'1991', N'', N'568502', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1318, N'2034', N'Waterloo', N'046', N'R', N'1991', N'2001', N'', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1319, N'2035', N'Waiwhetu North', N'046', N'C', N'1991', N'', N'568701', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1320, N'2036', N'Waiwhetu South', N'046', N'C', N'1991', N'', N'568702', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1321, N'2037', N'Gracefield', N'046', N'C', N'1991', N'', N'568800', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1322, N'2038', N'Moera', N'046', N'C', N'1991', N'', N'568900', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1323, N'2039', N'Woburn North', N'046', N'C', N'1991', N'', N'569001', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1324, N'2040', N'Woburn South', N'046', N'C', N'1991', N'', N'569002', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1325, N'2041', N'Hutt Central', N'046', N'C', N'1991', N'', N'569100', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1326, N'2042', N'Melling', N'046', N'C', N'1991', N'', N'569201', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1327, N'2043', N'Alicetown', N'046', N'C', N'1991', N'', N'569202', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1328, N'2044', N'Normandale', N'046', N'C', N'1991', N'', N'569301', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1329, N'2045', N'Maungaraki', N'046', N'C', N'1991', N'', N'569302', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1330, N'2046', N'Belmont', N'046', N'R', N'1991', N'2006', N'', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1331, N'2047', N'Kelson', N'046', N'C', N'1991', N'', N'569500', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1332, N'2048', N'Haywards - Manor Park', N'046', N'C', N'1991', N'', N'569600', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1333, N'2049', N'Korokoro', N'046', N'C', N'1991', N'', N'569800', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1334, N'2050', N'Petone Central', N'046', N'C', N'1991', N'', N'569900', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1335, N'2051', N'Esplanade', N'046', N'C', N'1991', N'', N'570000', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1336, N'2052', N'Wilford', N'046', N'C', N'1991', N'', N'570100', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1337, N'2053', N'Eastbourne', N'046', N'C', N'1991', N'', N'570300', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1338, N'2054', N'Titahi Bay North', N'044', N'C', N'1991', N'', N'570400', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1339, N'2055', N'Onepoto', N'044', N'C', N'1991', N'', N'570500', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1340, N'2056', N'Titahi Bay South', N'044', N'C', N'1991', N'', N'570600', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1341, N'2057', N'Elsdon - Takapuwahia', N'044', N'C', N'1991', N'', N'570700', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1342, N'2058', N'Porirua Central', N'044', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1343, N'2059', N'Porirua East', N'044', N'C', N'1991', N'', N'570900', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1344, N'2060', N'Ranui Heights', N'044', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1345, N'2061', N'Cannons Creek North', N'044', N'C', N'1991', N'', N'571100', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1346, N'2062', N'Cannons Creek South', N'044', N'C', N'1991', N'', N'571200', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1347, N'2063', N'Cannons Creek East', N'044', N'C', N'1991', N'', N'571300', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1348, N'2064', N'Waitangirua', N'044', N'C', N'1991', N'', N'571400', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1349, N'2065', N'Papakowhai', N'044', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1350, N'2066', N'Ascot Park', N'044', N'C', N'1991', N'', N'571600', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1351, N'2067', N'Pukerua Bay', N'044', N'C', N'1991', N'', N'571800', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1352, N'2068', N'Plimmerton', N'044', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1353, N'2069', N'Mana - Camborne', N'044', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1354, N'2070', N'Paremata - Postgate', N'044', N'C', N'1991', N'', N'572100', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1355, N'2071', N'Discovery', N'044', N'C', N'1991', N'', N'572200', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1356, N'2072', N'Mana Island', N'044', N'C', N'1991', N'', N'572300', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1357, N'2073', N'Tawa South', N'047', N'C', N'1991', N'', N'572500', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1358, N'2074', N'Central Tawa', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1359, N'2075', N'Linden', N'047', N'C', N'1991', N'', N'572701', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1360, N'2076', N'Greenacres', N'047', N'C', N'1991', N'', N'572702', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1361, N'2077', N'Thorndon - Tinakori Road', N'047', N'C', N'1991', N'', N'572900', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1362, N'2078', N'Lambton', N'047', N'C', N'1991', N'', N'573000', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1363, N'2079', N'Willis Street - Cambridge Terrace', N'047', N'R', N'1991', N'2006', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1364, N'2080', N'Aro Street - Nairn Street', N'047', N'C', N'1991', N'', N'573200', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1365, N'2081', N'Mt Cook - Wallace Street', N'047', N'C', N'1991', N'', N'573300', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1366, N'2082', N'Mt Victoria West', N'047', N'C', N'1991', N'', N'573400', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1367, N'2083', N'Churton Park', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1368, N'2084', N'Grenada', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1369, N'2085', N'Johnsonville North', N'047', N'C', N'1991', N'', N'573600', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1370, N'2086', N'Johnsonville South', N'047', N'C', N'1991', N'', N'573700', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1371, N'2087', N'Johnsonville East', N'047', N'R', N'1991', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1372, N'2088', N'Newlands North', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1373, N'2089', N'Newlands South', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1374, N'2090', N'Raroa', N'047', N'C', N'1991', N'', N'574100', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1375, N'2091', N'Khandallah Park', N'047', N'C', N'1991', N'', N'574200', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1376, N'2092', N'Rangoon Heights', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1377, N'2093', N'Te Kainga', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1378, N'2094', N'Awarua', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1379, N'2095', N'Ngaio', N'047', N'C', N'1991', N'', N'574402', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1380, N'2096', N'Kaiwharawhara', N'047', N'C', N'1991', N'', N'574500', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1381, N'2097', N'Wadestown', N'047', N'C', N'1991', N'', N'574600', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1382, N'2098', N'Wilton - Otari', N'047', N'R', N'1991', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1383, N'2099', N'Karori North', N'047', N'C', N'1991', N'', N'574800', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1384, N'2100', N'Porirua Central', N'044', N'C', N'1996', N'', N'570800', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1385, N'2101', N'Ranui Heights', N'044', N'C', N'1996', N'', N'571000', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1386, N'2102', N'Papakowhai', N'044', N'R', N'1996', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1387, N'2103', N'Plimmerton', N'044', N'C', N'1996', N'', N'571900', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1388, N'2104', N'Mana - Camborne', N'044', N'C', N'1996', N'', N'572000', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1389, N'2105', N'Tawa Central', N'047', N'C', N'1996', N'', N'572600', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1390, N'2106', N'Glenside North', N'047', N'C', N'1996', N'', N'573511', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1391, N'2107', N'Churton', N'047', N'R', N'1996', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1392, N'2108', N'Grenada ', N'047', N'R', N'1996', N'2006', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1393, N'2109', N'Grenada North', N'047', N'C', N'1996', N'', N'573522', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1394, N'2110', N'Grenada Village', N'047', N'C', N'1996', N'', N'573523', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1395, N'2111', N'Newlands East', N'047', N'C', N'1996', N'', N'573524', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1396, N'2112', N'Newlands North', N'047', N'R', N'1996', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1397, N'2113', N'Newlands South', N'047', N'C', N'1996', N'', N'574001', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1398, N'2114', N'Ngauranga East', N'047', N'C', N'1996', N'', N'574002', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1399, N'2115', N'Te Kainga', N'047', N'C', N'1996', N'', N'574302', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1400, N'2116', N'Ngauranga West', N'047', N'C', N'1996', N'', N'574303', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1401, N'2117', N'Rangoon Heights', N'047', N'C', N'1996', N'', N'574304', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1402, N'2118', N'Awarua', N'047', N'C', N'1996', N'', N'574401', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1403, N'2119', N'Avalon West', N'046', N'C', N'2001', N'', N'568401', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1404, N'2120', N'Boulcott', N'046', N'C', N'2001', N'', N'568402', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1405, N'2121', N'Waterloo West', N'046', N'C', N'2001', N'', N'568601', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1406, N'2122', N'Waterloo East', N'046', N'C', N'2001', N'', N'568602', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1407, N'2123', N'Tirohanga', N'046', N'C', N'2006', N'', N'569401', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1408, N'2124', N'Belmont', N'046', N'C', N'2006', N'', N'569402', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1409, N'2125', N'Willis Street-Cambridge Terrace', N'047', N'C', N'2006', N'', N'573101', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1410, N'2126', N'Wellington City-Marinas', N'047', N'C', N'2006', N'', N'573102', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1411, N'2127', N'Takapu', N'047', N'C', N'2006', N'', N'573525', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1412, N'2128', N'Horokiwi', N'047', N'C', N'2006', N'', N'573526', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1413, N'2129', N'Papakowhai North', N'044', N'C', N'2013', N'', N'571501', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1414, N'2130', N'Papakowhai South', N'044', N'C', N'2013', N'', N'571502', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1415, N'2131', N'Churton Park North', N'047', N'C', N'2013', N'', N'573513', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1416, N'2132', N'Churton Park South', N'047', N'C', N'2013', N'', N'573514', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1417, N'2133', N'Paparangi West', N'047', N'C', N'2013', N'', N'573801', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1418, N'2134', N'Johnsonville East', N'047', N'C', N'2013', N'', N'573802', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1419, N'2135', N'Paparangi', N'047', N'C', N'2013', N'', N'573901', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1420, N'2136', N'Woodridge', N'047', N'C', N'2013', N'', N'573902', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1421, N'2137', N'Newlands North', N'047', N'C', N'2013', N'', N'573903', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1422, N'2138', N'Crofton Downs', N'047', N'C', N'2013', N'', N'574701', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1423, N'2139', N'Wilton', N'047', N'C', N'2013', N'', N'574702', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1424, N'2140', N'Northland North', N'047', N'C', N'2013', N'', N'574703', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1425, N'2200', N'Karori Park', N'047', N'C', N'1991', N'', N'574900', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1426, N'2201', N'Karori East', N'047', N'C', N'1991', N'', N'575000', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1427, N'2202', N'Karori South', N'047', N'C', N'1991', N'', N'575100', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1428, N'2203', N'Northland', N'047', N'C', N'1991', N'', N'575200', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1429, N'2204', N'Kelburn', N'047', N'C', N'1991', N'', N'575300', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1430, N'2205', N'Taitville', N'047', N'C', N'1991', N'', N'575400', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1431, N'2206', N'Mitchelltown', N'047', N'C', N'1991', N'', N'575500', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1432, N'2207', N'Brooklyn', N'047', N'C', N'1991', N'', N'575600', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1433, N'2208', N'Vogeltown', N'047', N'R', N'1991', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1434, N'2209', N'Kingston', N'047', N'C', N'1991', N'', N'575800', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1435, N'2210', N'Happy Valley - Owhiro Bay', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1436, N'2211', N'Island Bay West', N'047', N'C', N'1991', N'', N'576001', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1437, N'2212', N'Island Bay East', N'047', N'C', N'1991', N'', N'576002', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1438, N'2213', N'Melrose', N'047', N'C', N'1991', N'', N'576100', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1439, N'2214', N'Berhampore', N'047', N'C', N'1991', N'', N'576200', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1440, N'2215', N'Newtown West', N'047', N'R', N'1991', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1441, N'2216', N'Newtown East', N'047', N'C', N'1991', N'', N'576400', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1442, N'2217', N'Adelaide', N'047', N'C', N'1991', N'', N'576500', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1443, N'2218', N'Oriental Bay', N'047', N'C', N'1991', N'', N'576600', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1444, N'2219', N'Roseneath', N'047', N'C', N'1991', N'', N'576700', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1445, N'2220', N'Hataitai', N'047', N'C', N'1991', N'', N'576800', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1446, N'2221', N'Kilbirnie East', N'047', N'C', N'1991', N'', N'576901', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1447, N'2222', N'Kilbirnie West', N'047', N'R', N'1991', N'2006', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1448, N'2223', N'Lyall Bay', N'047', N'C', N'1991', N'', N'577000', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1449, N'2224', N'Strathmore Park', N'047', N'R', N'1991', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1450, N'2225', N'Miramar South', N'047', N'C', N'1991', N'', N'577200', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1451, N'2226', N'Miramar North', N'047', N'R', N'1991', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1452, N'2227', N'Karaka Bay - Worser Bay', N'047', N'C', N'1991', N'', N'577400', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1453, N'2228', N'Seatoun', N'047', N'C', N'1991', N'', N'577500', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1454, N'2229', N'Maupuia', N'047', N'R', N'1991', N'2013', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1455, N'2230', N'Makara - Ohariu Community', N'047', N'R', N'1991', N'1996', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1456, N'2231', N'Mangatainoka', N'041', N'R', N'1991', N'1996', N'', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1457, N'2232', N'Pahiatua', N'041', N'R', N'1991', N'1996', N'', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1458, N'2233', N'Eketahuna', N'041', N'C', N'1991', N'', N'578100', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1459, N'2234', N'Nireaha - Tiraumea', N'041', N'C', N'1991', N'', N'578200', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1460, N'2235', N'Homebush - Te Ore Ore', N'048', N'C', N'1991', N'', N'578301', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1461, N'2236', N'Opaki-Fernridge', N'048', N'C', N'1991', N'', N'578302', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1462, N'2237', N'Kopuaranga', N'048', N'C', N'1991', N'', N'578401', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1463, N'2238', N'Whareama', N'048', N'C', N'1991', N'', N'578402', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1464, N'2239', N'Masterton Central', N'048', N'C', N'1991', N'', N'578600', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1465, N'2240', N'Masterton West', N'048', N'C', N'1991', N'', N'578700', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1466, N'2241', N'Masterton East', N'048', N'C', N'1991', N'', N'578800', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1467, N'2242', N'Solway North', N'048', N'C', N'1991', N'', N'578901', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1468, N'2243', N'Solway South', N'048', N'C', N'1991', N'', N'578902', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1469, N'2244', N'Ngaumutawa', N'048', N'C', N'1991', N'', N'579000', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1470, N'2245', N'Masterton Railway', N'048', N'C', N'1991', N'', N'579100', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1471, N'2246', N'Lansdowne', N'048', N'C', N'1991', N'', N'579200', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1472, N'2247', N'Waingawa', N'049', N'C', N'1991', N'', N'579400', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1473, N'2248', N'Mt Holdsworth', N'049', N'C', N'1991', N'', N'579501', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1474, N'2249', N'Te Wharau', N'049', N'C', N'1991', N'', N'579502', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1475, N'2250', N'Carterton', N'049', N'C', N'1991', N'', N'579700', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1476, N'2251', N'Kahutara', N'050', N'R', N'1991', N'2001', N'', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1477, N'2252', N'Tuturumuri', N'050', N'C', N'1991', N'', N'579802', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1478, N'2253', N'Greytown', N'050', N'C', N'1991', N'', N'579900', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1479, N'2254', N'Featherston', N'050', N'C', N'1991', N'', N'580000', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1480, N'2255', N'Martinborough', N'050', N'C', N'1991', N'', N'580100', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1481, N'2256', N'Havelock', N'053', N'C', N'1991', N'', N'580200', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1482, N'2257', N'Renwick', N'053', N'C', N'1991', N'', N'580300', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1483, N'2258', N'Woodbourne', N'053', N'C', N'1991', N'', N'580410', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1484, N'2259', N'Omaka', N'053', N'C', N'1991', N'', N'580420', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1485, N'2260', N'Spring Creek - Riverlands', N'053', N'R', N'1991', N'2013', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1486, N'2261', N'Waikawa', N'053', N'C', N'1991', N'', N'580442', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1487, N'2262', N'Sounds', N'053', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1488, N'2263', N'Wairau', N'053', N'R', N'1991', N'2013', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1489, N'2264', N'Severn', N'053', N'C', N'1991', N'', N'580600', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1490, N'2265', N'Ward', N'053', N'C', N'1991', N'', N'580801', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1491, N'2266', N'Seddon', N'053', N'C', N'1991', N'', N'580802', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1492, N'2267', N'Lake Tennyson', N'058', N'C', N'1991', N'', N'580900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1493, N'2268', N'Picton', N'053', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1494, N'2269', N'Springlands', N'053', N'C', N'1991', N'', N'581210', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1495, N'2270', N'Mayfield', N'053', N'C', N'1991', N'', N'581220', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1496, N'2271', N'Blenheim Central', N'053', N'C', N'1991', N'', N'581230', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1497, N'2272', N'Whitney', N'053', N'C', N'1991', N'', N'581240', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1498, N'2273', N'Redwoodtown', N'053', N'C', N'1991', N'', N'581250', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1499, N'2274', N'Witherlea', N'053', N'C', N'1991', N'', N'581260', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1500, N'2275', N'Kaikoura Township', N'054', N'C', N'1991', N'', N'581400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1501, N'2276', N'Kaikoura Rural', N'054', N'C', N'1991', N'', N'581500', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1502, N'2277', N'Golden Bay', N'051', N'C', N'1991', N'', N'581601', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1503, N'2278', N'Takaka', N'051', N'C', N'1991', N'', N'581602', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1504, N'2279', N'Glenduan', N'052', N'C', N'1991', N'', N'581713', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1505, N'2280', N'Saxton', N'052', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1506, N'2281', N'Ngawhatu', N'052', N'C', N'1991', N'', N'581715', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1507, N'2282', N'Ranzau', N'051', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1508, N'2283', N'Aniseed Hill', N'051', N'C', N'1991', N'', N'581717', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1509, N'2284', N'Hope', N'051', N'C', N'1991', N'', N'581720', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1510, N'2285', N'Richmond Hill', N'051', N'C', N'1991', N'', N'581811', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1511, N'2286', N'Whangamoa', N'052', N'C', N'1991', N'', N'581812', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1512, N'2287', N'Brightwater', N'051', N'C', N'1991', N'', N'581822', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1513, N'2288', N'Wakefield', N'051', N'C', N'1991', N'', N'581823', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1514, N'2289', N'Wai-Iti', N'051', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1515, N'2290', N'Mapua', N'051', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1516, N'2291', N'Kaiteriteri', N'051', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1517, N'2292', N'Golden Downs', N'051', N'C', N'1991', N'', N'581841', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1518, N'2293', N'Lake Rotoroa', N'051', N'C', N'1991', N'', N'581842', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1519, N'2294', N'Murchison', N'051', N'C', N'1991', N'', N'581843', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1520, N'2295', N'Tapawera', N'051', N'C', N'1991', N'', N'581844', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1521, N'2296', N'Riwaka', N'051', N'C', N'1991', N'', N'581850', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1522, N'2297', N'Clifton', N'052', N'C', N'1991', N'', N'582000', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1523, N'2298', N'Atawhai', N'052', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1524, N'2299', N'Port Nelson', N'052', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1525, N'2300', N'Brooklyn South', N'047', N'C', N'1996', N'', N'575901', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1526, N'2301', N'Happy Valley - Owhiro Bay', N'047', N'C', N'1996', N'', N'575902', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1527, N'2302', N'Makara - Ohariu', N'047', N'C', N'1996', N'', N'577700', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1528, N'2303', N'Maingatainoka', N'041', N'C', N'1996', N'', N'577900', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1529, N'2304', N'Pahiatua', N'041', N'C', N'1996', N'', N'578000', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1530, N'2305', N'Marlborough Sounds Coastal Marine', N'053', N'C', N'1996', N'', N'580445', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1531, N'2306', N'Marlborough Sounds Terrestrial', N'053', N'C', N'1996', N'', N'580446', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1532, N'2307', N'Picton', N'053', N'C', N'1996', N'', N'581100', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1533, N'2308', N'Saxton Island', N'052', N'C', N'1996', N'', N'581721', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1534, N'2309', N'Waimea Inlet East', N'052', N'C', N'1996', N'', N'581722', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1535, N'2310', N'Saxton', N'052', N'C', N'1996', N'', N'581723', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1536, N'2311', N'Bests Island', N'051', N'C', N'1996', N'', N'581724', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1537, N'2312', N'Bells Island', N'051', N'C', N'1996', N'', N'581725', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1538, N'2313', N'Ranzau', N'051', N'C', N'1996', N'', N'581726', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1539, N'2314', N'Mapua', N'051', N'C', N'1996', N'', N'581825', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1540, N'2315', N'Inlet - Motueka', N'051', N'C', N'1996', N'', N'581831', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1541, N'2316', N'Kaiteriteri', N'051', N'C', N'1996', N'', N'581832', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1542, N'2317', N'Motueka Outer', N'051', N'C', N'1996', N'', N'581833', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1543, N'2318', N'Rabbit Island', N'051', N'C', N'1996', N'', N'581834', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1544, N'2319', N'Waimea Inlet West', N'051', N'C', N'1996', N'', N'581835', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1545, N'2320', N'Wai - iti', N'051', N'C', N'1996', N'', N'581836', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1546, N'2321', N'Atawhai', N'052', N'C', N'1996', N'', N'582100', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1547, N'2322', N'Port Nelson', N'052', N'C', N'1996', N'', N'582200', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1548, N'2324', N'Inlet - Tasman Bay', N'051', N'C', N'1996', N'', N'623801', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1549, N'2325', N'Kahutara', N'050', N'C', N'2001', N'', N'579803', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1550, N'2326', N'Inland Water-Lake Wairarapa', N'050', N'C', N'2001', N'', N'579804', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1551, N'2327', N'Kilbirnie West', N'047', N'C', N'2006', N'', N'576903', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1552, N'2328', N'Evans Bay Marina', N'047', N'C', N'2006', N'', N'576904', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1553, N'2329', N'Vogeltown West', N'047', N'C', N'2013', N'', N'575701', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1554, N'2330', N'Vogeltown', N'047', N'C', N'2013', N'', N'575702', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1555, N'2331', N'Newtown West', N'047', N'C', N'2013', N'', N'576301', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1556, N'2332', N'Berhampore East', N'047', N'C', N'2013', N'', N'576302', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1557, N'2333', N'Seatoun Tunnel West', N'047', N'C', N'2013', N'', N'577101', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1558, N'2334', N'Strathmore Park', N'047', N'C', N'2013', N'', N'577102', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1559, N'2335', N'Miramar North', N'047', N'C', N'2013', N'', N'577301', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1560, N'2336', N'Miramar', N'047', N'C', N'2013', N'', N'577302', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1561, N'2337', N'Maupuia', N'047', N'C', N'2013', N'', N'577601', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1562, N'2338', N'Miramar West', N'047', N'C', N'2013', N'', N'577602', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1563, N'2339', N'Spring Creek-Grovetown', N'053', N'C', N'2013', N'', N'580431', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1564, N'2340', N'Riverlands', N'053', N'C', N'2013', N'', N'580432', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1565, N'2341', N'Wairau North', N'053', N'C', N'2013', N'', N'580447', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1566, N'2342', N'Tuamarina', N'053', N'C', N'2013', N'', N'580448', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1567, N'2343', N'Rapaura', N'053', N'C', N'2013', N'', N'580449', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1568, N'2344', N'Wairau South', N'053', N'C', N'2013', N'', N'580450', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1569, N'2345', N'Weld Pass', N'053', N'C', N'2013', N'', N'580451', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1570, N'2346', N'Fairhall', N'053', N'C', N'2013', N'', N'580452', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1571, N'2400', N'The Wood', N'052', N'C', N'1991', N'', N'582300', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1572, N'2401', N'Britannia Heights', N'052', N'R', N'1991', N'2006', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1573, N'2402', N'Trafalgar', N'052', N'C', N'1991', N'', N'582500', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1574, N'2403', N'Maitai', N'052', N'C', N'1991', N'', N'582600', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1575, N'2404', N'Kirks', N'052', N'C', N'1991', N'', N'582700', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1576, N'2405', N'Bronte', N'052', N'C', N'1991', N'', N'582800', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1577, N'2406', N'Atmore', N'052', N'C', N'1991', N'', N'582900', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1578, N'2407', N'Tahunanui', N'052', N'C', N'1991', N'', N'583000', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1579, N'2408', N'Tahuna Hills', N'052', N'C', N'1991', N'', N'583100', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1580, N'2409', N'Toi Toi', N'052', N'C', N'1991', N'', N'583201', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1581, N'2410', N'Broads', N'052', N'C', N'1991', N'', N'583202', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1582, N'2411', N'Grampians', N'052', N'C', N'1991', N'', N'583300', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1583, N'2412', N'The Brook', N'052', N'C', N'1991', N'', N'583400', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1584, N'2413', N'Nelson Airport', N'052', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1585, N'2414', N'Nayland', N'052', N'C', N'1991', N'', N'583600', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1586, N'2415', N'Enner Glynn', N'052', N'C', N'1991', N'', N'583700', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1587, N'2416', N'Maitlands', N'052', N'C', N'1991', N'', N'583800', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1588, N'2417', N'Isel Park', N'052', N'C', N'1991', N'', N'583900', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1589, N'2418', N'Langbein', N'052', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1590, N'2419', N'Richmond East', N'051', N'C', N'1991', N'', N'584201', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1591, N'2420', N'Richmond West', N'051', N'C', N'1991', N'', N'584202', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1592, N'2421', N'Motueka West', N'051', N'R', N'1991', N'1996', N'', N'111', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1593, N'2422', N'Motueka East', N'051', N'R', N'1991', N'1996', N'', N'111', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1594, N'2423', N'Buller', N'055', N'R', N'1991', N'1996', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1595, N'2424', N'Karamea', N'055', N'C', N'1991', N'', N'584402', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1596, N'2425', N'Hector - Ngakawau', N'055', N'C', N'1991', N'', N'584403', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1597, N'2426', N'Granity', N'055', N'C', N'1991', N'', N'584404', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1598, N'2427', N'Westport Urban', N'055', N'C', N'1991', N'', N'584500', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1599, N'2428', N'Reefton', N'055', N'C', N'1991', N'', N'584600', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1600, N'2429', N'Inangahua', N'055', N'R', N'1991', N'2001', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1601, N'2430', N'Karoro', N'056', N'C', N'1991', N'', N'584800', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1602, N'2431', N'Kaiata', N'056', N'C', N'1991', N'', N'584911', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1603, N'2432', N'South Beach - Camerons', N'056', N'C', N'1991', N'', N'584912', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1604, N'2433', N'Blackball', N'056', N'C', N'1991', N'', N'584922', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1605, N'2434', N'Point Elizabeth', N'056', N'C', N'1991', N'', N'584923', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1606, N'2435', N'Moana', N'056', N'R', N'1991', N'2001', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1607, N'2436', N'Dobson', N'056', N'C', N'1991', N'', N'584930', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1608, N'2437', N'Runanga - Rapahoe', N'056', N'C', N'1991', N'', N'585000', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1609, N'2438', N'Cobden', N'056', N'C', N'1991', N'', N'585110', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1610, N'2439', N'Blaketown', N'056', N'C', N'1991', N'', N'585120', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1611, N'2440', N'Greymouth Central', N'056', N'C', N'1991', N'', N'585130', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1612, N'2441', N'Greymouth South', N'056', N'C', N'1991', N'', N'585140', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1613, N'2442', N'Haast', N'057', N'R', N'1991', N'2001', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1614, N'2443', N'Otira', N'057', N'R', N'1991', N'2001', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1615, N'2444', N'Kumara', N'057', N'C', N'1991', N'', N'585306', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1616, N'2445', N'Kaniere', N'057', N'C', N'1991', N'', N'585307', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1617, N'2446', N'Kowhitirangi', N'057', N'R', N'1991', N'2001', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1618, N'2447', N'Ross', N'057', N'C', N'1991', N'', N'585309', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1619, N'2448', N'Whataroa', N'057', N'R', N'1991', N'2001', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1620, N'2449', N'Harihari', N'057', N'C', N'1991', N'', N'585311', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1621, N'2450', N'Franz Josef', N'057', N'C', N'1991', N'', N'585312', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1622, N'2451', N'Fox Glacier', N'057', N'C', N'1991', N'', N'585313', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1623, N'2452', N'Hokitika Urban', N'057', N'C', N'1991', N'', N'585400', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1624, N'2453', N'Hanmer Springs', N'058', N'C', N'1991', N'', N'585502', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1625, N'2454', N'Amuri', N'058', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1626, N'2455', N'Culverden', N'058', N'C', N'1991', N'', N'585504', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1627, N'2456', N'Parnassus', N'058', N'C', N'1991', N'', N'585601', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1628, N'2457', N'Cheviot', N'058', N'C', N'1991', N'', N'585602', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1629, N'2458', N'Hurunui', N'058', N'C', N'1991', N'', N'585700', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1630, N'2459', N'Amberley', N'058', N'C', N'1991', N'', N'585802', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1631, N'2460', N'Leithfield', N'058', N'C', N'1991', N'', N'585803', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1632, N'2461', N'Loburn', N'059', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1633, N'2462', N'Sefton', N'059', N'C', N'1991', N'', N'585805', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1634, N'2463', N'Camside', N'059', N'C', N'1991', N'', N'586001', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1635, N'2464', N'Pines - Kairaki Beach', N'059', N'C', N'1991', N'', N'586002', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1636, N'2465', N'Waikuku', N'059', N'C', N'1991', N'', N'586112', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1637, N'2466', N'Fernside', N'059', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1638, N'2467', N'Cust', N'059', N'C', N'1991', N'', N'586114', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1639, N'2468', N'Woodend', N'059', N'C', N'1991', N'', N'586120', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1640, N'2469', N'Rangiora North', N'059', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1641, N'2470', N'Rangiora West', N'059', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1642, N'2471', N'Rangiora East', N'059', N'C', N'1991', N'', N'586303', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1643, N'2472', N'Southbrook', N'059', N'C', N'1991', N'', N'586304', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1644, N'2473', N'Kaiapoi North', N'059', N'R', N'1991', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1645, N'2474', N'Kaiapoi South', N'059', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1646, N'2475', N'Clarkville', N'059', N'C', N'1991', N'', N'586501', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1647, N'2476', N'Kaiapoi West', N'059', N'R', N'1991', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1648, N'2477', N'Eyre', N'059', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1649, N'2478', N'Ashley Gorge', N'059', N'C', N'1991', N'', N'586801', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1650, N'2479', N'Oxford', N'059', N'C', N'1991', N'', N'586802', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1651, N'2480', N'Darfield', N'062', N'C', N'1991', N'', N'586900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1652, N'2481', N'Kirwee', N'062', N'C', N'1991', N'', N'587010', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1653, N'2482', N'Burnham Military Camp', N'062', N'C', N'1991', N'', N'587020', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1654, N'2483', N'Malvern', N'062', N'C', N'1991', N'', N'587100', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1655, N'2484', N'Oaklands', N'060', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1656, N'2485', N'Halswell South', N'060', N'C', N'1991', N'', N'587302', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1657, N'2486', N'Hornby North', N'060', N'C', N'1991', N'', N'587400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1658, N'2487', N'Hornby South', N'060', N'C', N'1991', N'', N'587500', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1659, N'2488', N'Sockburn', N'060', N'C', N'1991', N'', N'587701', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1660, N'2489', N'Wigram', N'060', N'C', N'1991', N'', N'587702', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1661, N'2490', N'Yaldhurst', N'060', N'C', N'1991', N'', N'587811', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1662, N'2491', N'Broomfield', N'060', N'C', N'1991', N'', N'587812', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1663, N'2492', N'Templeton', N'060', N'R', N'1991', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1664, N'2493', N'Islington', N'060', N'C', N'1991', N'', N'587830', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1665, N'2494', N'Prebbleton', N'062', N'R', N'1991', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1666, N'2495', N'Halswell West', N'060', N'C', N'1991', N'', N'587842', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1667, N'2496', N'Halswell East', N'060', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1668, N'2497', N'Westmorland', N'060', N'C', N'1991', N'', N'587844', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1669, N'2498', N'McLeans Island', N'060', N'C', N'1991', N'', N'587902', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1670, N'2499', N'Kennedys Bush', N'060', N'C', N'1991', N'', N'587903', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1671, N'2500', N'Nelson Airport', N'052', N'C', N'1996', N'', N'583500', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1672, N'2501', N'Langbein', N'052', N'C', N'1996', N'', N'584000', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1673, N'2502', N'Motueka West', N'051', N'C', N'1996', N'', N'584301', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1674, N'2503', N'Motueka East', N'051', N'C', N'1996', N'', N'584303', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1675, N'2504', N'Moutere Inlet', N'051', N'C', N'1996', N'', N'584304', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1676, N'2505', N'Jackett Island', N'051', N'C', N'1996', N'', N'584305', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1677, N'2506', N'Orowaiti', N'055', N'C', N'1996', N'', N'584405', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1678, N'2507', N'Buller', N'055', N'R', N'1996', N'2001', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1679, N'2508', N'Okuku', N'059', N'C', N'1996', N'', N'585806', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1680, N'2509', N'Loburn', N'059', N'C', N'1996', N'', N'585807', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1681, N'2510', N'Ashley', N'059', N'C', N'1996', N'', N'585808', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1682, N'2511', N'Mairaki', N'059', N'C', N'1996', N'', N'586115', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1683, N'2512', N'Fernside', N'059', N'R', N'1996', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1684, N'2513', N'Tuahiwi', N'059', N'R', N'1996', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1685, N'2514', N'Coldstream', N'059', N'R', N'1996', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1686, N'2515', N'Rangiora North', N'059', N'R', N'1996', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1687, N'2516', N'Rangiora West', N'059', N'R', N'1996', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1688, N'2517', N'West Eyreton', N'059', N'R', N'1996', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1689, N'2518', N'Eyreton', N'059', N'R', N'1996', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1690, N'2519', N'Inangahua Junction', N'055', N'C', N'2001', N'', N'584412', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1691, N'2520', N'Inangahua Valley', N'055', N'C', N'2001', N'', N'584701', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1692, N'2521', N'Mawheraiti', N'055', N'C', N'2001', N'', N'584702', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1693, N'2522', N'Maruia', N'055', N'C', N'2001', N'', N'584703', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1694, N'2523', N'Barrytown', N'056', N'C', N'2001', N'', N'584931', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1695, N'2524', N'Coalcreek', N'056', N'C', N'2001', N'', N'584932', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1696, N'2525', N'Atarau', N'056', N'C', N'2001', N'', N'584933', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1697, N'2526', N'Greymouth Rural', N'056', N'C', N'2001', N'', N'584934', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1698, N'2527', N'Marsden-Hohonu', N'056', N'C', N'2001', N'', N'584935', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1699, N'2528', N'Arnold Valley', N'056', N'C', N'2001', N'', N'584936', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1700, N'2529', N'Nelson Creek-Ngahere', N'056', N'C', N'2001', N'', N'584937', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1701, N'2530', N'Ahaura', N'056', N'C', N'2001', N'', N'584938', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1702, N'2531', N'Lake Brunner', N'056', N'C', N'2001', N'', N'584939', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1703, N'2532', N'Haupiri', N'056', N'C', N'2001', N'', N'584940', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1704, N'2533', N'Bruce Bay-Paringa', N'057', N'C', N'2001', N'', N'585324', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1705, N'2534', N'Haast', N'057', N'C', N'2001', N'', N'585325', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1706, N'2535', N'Taramakau', N'057', N'C', N'2001', N'', N'585314', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1707, N'2536', N'Otira', N'057', N'C', N'2001', N'', N'585315', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1708, N'2537', N'Waimea-Arahura', N'057', N'C', N'2001', N'', N'585316', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1709, N'2538', N'Hokitika Rural', N'057', N'C', N'2001', N'', N'585317', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1710, N'2539', N'Hokitika Valley', N'057', N'C', N'2001', N'', N'585318', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1711, N'2540', N'Totara River', N'057', N'C', N'2001', N'', N'585319', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1712, N'2541', N'Waitaha', N'057', N'C', N'2001', N'', N'585320', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1713, N'2542', N'Whataroa', N'057', N'C', N'2001', N'', N'585321', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1714, N'2543', N'Waio', N'057', N'C', N'2001', N'', N'585322', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1715, N'2544', N'Karangarua', N'057', N'C', N'2001', N'', N'585323', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1716, N'2545', N'Westport Rural', N'055', N'C', N'2001', N'', N'584410', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1717, N'2546', N'Little Wanganui', N'055', N'C', N'2001', N'', N'584407', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1718, N'2547', N'Mokihinui', N'055', N'C', N'2001', N'', N'584408', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1719, N'2548', N'Buller Coalfields', N'055', N'C', N'2001', N'', N'584409', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1720, N'2549', N'Charleston', N'055', N'C', N'2001', N'', N'584411', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1721, N'2550', N'Britannia', N'052', N'C', N'2006', N'', N'582401', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1722, N'2551', N'Washington', N'052', N'C', N'2006', N'', N'582402', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1723, N'2552', N'Waiau', N'058', N'C', N'2006', N'', N'585505', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1724, N'2553', N'Amuri', N'058', N'C', N'2006', N'', N'585506', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1725, N'2554', N'Kingsbury', N'059', N'C', N'2006', N'', N'586305', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1726, N'2555', N'Rangiora North', N'059', N'C', N'2006', N'', N'586306', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1727, N'2556', N'Kaiapoi South', N'059', N'C', N'2006', N'', N'586403', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1728, N'2557', N'Mansfield', N'059', N'C', N'2006', N'', N'586404', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1729, N'2558', N'Courtenay', N'059', N'C', N'2006', N'', N'586405', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1730, N'2559', N'Mandeville', N'059', N'C', N'2006', N'', N'586603', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1731, N'2560', N'Ohoka', N'059', N'C', N'2006', N'', N'586604', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1732, N'2561', N'Oaklands West', N'060', N'C', N'2006', N'', N'587303', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1733, N'2562', N'Oaklands East', N'060', N'C', N'2006', N'', N'587304', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1734, N'2563', N'Aidanfield', N'060', N'C', N'2006', N'', N'587845', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1735, N'2564', N'Halswell Domain', N'060', N'C', N'2006', N'', N'587846', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1736, N'2565', N'Hendersons Basin', N'060', N'C', N'2006', N'', N'587847', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1737, N'2566', N'Fernside', N'059', N'C', N'2013', N'', N'586121', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1738, N'2567', N'Lehmans', N'059', N'C', N'2013', N'', N'586122', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1739, N'2568', N'Pegasus', N'059', N'C', N'2013', N'', N'586124', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1740, N'2569', N'Woodend Beach', N'059', N'C', N'2013', N'', N'586126', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1741, N'2570', N'Coldstream', N'059', N'C', N'2013', N'', N'586127', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1742, N'2571', N'Ravenswood', N'059', N'C', N'2013', N'', N'586128', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1743, N'2572', N'Tuahiwi', N'059', N'C', N'2013', N'', N'586129', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1744, N'2573', N'Woodend West', N'059', N'C', N'2013', N'', N'586130', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1745, N'2574', N'Rangiora West', N'059', N'C', N'2013', N'', N'586307', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1746, N'2575', N'Rangiora Central', N'059', N'C', N'2013', N'', N'586308', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1747, N'2576', N'Kaiapoi East', N'059', N'C', N'2013', N'', N'586407', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1748, N'2577', N'Kaiapoi North West', N'059', N'C', N'2013', N'', N'586408', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1749, N'2578', N'Kaiapoi North East', N'059', N'C', N'2013', N'', N'586409', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1750, N'2579', N'Kaiapoi West', N'059', N'C', N'2013', N'', N'586503', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1751, N'2580', N'Silverstream', N'059', N'C', N'2013', N'', N'586504', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1752, N'2581', N'West Eyreton', N'059', N'C', N'2013', N'', N'586605', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1753, N'2582', N'Eyrewell', N'059', N'C', N'2013', N'', N'586606', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1754, N'2583', N'Paparua', N'060', N'C', N'2013', N'', N'587821', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1755, N'2584', N'Templeton', N'060', N'C', N'2013', N'', N'587822', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1756, N'2585', N'Prebbleton', N'062', N'C', N'2013', N'', N'587848', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1757, N'2586', N'Trents-Ladbrooks', N'062', N'C', N'2013', N'', N'587849', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1758, N'2600', N'West Melton', N'062', N'C', N'1991', N'', N'587904', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1759, N'2601', N'Taitapu', N'062', N'C', N'1991', N'', N'587905', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1760, N'2602', N'Redwood North', N'060', N'C', N'1991', N'', N'588101', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1761, N'2603', N'Redwood South', N'060', N'C', N'1991', N'', N'588102', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1762, N'2604', N'Styx Mill', N'060', N'C', N'1991', N'', N'588200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1763, N'2605', N'Casebrook', N'060', N'C', N'1991', N'', N'588300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1764, N'2606', N'Sawyers Arms', N'060', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1765, N'2607', N'Kaimahi', N'060', N'C', N'1991', N'', N'588500', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1766, N'2608', N'Harewood', N'060', N'C', N'1991', N'', N'588600', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1767, N'2609', N'Bishopdale', N'060', N'C', N'1991', N'', N'588700', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1768, N'2610', N'Russley', N'060', N'C', N'1991', N'', N'588800', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1769, N'2611', N'Burnside', N'060', N'C', N'1991', N'', N'588900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1770, N'2612', N'Wairarapa', N'060', N'C', N'1991', N'', N'589000', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1771, N'2613', N'Jellie Park', N'060', N'C', N'1991', N'', N'589100', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1772, N'2614', N'Bryndwr', N'060', N'C', N'1991', N'', N'589200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1773, N'2615', N'Holmwood', N'060', N'C', N'1991', N'', N'589300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1774, N'2616', N'Fendalton', N'060', N'C', N'1991', N'', N'589400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1775, N'2617', N'Deans Bush', N'060', N'C', N'1991', N'', N'589500', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1776, N'2618', N'Hawthornden', N'060', N'C', N'1991', N'', N'589601', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1777, N'2619', N'Merrin', N'060', N'C', N'1991', N'', N'589602', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1778, N'2620', N'Westburn', N'060', N'C', N'1991', N'', N'589700', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1779, N'2621', N'Masham', N'060', N'C', N'1991', N'', N'589800', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1780, N'2622', N'Avonhead', N'060', N'C', N'1991', N'', N'589900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1781, N'2623', N'Ilam', N'060', N'C', N'1991', N'', N'590000', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1782, N'2624', N'Upper Riccarton', N'060', N'C', N'1991', N'', N'590100', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1783, N'2625', N'Wharenui', N'060', N'C', N'1991', N'', N'590200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1784, N'2626', N'Middleton', N'060', N'C', N'1991', N'', N'590300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1785, N'2627', N'Belfast', N'060', N'C', N'1991', N'', N'590400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1786, N'2628', N'Marshland', N'060', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1787, N'2629', N'Styx', N'060', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1788, N'2630', N'Parklands', N'060', N'C', N'1991', N'', N'590602', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1789, N'2631', N'Riccarton West', N'060', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1790, N'2632', N'Riccarton', N'060', N'C', N'1991', N'', N'590800', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1791, N'2633', N'Riccarton South', N'060', N'C', N'1991', N'', N'590900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1792, N'2634', N'Cashmere West', N'060', N'C', N'1991', N'', N'591101', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1793, N'2635', N'Cashmere East', N'060', N'C', N'1991', N'', N'591102', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1794, N'2636', N'Rapaki Track', N'060', N'C', N'1991', N'', N'591200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1795, N'2637', N'Heathcote Valley', N'060', N'C', N'1991', N'', N'591300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1796, N'2638', N'Cathedral Square', N'060', N'C', N'1991', N'', N'591500', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1797, N'2639', N'Hagley Park', N'060', N'C', N'1991', N'', N'591600', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1798, N'2640', N'Avon Loop', N'060', N'C', N'1991', N'', N'591700', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1799, N'2641', N'Northcote', N'060', N'C', N'1991', N'', N'591800', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1800, N'2642', N'Papanui', N'060', N'C', N'1991', N'', N'591900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1801, N'2643', N'Aorangi', N'060', N'C', N'1991', N'', N'592000', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1802, N'2644', N'Strowan', N'060', N'C', N'1991', N'', N'592100', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1803, N'2645', N'Merivale', N'060', N'C', N'1991', N'', N'592200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1804, N'2646', N'Rutland', N'060', N'C', N'1991', N'', N'592300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1805, N'2647', N'St Albans West', N'060', N'C', N'1991', N'', N'592401', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1806, N'2648', N'St Albans East', N'060', N'C', N'1991', N'', N'592402', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1807, N'2649', N'Mairehau', N'060', N'C', N'1991', N'', N'592500', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1808, N'2650', N'Edgeware', N'060', N'C', N'1991', N'', N'592600', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1809, N'2651', N'Shirley West', N'060', N'C', N'1991', N'', N'592701', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1810, N'2652', N'Shirley East', N'060', N'C', N'1991', N'', N'592702', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1811, N'2653', N'Burwood', N'060', N'C', N'1991', N'', N'592811', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1812, N'2654', N'Dallington', N'060', N'C', N'1991', N'', N'592812', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1813, N'2655', N'Travis', N'060', N'C', N'1991', N'', N'592820', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1814, N'2656', N'Avondale', N'060', N'C', N'1991', N'', N'592900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1815, N'2657', N'Chisnall', N'060', N'C', N'1991', N'', N'593000', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1816, N'2658', N'Aranui', N'060', N'C', N'1991', N'', N'593100', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1817, N'2659', N'Richmond North', N'060', N'C', N'1991', N'', N'593200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1818, N'2660', N'Richmond South', N'060', N'C', N'1991', N'', N'593300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1819, N'2661', N'Avonside', N'060', N'C', N'1991', N'', N'593400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1820, N'2662', N'Linwood', N'060', N'C', N'1991', N'', N'593501', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1821, N'2663', N'Phillipstown', N'060', N'C', N'1991', N'', N'593502', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1822, N'2664', N'Linwood North', N'060', N'C', N'1991', N'', N'593600', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1823, N'2665', N'Linwood East', N'060', N'C', N'1991', N'', N'593700', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1824, N'2666', N'Bexley', N'060', N'C', N'1991', N'', N'593800', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1825, N'2667', N'Bromley', N'060', N'C', N'1991', N'', N'593900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1826, N'2668', N'Woolston West', N'060', N'C', N'1991', N'', N'594010', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1827, N'2669', N'Ferrymead', N'060', N'C', N'1991', N'', N'594020', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1828, N'2670', N'Woolston South', N'060', N'C', N'1991', N'', N'594100', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1829, N'2671', N'Ensors', N'060', N'C', N'1991', N'', N'594200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1830, N'2672', N'Opawa', N'060', N'C', N'1991', N'', N'594300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1831, N'2673', N'St Martins', N'060', N'C', N'1991', N'', N'594400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1832, N'2674', N'Waltham', N'060', N'C', N'1991', N'', N'594500', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1833, N'2675', N'Sydenham', N'060', N'C', N'1991', N'', N'594600', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1834, N'2676', N'Addington', N'060', N'C', N'1991', N'', N'594700', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1835, N'2677', N'Barrington North', N'060', N'C', N'1991', N'', N'594800', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1836, N'2678', N'Barrington South', N'060', N'C', N'1991', N'', N'594900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1837, N'2679', N'Spreydon', N'060', N'C', N'1991', N'', N'595000', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1838, N'2680', N'Hoon Hay', N'060', N'C', N'1991', N'', N'595100', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1839, N'2681', N'Hoon Hay South', N'060', N'C', N'1991', N'', N'595200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1840, N'2682', N'Hillmorton', N'060', N'C', N'1991', N'', N'595300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1841, N'2683', N'Somerfield', N'060', N'C', N'1991', N'', N'595400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1842, N'2684', N'Beckenham', N'060', N'C', N'1991', N'', N'595500', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1843, N'2685', N'North Beach', N'060', N'C', N'1991', N'', N'595600', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1844, N'2686', N'Rawhiti', N'060', N'C', N'1991', N'', N'595700', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1845, N'2687', N'New Brighton', N'060', N'C', N'1991', N'', N'595800', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1846, N'2688', N'South Brighton', N'060', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1847, N'2689', N'Mt Pleasant', N'060', N'C', N'1991', N'', N'596000', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1848, N'2690', N'Moncks Bay', N'060', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1849, N'2691', N'Sumner', N'060', N'C', N'1991', N'', N'596200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1850, N'2692', N'Lyttelton', N'061', N'C', N'1991', N'', N'596400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1851, N'2693', N'Governors Bay', N'061', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1852, N'2694', N'Diamond Harbour', N'061', N'C', N'1991', N'', N'596502', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1853, N'2695', N'Port Levy', N'061', N'C', N'1991', N'', N'596600', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1854, N'2696', N'Akaroa', N'061', N'C', N'1991', N'', N'596800', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1855, N'2697', N'Okains Bay', N'061', N'R', N'1991', N'2006', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1856, N'2698', N'Chatham Islands', N'067', N'C', N'1991', N'', N'597000', N'121', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1857, N'2699', N'Little River', N'061', N'R', N'1991', N'2001', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1858, N'2700', N'South Brighton', N'060', N'C', N'1996', N'', N'595900', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1859, N'2701', N'Avon - Heathcote Estuary', N'060', N'C', N'1996', N'', N'596101', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1860, N'2702', N'Moncks Bay', N'060', N'C', N'1996', N'', N'596102', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1861, N'2703', N'Governors Bay', N'061', N'C', N'1996', N'', N'596503', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1862, N'2704', N'Quail Island', N'061', N'C', N'1996', N'', N'596504', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1863, N'2705', N'Little River', N'061', N'C', N'2001', N'', N'597101', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1864, N'2706', N'Inland Water-Lake Ellesmere South', N'061', N'C', N'2001', N'', N'597102', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1865, N'2707', N'Belfast South', N'060', N'C', N'2006', N'', N'588401', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1866, N'2708', N'Sawyers Arms', N'060', N'C', N'2006', N'', N'588402', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1867, N'2709', N'Travis Wetland', N'060', N'C', N'2006', N'', N'590501', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1868, N'2710', N'Marshland', N'060', N'R', N'2006', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1869, N'2711', N'Waimairi Beach', N'060', N'C', N'2006', N'', N'590603', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1870, N'2712', N'Styx', N'060', N'C', N'2006', N'', N'590604', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1871, N'2713', N'Mona Vale', N'060', N'C', N'2006', N'', N'590701', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1872, N'2714', N'Riccarton West', N'060', N'C', N'2006', N'', N'590702', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1873, N'2715', N'Akaroa Harbour', N'061', N'C', N'2006', N'', N'596901', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1874, N'2716', N'Banks Peninsula Eastern Bays', N'061', N'C', N'2006', N'', N'596902', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1875, N'2717', N'Mairehau North', N'060', N'C', N'2013', N'', N'590504', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1876, N'2718', N'Westhaven', N'060', N'C', N'2013', N'', N'590505', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1877, N'2719', N'Highfield Park', N'060', N'C', N'2013', N'', N'590506', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1878, N'2720', N'Prestons', N'060', N'C', N'2013', N'', N'590507', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1879, N'2800', N'Lincoln', N'062', N'C', N'1991', N'', N'597200', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1880, N'2801', N'Leeston', N'062', N'C', N'1991', N'', N'597300', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1881, N'2802', N'Southbridge', N'062', N'C', N'1991', N'', N'597400', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1882, N'2803', N'Ellesmere', N'062', N'R', N'1991', N'2001', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1883, N'2804', N'Rolleston', N'062', N'R', N'1991', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1884, N'2805', N'Dunsandel', N'062', N'C', N'1991', N'', N'597503', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1885, N'2806', N'Methven', N'063', N'C', N'1991', N'', N'597600', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1886, N'2807', N'Fairton', N'063', N'R', N'1991', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1887, N'2808', N'Plains Railway', N'063', N'C', N'1991', N'', N'597712', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1888, N'2809', N'Mt Somers', N'063', N'C', N'1991', N'', N'597720', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1889, N'2810', N'Hinds', N'063', N'C', N'1991', N'', N'597730', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1890, N'2811', N'Chertsey', N'063', N'C', N'1991', N'', N'597741', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1891, N'2812', N'Rakaia', N'063', N'C', N'1991', N'', N'597742', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1892, N'2813', N'Allenton', N'063', N'R', N'1991', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1893, N'2814', N'Ashburton Central West', N'063', N'C', N'1991', N'', N'597820', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1894, N'2815', N'Netherby', N'063', N'C', N'1991', N'', N'597830', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1895, N'2816', N'Ashburton Central East', N'063', N'C', N'1991', N'', N'597840', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1896, N'2817', N'Hampstead', N'063', N'C', N'1991', N'', N'597850', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1897, N'2818', N'Tinwald', N'063', N'C', N'1991', N'', N'597860', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1898, N'2819', N'Winchester', N'064', N'C', N'1991', N'', N'598000', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1899, N'2820', N'Fairview - Scarborough', N'064', N'C', N'1991', N'', N'598201', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1900, N'2821', N'Otipua Creek - Washdyke Flat', N'064', N'C', N'1991', N'', N'598202', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1901, N'2822', N'Ben McLeod', N'064', N'C', N'1991', N'', N'598311', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1902, N'2823', N'Orari', N'064', N'C', N'1991', N'', N'598312', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1903, N'2824', N'Levels', N'064', N'C', N'1991', N'', N'598313', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1904, N'2825', N'Pareora', N'064', N'C', N'1991', N'', N'598314', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1905, N'2826', N'Pleasant Point', N'064', N'C', N'1991', N'', N'598320', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1906, N'2827', N'Geraldine', N'064', N'C', N'1991', N'', N'598500', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1907, N'2828', N'Temuka', N'064', N'C', N'1991', N'', N'598600', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1908, N'2829', N'Washdyke', N'064', N'C', N'1991', N'', N'598700', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1909, N'2830', N'Waimataitai', N'064', N'C', N'1991', N'', N'598800', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1910, N'2831', N'Marchwiel', N'064', N'C', N'1991', N'', N'598900', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1911, N'2832', N'Maori Park', N'064', N'C', N'1991', N'', N'599000', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1912, N'2833', N'Highfield', N'064', N'C', N'1991', N'', N'599100', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1913, N'2834', N'Glenwood', N'064', N'C', N'1991', N'', N'599200', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1914, N'2835', N'Gleniti', N'064', N'C', N'1991', N'', N'599300', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1915, N'2836', N'Fraser Park', N'064', N'C', N'1991', N'', N'599400', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1916, N'2837', N'Seaview', N'064', N'C', N'1991', N'', N'599500', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1917, N'2838', N'Watlington', N'064', N'C', N'1991', N'', N'599600', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1918, N'2839', N'Parkside', N'064', N'C', N'1991', N'', N'599700', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1919, N'2840', N'Timaru Gardens', N'064', N'C', N'1991', N'', N'599800', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1920, N'2841', N'Redruth', N'064', N'C', N'1991', N'', N'599900', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1921, N'2842', N'Twizel Community', N'065', N'C', N'1991', N'', N'600100', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1922, N'2843', N'Fairlie', N'065', N'C', N'1991', N'', N'600200', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1923, N'2844', N'MacKenzie', N'065', N'R', N'1991', N'1996', N'', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1924, N'2845', N'Mt Cook', N'065', N'C', N'1991', N'', N'600312', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1925, N'2846', N'Lake Tekapo', N'065', N'R', N'1991', N'1996', N'', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1926, N'2847', N'Waihao', N'066', N'C', N'1991', N'', N'600410', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1927, N'2848', N'St Andrews', N'066', N'C', N'1991', N'', N'600420', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1928, N'2849', N'Waimate', N'066', N'C', N'1991', N'', N'600500', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1929, N'2850', N'Weston', N'068', N'C', N'1991', N'', N'600600', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1930, N'2851', N'Pukeuri', N'068', N'C', N'1991', N'', N'600811', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1931, N'2852', N'Ardgowan', N'068', N'C', N'1991', N'', N'600812', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1932, N'2853', N'Cape Wanbrow', N'068', N'C', N'1991', N'', N'600813', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1933, N'2854', N'Duntroon', N'068', N'C', N'1991', N'', N'600822', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1934, N'2855', N'Kurow', N'068', N'C', N'1991', N'', N'600824', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1935, N'2856', N'Aviemore', N'068', N'R', N'1991', N'2001', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1936, N'2857', N'Maheno', N'068', N'C', N'1991', N'', N'600826', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1937, N'2858', N'Omarama', N'068', N'C', N'1991', N'', N'600827', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1938, N'2859', N'Kakanui', N'068', N'C', N'1991', N'', N'600828', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1939, N'2860', N'Otematata', N'068', N'C', N'1991', N'', N'600830', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1940, N'2861', N'Hampden', N'068', N'C', N'1991', N'', N'600840', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1941, N'2862', N'Oamaru North', N'068', N'C', N'1991', N'', N'601010', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1942, N'2863', N'Orana Park', N'068', N'C', N'1991', N'', N'601020', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1943, N'2864', N'Oamaru Central', N'068', N'C', N'1991', N'', N'601030', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1944, N'2865', N'Oamaru South', N'068', N'C', N'1991', N'', N'601040', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1945, N'2866', N'Palmerston', N'068', N'C', N'1991', N'', N'601200', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1946, N'2867', N'Waihemo', N'068', N'C', N'1991', N'', N'601301', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1947, N'2868', N'Hyde', N'071', N'C', N'1991', N'', N'601302', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1948, N'2869', N'Waikouaiti', N'071', N'C', N'1991', N'', N'601400', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1949, N'2870', N'Aramoana', N'071', N'C', N'1991', N'', N'601500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1950, N'2871', N'Waitati', N'071', N'C', N'1991', N'', N'601602', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1951, N'2872', N'Evansdale', N'071', N'C', N'1991', N'', N'601603', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1952, N'2873', N'Karitane', N'071', N'C', N'1991', N'', N'601604', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1953, N'2874', N'Warrington', N'071', N'C', N'1991', N'', N'601605', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1954, N'2875', N'Nenthorn', N'068', N'C', N'1991', N'', N'601700', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1955, N'2876', N'Fairfield', N'071', N'C', N'1991', N'', N'601900', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1956, N'2877', N'Brighton', N'071', N'C', N'1991', N'', N'602000', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1957, N'2878', N'Waldronville', N'071', N'C', N'1991', N'', N'602100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1958, N'2879', N'Outram', N'071', N'C', N'1991', N'', N'602200', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1959, N'2880', N'Middlemarch', N'071', N'C', N'1991', N'', N'602300', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1960, N'2881', N'Wyllies Crossing', N'071', N'C', N'1991', N'', N'602411', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1961, N'2882', N'Wingatui', N'071', N'C', N'1991', N'', N'602412', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1962, N'2883', N'Kaikorai Hill', N'071', N'C', N'1991', N'', N'602421', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1963, N'2884', N'Saddle Hill', N'071', N'C', N'1991', N'', N'602422', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1964, N'2885', N'Taieri', N'071', N'C', N'1991', N'', N'602500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1965, N'2886', N'Strath Taieri', N'071', N'C', N'1991', N'', N'602600', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1966, N'2887', N'Harbourside', N'071', N'C', N'1991', N'', N'602800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1967, N'2888', N'Fernhill', N'071', N'C', N'1991', N'', N'602900', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1968, N'2889', N'High St - Stuart St', N'071', N'C', N'1991', N'', N'603000', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1969, N'2890', N'Stuart St - Frederick St', N'071', N'C', N'1991', N'', N'603100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1970, N'2891', N'Opoho', N'071', N'C', N'1991', N'', N'603210', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1971, N'2892', N'Forrester Park', N'071', N'C', N'1991', N'', N'603220', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1972, N'2893', N'North East Valley', N'071', N'C', N'1991', N'', N'603300', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1973, N'2894', N'Pine Hill', N'071', N'C', N'1991', N'', N'603400', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1974, N'2895', N'Woodhaugh', N'071', N'C', N'1991', N'', N'603500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1975, N'2896', N'North Dunedin', N'071', N'C', N'1991', N'', N'603601', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1976, N'2897', N'Otago University', N'071', N'C', N'1991', N'', N'603602', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1977, N'2898', N'Maori Hill', N'071', N'C', N'1991', N'', N'603710', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1978, N'2899', N'Balmacewen', N'071', N'C', N'1991', N'', N'603720', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1979, N'2900', N'Lake Tekapo', N'065', N'C', N'1996', N'', N'600320', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1980, N'2901', N'Inland Water-Lake Alexandrina', N'065', N'C', N'1996', N'', N'600321', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1981, N'2902', N'Inland Water - Lake Tekapo', N'065', N'C', N'1996', N'', N'600322', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1982, N'2903', N'Mackenzie', N'065', N'C', N'1996', N'', N'600323', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1983, N'2904', N'Springston', N'062', N'R', N'2001', N'2013', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1984, N'2905', N'Inland Water-Lake Ellesmere North', N'062', N'C', N'2001', N'', N'597505', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1985, N'2906', N'Selwyn-Rakaia', N'062', N'C', N'2001', N'', N'597506', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1986, N'2907', N'Aviemore', N'068', N'C', N'2001', N'', N'600831', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1987, N'2908', N'Inland Water-Lake Ohai', N'068', N'C', N'2001', N'', N'600832', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1988, N'2909', N'Rolleston North West', N'062', N'C', N'2013', N'', N'597507', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1989, N'2910', N'Rolleston Central', N'062', N'C', N'2013', N'', N'597508', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1990, N'2911', N'Rolleston North East', N'062', N'C', N'2013', N'', N'597509', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1991, N'2912', N'Rolleston South West', N'062', N'C', N'2013', N'', N'597510', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1992, N'2913', N'Springston', N'062', N'C', N'2013', N'', N'597512', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1993, N'2914', N'Rolleston South East', N'062', N'C', N'2013', N'', N'597513', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1994, N'2915', N'Ashburton North', N'063', N'C', N'2013', N'', N'597713', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1995, N'2916', N'Fairton', N'063', N'C', N'2013', N'', N'597714', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1996, N'2917', N'Ashburton East', N'063', N'C', N'2013', N'', N'597715', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1997, N'2918', N'Allenton West', N'063', N'C', N'2013', N'', N'597811', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1998, N'2919', N'Allenton East', N'063', N'C', N'2013', N'', N'597812', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (1999, N'3000', N'Glenleith', N'071', N'C', N'1991', N'', N'603810', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2000, N'3001', N'Helensburgh', N'071', N'C', N'1991', N'', N'603820', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2001, N'3002', N'Wakari', N'071', N'C', N'1991', N'', N'603910', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2002, N'3003', N'Halfway Bush', N'071', N'C', N'1991', N'', N'603920', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2003, N'3004', N'Brockville', N'071', N'C', N'1991', N'', N'603930', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2004, N'3005', N'Roslyn North', N'071', N'C', N'1991', N'', N'604010', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2005, N'3006', N'Roslyn South', N'071', N'C', N'1991', N'', N'604020', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2006, N'3007', N'Mornington', N'071', N'C', N'1991', N'', N'604110', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2007, N'3008', N'Belleknowes', N'071', N'C', N'1991', N'', N'604120', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2008, N'3009', N'Kenmure', N'071', N'C', N'1991', N'', N'604130', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2009, N'3010', N'Caversham', N'071', N'C', N'1991', N'', N'604210', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2010, N'3011', N'Corstorphine', N'071', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2011, N'3012', N'Caledonian', N'071', N'C', N'1991', N'', N'604300', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2012, N'3013', N'South Dunedin', N'071', N'C', N'1991', N'', N'604410', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2013, N'3014', N'Forbury', N'071', N'C', N'1991', N'', N'604420', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2014, N'3015', N'St Clair', N'071', N'C', N'1991', N'', N'604500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2015, N'3016', N'Musselburgh', N'071', N'C', N'1991', N'', N'604611', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2016, N'3017', N'Andersons Bay', N'071', N'C', N'1991', N'', N'604612', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2017, N'3018', N'Vauxhall', N'071', N'C', N'1991', N'', N'604620', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2018, N'3019', N'St Leonards - Blanket Bay', N'071', N'C', N'1991', N'', N'604710', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2019, N'3020', N'Ravensbourne', N'071', N'C', N'1991', N'', N'604720', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2020, N'3021', N'Inner Peninsula', N'071', N'C', N'1991', N'', N'604810', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2021, N'3022', N'MacAndrew Bay', N'071', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2022, N'3023', N'Broad Bay - Portobello', N'071', N'C', N'1991', N'', N'604830', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2023, N'3024', N'Tairaroa - Cape Saunders', N'071', N'C', N'1991', N'', N'604901', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2024, N'3025', N'Sandymount', N'071', N'C', N'1991', N'', N'604902', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2025, N'3026', N'Sawyers Bay', N'071', N'C', N'1991', N'', N'605100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2026, N'3027', N'Port Chalmers', N'071', N'C', N'1991', N'', N'605200', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2027, N'3028', N'St Kilda West', N'071', N'C', N'1991', N'', N'605400', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2028, N'3029', N'St Kilda Central', N'071', N'C', N'1991', N'', N'605500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2029, N'3030', N'St Kilda East', N'071', N'C', N'1991', N'', N'605600', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2030, N'3031', N'Green Island', N'071', N'C', N'1991', N'', N'605800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2031, N'3032', N'Abbotsford', N'071', N'C', N'1991', N'', N'605910', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2032, N'3033', N'Concord', N'071', N'C', N'1991', N'', N'605920', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2033, N'3034', N'Mosgiel East', N'071', N'C', N'1991', N'', N'606100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2034, N'3035', N'Mosgiel South', N'071', N'C', N'1991', N'', N'606210', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2035, N'3036', N'East Taieri', N'071', N'C', N'1991', N'', N'606220', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2036, N'3037', N'Bush Road', N'071', N'C', N'1991', N'', N'606300', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2037, N'3038', N'Benhar', N'072', N'C', N'1991', N'', N'606500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2038, N'3039', N'Stirling', N'072', N'C', N'1991', N'', N'606600', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2039, N'3040', N'Bruce', N'072', N'C', N'1991', N'', N'606700', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2040, N'3041', N'Milton', N'072', N'C', N'1991', N'', N'606800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2041, N'3042', N'Kaitangata', N'072', N'C', N'1991', N'', N'606900', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2042, N'3043', N'Clinton', N'072', N'C', N'1991', N'', N'607000', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2043, N'3044', N'Kaka Point', N'072', N'C', N'1991', N'', N'607100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2044, N'3045', N'Owaka', N'072', N'C', N'1991', N'', N'607200', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2045, N'3046', N'Clutha', N'072', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2046, N'3047', N'Balclutha', N'072', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2047, N'3048', N'Teviot', N'069', N'C', N'1991', N'', N'607501', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2048, N'3049', N'Tuapeka', N'072', N'C', N'1991', N'', N'607502', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2049, N'3050', N'Tapanui', N'072', N'C', N'1991', N'', N'607600', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2050, N'3051', N'Lawrence', N'072', N'C', N'1991', N'', N'607700', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2051, N'3052', N'Roxburgh', N'069', N'C', N'1991', N'', N'607800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2052, N'3053', N'Ranfurly', N'069', N'C', N'1991', N'', N'607900', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2053, N'3054', N'Maniototo', N'069', N'C', N'1991', N'', N'608000', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2054, N'3055', N'Naseby', N'069', N'C', N'1991', N'', N'608100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2055, N'3056', N'Hawea', N'070', N'R', N'1991', N'2001', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2056, N'3057', N'Dunstan', N'069', N'C', N'1991', N'', N'608302', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2057, N'3058', N'Clyde', N'069', N'C', N'1991', N'', N'608303', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2058, N'3059', N'Alexandra', N'069', N'C', N'1991', N'', N'608500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2059, N'3060', N'Cromwell', N'069', N'C', N'1991', N'', N'608600', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2060, N'3061', N'Frankton', N'070', N'C', N'1991', N'', N'608700', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2061, N'3062', N'Wanaka', N'070', N'C', N'1991', N'', N'608800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2062, N'3063', N'Milford', N'073', N'C', N'1991', N'', N'609011', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2063, N'3064', N'Glenorchy', N'070', N'R', N'1991', N'2013', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2064, N'3065', N'Kelvin Heights', N'070', N'C', N'1991', N'', N'609022', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2065, N'3066', N'Sunshine Bay', N'070', N'C', N'1991', N'', N'609023', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2066, N'3067', N'Matukituki', N'070', N'R', N'1991', N'2001', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2067, N'3068', N'Skippers', N'070', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2068, N'3069', N'Arrowtown', N'070', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2069, N'3070', N'Queenstown Bay', N'070', N'R', N'1991', N'2013', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2070, N'3071', N'Queenstown Hill', N'070', N'C', N'1991', N'', N'609302', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2071, N'3072', N'Balfour Community', N'073', N'C', N'1991', N'', N'609400', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2072, N'3073', N'Riversdale Community', N'073', N'C', N'1991', N'', N'609500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2073, N'3074', N'Lumsden Community', N'073', N'C', N'1991', N'', N'609600', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2074, N'3075', N'Edendale Community', N'073', N'C', N'1991', N'', N'609700', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2075, N'3076', N'Wyndham', N'073', N'C', N'1991', N'', N'609800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2076, N'3077', N'Makarewa North', N'073', N'C', N'1991', N'', N'609911', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2077, N'3078', N'Makarewa', N'075', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2078, N'3079', N'Bay Road West', N'075', N'C', N'1991', N'', N'609913', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2079, N'3080', N'Mill Road - Woodend', N'075', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2080, N'3081', N'Bushy Point', N'075', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2081, N'3082', N'Otatara', N'075', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2082, N'3083', N'Charlton', N'074', N'C', N'1991', N'', N'610010', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2083, N'3084', N'Waikaia', N'073', N'C', N'1991', N'', N'610020', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2084, N'3085', N'Kaweku', N'073', N'C', N'1991', N'', N'610031', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2085, N'3086', N'Chatton', N'074', N'C', N'1991', N'', N'610032', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2086, N'3087', N'Kaiwera', N'074', N'C', N'1991', N'', N'610033', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2087, N'3088', N'Hokonui', N'073', N'C', N'1991', N'', N'610040', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2088, N'3089', N'Waianiwa', N'073', N'C', N'1991', N'', N'610051', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2089, N'3090', N'Oreti Beach', N'075', N'C', N'1991', N'', N'610052', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2090, N'3091', N'Dacre', N'073', N'C', N'1991', N'', N'610061', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2091, N'3092', N'Myross Bush', N'075', N'C', N'1991', N'', N'610062', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2092, N'3093', N'Tiwai Point', N'075', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2093, N'3094', N'Waituna', N'073', N'C', N'1991', N'', N'610072', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2094, N'3095', N'Woodlands', N'073', N'C', N'1991', N'', N'610073', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2095, N'3096', N'Toetoes', N'073', N'C', N'1991', N'', N'610080', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2096, N'3097', N'Wallacetown', N'073', N'C', N'1991', N'', N'610090', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2097, N'3098', N'North Gore', N'074', N'C', N'1991', N'', N'610210', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2098, N'3099', N'East Gore', N'074', N'C', N'1991', N'', N'610220', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2099, N'3100', N'Corstorphine West', N'071', N'C', N'1996', N'', N'604221', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2100, N'3101', N'Corstorphine East', N'071', N'C', N'1996', N'', N'604222', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2101, N'3102', N'Company Bay', N'071', N'C', N'1996', N'', N'604821', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2102, N'3103', N'MacAndrew Bay', N'071', N'C', N'1996', N'', N'604822', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2103, N'3104', N'Clutha', N'072', N'C', N'1996', N'', N'607300', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2104, N'3105', N'Balclutha', N'072', N'C', N'1996', N'', N'607400', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2105, N'3106', N'Skippers', N'070', N'R', N'1996', N'2001', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2106, N'3107', N'Arrowtown', N'070', N'C', N'1996', N'', N'609200', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2107, N'3108', N'Makarewa', N'075', N'C', N'1996', N'', N'609912', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2108, N'3109', N'Mill Road - Woodend', N'075', N'C', N'1996', N'', N'609914', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2109, N'3110', N'Bushy Point', N'075', N'C', N'1996', N'', N'609921', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2110, N'3111', N'Otatara', N'075', N'C', N'1996', N'', N'609922', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2111, N'3112', N'Greenhills', N'075', N'C', N'1996', N'', N'610074', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2112, N'3113', N'Tiwai Point', N'075', N'C', N'1996', N'', N'610075', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2113, N'3114', N'Waikiwi', N'075', N'C', N'1996', N'', N'610602', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2114, N'3115', N'Hawea', N'070', N'C', N'2001', N'', N'608304', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2115, N'3116', N'Inland Water-Lake Hawea', N'070', N'C', N'2001', N'', N'608305', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2116, N'3117', N'Inland Water-Lake Wakatipu', N'070', N'C', N'2001', N'', N'609027', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2117, N'3118', N'Matukituki', N'070', N'C', N'2001', N'', N'609029', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2118, N'3119', N'Inland Water-Lake Wanaka', N'070', N'C', N'2001', N'', N'609030', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2119, N'3120', N'Wakatipu', N'070', N'R', N'2001', N'2013', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2120, N'3121', N'Lake Hayes', N'070', N'C', N'2001', N'', N'609028', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2121, N'3122', N'Glenorchy', N'070', N'C', N'2013', N'', N'609013', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2122, N'3123', N'Kingston South', N'070', N'C', N'2013', N'', N'609014', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2123, N'3124', N'Outer Wakatipu', N'070', N'C', N'2013', N'', N'609031', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2124, N'3125', N'Wakatipu Basin', N'070', N'C', N'2013', N'', N'609032', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2125, N'3126', N'Frankton East', N'070', N'C', N'2013', N'', N'609033', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2126, N'3127', N'Lake Hayes South', N'070', N'C', N'2013', N'', N'609034', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2127, N'3128', N'Jacks Point', N'070', N'C', N'2013', N'', N'609035', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2128, N'3129', N'Arthurs Point', N'070', N'C', N'2013', N'', N'609303', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2129, N'3130', N'Queenstown Bay', N'070', N'C', N'2013', N'', N'609304', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2130, N'3200', N'Central Gore', N'074', N'C', N'1991', N'', N'610230', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2131, N'3201', N'West Gore', N'074', N'C', N'1991', N'', N'610240', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2132, N'3202', N'South Gore', N'074', N'C', N'1991', N'', N'610250', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2133, N'3203', N'Mataura', N'074', N'C', N'1991', N'', N'610400', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2134, N'3204', N'Winton', N'073', N'C', N'1991', N'', N'610500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2135, N'3205', N'Grasmere', N'075', N'C', N'1991', N'', N'610601', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2136, N'3206', N'Waikiwi', N'075', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2137, N'3207', N'Rosedale', N'075', N'C', N'1991', N'', N'610700', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2138, N'3208', N'Gladstone - Avenal', N'075', N'C', N'1991', N'', N'610800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2139, N'3209', N'Windsor', N'075', N'C', N'1991', N'', N'610900', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2140, N'3210', N'Waverley-Glengarry', N'075', N'C', N'1991', N'', N'611001', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2141, N'3211', N'Hawthorndale', N'075', N'C', N'1991', N'', N'611002', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2142, N'3212', N'Richmond', N'075', N'C', N'1991', N'', N'611100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2143, N'3213', N'Otakaro Park', N'075', N'C', N'1991', N'', N'611210', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2144, N'3214', N'Crinan', N'075', N'C', N'1991', N'', N'611220', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2145, N'3215', N'West Invercargill', N'075', N'C', N'1991', N'', N'611300', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2146, N'3216', N'Georgetown', N'075', N'C', N'1991', N'', N'611400', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2147, N'3217', N'Newfield - Rockdale', N'075', N'C', N'1991', N'', N'611500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2148, N'3218', N'Heidelberg', N'075', N'C', N'1991', N'', N'611601', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2149, N'3219', N'Strathern', N'075', N'C', N'1991', N'', N'611602', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2150, N'3220', N'Appleby - Kew', N'075', N'C', N'1991', N'', N'611700', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2151, N'3221', N'Kingswell - Clifton', N'075', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2152, N'3222', N'Tisbury', N'075', N'C', N'1991', N'', N'611900', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2153, N'3223', N'Bluff', N'075', N'C', N'1991', N'', N'612100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2154, N'3224', N'Nightcaps', N'073', N'C', N'1991', N'', N'612200', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2155, N'3225', N'Ohai', N'073', N'C', N'1991', N'', N'612300', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2156, N'3226', N'Te Anau', N'073', N'C', N'1991', N'', N'612400', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2157, N'3227', N'Tuatapere', N'073', N'C', N'1991', N'', N'612500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2158, N'3228', N'Otautau', N'073', N'C', N'1991', N'', N'612600', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2159, N'3229', N'Mararoa River', N'073', N'R', N'1991', N'2001', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2160, N'3230', N'Manapouri', N'073', N'C', N'1991', N'', N'612712', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2161, N'3231', N'Mossburn', N'073', N'C', N'1991', N'', N'612713', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2162, N'3232', N'Wairio', N'073', N'C', N'1991', N'', N'612720', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2163, N'3233', N'Te Waewae', N'073', N'C', N'1991', N'', N'612730', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2164, N'3234', N'Fairfax', N'073', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2165, N'3235', N'Riverton', N'073', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2166, N'3236', N'Fiordland', N'073', N'R', N'1991', N'2001', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2167, N'3237', N'Stewart Island', N'073', N'C', N'1991', N'', N'613000', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2168, N'3238', N'Kermadec Island', N'999', N'R', N'1991', N'2001', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2169, N'3239', N'Oceanic - Northland Region', N'999', N'R', N'1991', N'1996', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2170, N'3240', N'Inlet - Hokianga Harbour', N'001', N'C', N'1991', N'', N'614502', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2171, N'3241', N'Inlet - Rangaunu Harbour', N'001', N'C', N'1991', N'', N'614601', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2172, N'3242', N'Inlet - Doubtless Bay', N'999', N'C', N'1991', N'', N'614602', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2173, N'3243', N'Inlet - Whangaroa Harbour', N'001', N'C', N'1991', N'', N'614700', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2174, N'3244', N'Inlet - Bay of Islands', N'001', N'C', N'1991', N'', N'614800', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2175, N'3245', N'Inlet - Whangarei District', N'002', N'R', N'1991', N'2001', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2176, N'3246', N'Inlet - Port Whangarei', N'002', N'C', N'1991', N'', N'615301', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2177, N'3247', N'Inlet - Mangawhai Harbour', N'003', N'C', N'1991', N'', N'615302', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2178, N'3248', N'Mokohinau Island', N'007', N'C', N'1991', N'', N'615800', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2179, N'3249', N'Little Barrier Island', N'007', N'C', N'1991', N'', N'615900', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2180, N'3250', N'Kaikoura and Rangiahua Islands', N'007', N'C', N'1991', N'', N'616001', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2181, N'3251', N'Inlet - Port Fitzroy', N'999', N'C', N'1991', N'', N'616002', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2182, N'3252', N'Cape Barrier', N'007', N'C', N'1991', N'', N'616100', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2183, N'3253', N'Rakitu Island', N'007', N'C', N'1991', N'', N'616200', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2184, N'3254', N'Browns Island', N'007', N'C', N'1991', N'', N'616300', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2185, N'3255', N'Aiguilles Island', N'007', N'C', N'1991', N'', N'616400', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2186, N'3256', N'Inlet - Kaipara Harbour North', N'999', N'C', N'1991', N'', N'617000', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2187, N'3257', N'Inlet - Kaipara Harbour South', N'999', N'R', N'1991', N'1996', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2188, N'3258', N'Inlet - Kaipara River', N'004', N'C', N'1991', N'', N'617102', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2189, N'3259', N'Inlet - Takapuna Head', N'999', N'C', N'1991', N'', N'617200', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2190, N'3260', N'Inlet - Hobson Bay', N'007', N'C', N'1991', N'', N'617400', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2191, N'3261', N'Oceanic - Auckland Region East', N'999', N'R', N'1991', N'2006', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2192, N'3262', N'Inlet - Manukau Harbour', N'999', N'R', N'1991', N'2001', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2193, N'3263', N'Oceanic - Auckland Region West', N'999', N'C', N'1991', N'', N'617602', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2194, N'3264', N'Inlet - Tamaki', N'999', N'R', N'1991', N'2001', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2195, N'3265', N'Inlet - Waiuku River', N'999', N'C', N'1991', N'', N'617800', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2196, N'3266', N'Inlet - Waitemata Harbour', N'999', N'R', N'1991', N'1996', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2197, N'3267', N'Te Motu Island', N'018', N'C', N'1991', N'', N'618300', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2198, N'3268', N'Motiti Island', N'999', N'C', N'1991', N'', N'618400', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2199, N'3269', N'Mayor Island', N'999', N'C', N'1991', N'', N'618500', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2200, N'3270', N'Inlet - Raglan Harbour', N'013', N'C', N'1991', N'', N'619000', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2201, N'3271', N'Inlet - Aotea Harbour North', N'013', N'C', N'1991', N'', N'619101', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2202, N'3272', N'Inlets - Otorohanga District', N'018', N'C', N'1991', N'', N'619102', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2203, N'3273', N'Inlet - Waitomo District', N'020', N'C', N'1991', N'', N'619201', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2204, N'3274', N'Oceanic - Waikato Region West', N'999', N'C', N'1991', N'', N'619202', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2205, N'3275', N'Inlets - Thames Coromandel District', N'011', N'C', N'1991', N'', N'619301', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2206, N'3276', N'Islands - Thames Coromandel District', N'011', N'C', N'1991', N'', N'619302', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2207, N'3277', N'Bays - Thames Coromandel District', N'999', N'C', N'1991', N'', N'619303', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2208, N'3278', N'Oceanic - Waikato Region East', N'999', N'C', N'1991', N'', N'619400', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2209, N'3279', N'Inlet - Firth of Thames', N'999', N'C', N'1991', N'', N'619500', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2210, N'3280', N'Oceanic - Bay of Plenty Region', N'999', N'R', N'1991', N'1996', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2211, N'3281', N'White Island', N'999', N'C', N'1991', N'', N'619900', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2212, N'3282', N'Inland Water - Lake Taupo', N'021', N'C', N'1991', N'', N'620000', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2213, N'3283', N'Oceanic - Gisborne District', N'999', N'C', N'1991', N'', N'620400', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2214, N'3284', N'Inlet - Port Napier', N'999', N'C', N'1991', N'', N'620901', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2215, N'3285', N'Oceanic - Hawkes Bay Region', N'999', N'R', N'1991', N'2001', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2216, N'3286', N'Port - Taranaki', N'999', N'C', N'1991', N'', N'621401', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2217, N'3287', N'Oceanic - Taranaki Region', N'999', N'C', N'1991', N'', N'621402', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2218, N'3288', N'Oceanic-Oil Rigs Taranaki', N'999', N'C', N'1991', N'', N'621500', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2219, N'3289', N'Oceanic-Tararua Constituency', N'999', N'C', N'1991', N'', N'622000', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2220, N'3290', N'Inlet - Wellington Harbour', N'999', N'R', N'1991', N'2006', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2221, N'3291', N'Inlet - Porirua Harbour', N'044', N'C', N'1991', N'', N'622201', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2222, N'3292', N'Oceanic - Wellington Region', N'999', N'C', N'1991', N'', N'622202', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2223, N'3293', N'Oceanic - Manawatu Wanganui Region', N'999', N'C', N'1991', N'', N'622700', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2224, N'3294', N'Inlet - Tasman Bay', N'052', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2225, N'3295', N'Oceanic - Nelson Marlborough Region', N'999', N'R', N'1991', N'1996', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2226, N'3296', N'Inlet - Ligar Bay', N'999', N'C', N'1991', N'', N'623900', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2227, N'3297', N'Inlet - Buller River', N'055', N'C', N'1991', N'', N'624100', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2228, N'3298', N'Oceanic - West Coast Region', N'999', N'C', N'1991', N'', N'624600', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2229, N'3299', N'Inlet - Port Lyttelton', N'061', N'R', N'1991', N'1996', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2230, N'3300', N'Kingswell - Clifton', N'075', N'C', N'1996', N'', N'611800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2231, N'3301', N'Fairfax', N'073', N'C', N'1996', N'', N'612740', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2232, N'3302', N'Riverton East', N'073', N'C', N'1996', N'', N'612801', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2233, N'3303', N'Riverton West', N'073', N'C', N'1996', N'', N'612802', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2234, N'3304', N'Three Kings Islands', N'999', N'C', N'1996', N'', N'614503', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2235, N'3305', N'Oceanic - Northland Region', N'001', N'C', N'1996', N'', N'614504', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2236, N'3306', N'Inlet - Kaipara Harbour South', N'999', N'C', N'1996', N'', N'617101', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2237, N'3307', N'Inlet - Waitemata Harbour', N'999', N'R', N'1996', N'2006', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2238, N'3308', N'Moutohora Island', N'999', N'C', N'1996', N'', N'619701', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2239, N'3309', N'Oceanic - Bay of Plenty Region', N'999', N'C', N'1996', N'', N'619702', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2240, N'3310', N'Oceanic - Tasman Region', N'999', N'C', N'1996', N'', N'623803', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2241, N'3311', N'Oceanic - Nelson Region', N'999', N'C', N'1996', N'', N'623804', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2242, N'3312', N'Oceanic - Marlborough Region', N'999', N'C', N'1996', N'', N'623805', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2243, N'3313', N'Oceanic - Canterbury Region North', N'999', N'C', N'1996', N'', N'623806', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2244, N'3314', N'Inlet - Port Lyttleton', N'999', N'C', N'1996', N'', N'625101', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2245, N'3315', N'Mararoa River', N'073', N'C', N'2001', N'', N'612714', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2246, N'3316', N'Inland Water-Lake Te Anau', N'073', N'C', N'2001', N'', N'612715', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2247, N'3317', N'Fiordland', N'073', N'C', N'2001', N'', N'612901', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2248, N'3318', N'Inland Water-Lake Manapouri', N'073', N'C', N'2001', N'', N'612902', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2249, N'3319', N'Inland Water-Lake Hauroko', N'073', N'C', N'2001', N'', N'612903', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2250, N'3320', N'Oceanic-Southland Region', N'999', N'C', N'2001', N'', N'627201', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2251, N'3321', N'Oceanic-Kermadec Islands', N'999', N'C', N'2001', N'', N'614001', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2252, N'3322', N'Kermadec Islands', N'999', N'C', N'2001', N'', N'614002', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2253, N'3323', N'Inlet - Tutukaka Harbour', N'002', N'C', N'2001', N'', N'615101', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2254, N'3324', N'Inlet - Whangarei Harbour', N'002', N'C', N'2001', N'', N'615102', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2255, N'3325', N'Manukau Harbour', N'999', N'R', N'2001', N'2006', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2256, N'3326', N'Tidal-Manukau Harbour', N'008', N'C', N'2001', N'', N'617604', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2257, N'3327', N'Tamaki Strait', N'999', N'R', N'2001', N'2006', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2258, N'3328', N'Tidal-Tamaki', N'008', N'C', N'2001', N'', N'617702', N'023', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2259, N'3329', N'Oceanic-Hawke''s Bay Region', N'999', N'C', N'2001', N'', N'620903', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2260, N'3330', N'Oceanic-Auckland Region East', N'999', N'C', N'2006', N'', N'617501', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2261, N'3331', N'Tidal-Great Barrier Island', N'999', N'C', N'2006', N'', N'617502', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2262, N'3332', N'Tidal-Motutapu and Browns Islands', N'999', N'C', N'2006', N'', N'617503', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2263, N'3333', N'Inlet-Manukau Harbour', N'999', N'C', N'2006', N'', N'617605', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2264, N'3334', N'Tidal-Manukau Harbour  North', N'999', N'C', N'2006', N'', N'617606', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2265, N'3335', N'Tamaki Strait', N'999', N'C', N'2006', N'', N'617703', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2266, N'3336', N'Tidal-Eastern Bays', N'999', N'C', N'2006', N'', N'617704', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2267, N'3337', N'Inlet-Waitemata Harbour', N'999', N'C', N'2006', N'', N'617901', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2268, N'3338', N'Tidal-Waitemata Harbour', N'999', N'C', N'2006', N'', N'617902', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2269, N'3339', N'Auckland City-Marinas', N'007', N'C', N'2006', N'', N'617903', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2270, N'3340', N'Inlet-Wellington Harbour', N'999', N'C', N'2006', N'', N'622101', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2271, N'3341', N'Seaview Marina', N'999', N'C', N'2006', N'', N'622102', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2272, N'3400', N'Inlets - Banks Peninsula Bays', N'061', N'C', N'1991', N'', N'625102', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2273, N'3401', N'Oceanic - Canterbury Region South', N'999', N'C', N'1991', N'', N'625103', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2274, N'3402', N'Oceanic - Chatham Islands', N'999', N'C', N'1991', N'', N'625200', N'121', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2275, N'3403', N'Inlet - Port Timaru', N'064', N'C', N'1991', N'', N'625300', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2276, N'3404', N'Inlet - Otago Harbour', N'071', N'C', N'1991', N'', N'625800', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2277, N'3405', N'Inlet - Dunedin City Bays', N'071', N'C', N'1991', N'', N'625901', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2278, N'3406', N'Oceanic - Otago Region', N'999', N'C', N'1991', N'', N'625902', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2279, N'3407', N'Inlet - Port Oamaru', N'068', N'C', N'1991', N'', N'626000', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2280, N'3408', N'Inlet - Milford Sound', N'073', N'C', N'1991', N'', N'626100', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2281, N'3409', N'Dog Island', N'075', N'C', N'1991', N'', N'626500', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2282, N'3410', N'Campbell Island', N'999', N'R', N'1991', N'2001', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2283, N'3411', N'Centre Island', N'073', N'C', N'1991', N'', N'626700', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2284, N'3412', N'Inlet - Bluff Harbour', N'075', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2285, N'3413', N'Inlet - New River Estuary', N'075', N'C', N'1991', N'', N'626802', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2286, N'3414', N'Oceanic-Oil Rig Southland', N'999', N'C', N'1991', N'', N'626900', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2287, N'3415', N'Inlet - Jacobs River Estuary', N'073', N'R', N'1991', N'1996', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2288, N'3416', N'Oceanic - Southland Region', N'999', N'R', N'1991', N'2001', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2289, N'3417', N'Ross Dependency', N'999', N'C', N'1991', N'', N'', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2290, N'3500', N'Inlet - Bluff Harbour', N'075', N'C', N'1996', N'', N'626801', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2291, N'3501', N'Inlet - Jacobs River Estuary', N'073', N'C', N'1996', N'', N'627000', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2292, N'3502', N'Oceanic-Campbell Island', N'999', N'C', N'2001', N'', N'626601', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2293, N'3503', N'Campbell Island', N'999', N'C', N'2001', N'', N'626602', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2294, N'3504', N'Oceanic-Auckland Islands', N'999', N'C', N'2001', N'', N'627203', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2295, N'3505', N'Auckland Islands', N'999', N'C', N'2001', N'', N'627204', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2296, N'3506', N'NZ Economic Zone', N'999', N'C', N'2013', N'', N'666667', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2297, N'3507', N'Oceanic-Bounty Islands', N'999', N'C', N'2013', N'', N'666668', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2298, N'3508', N'Bounty Islands', N'999', N'C', N'2013', N'', N'666669', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2299, N'3509', N'Oceanic-Snares Islands', N'999', N'C', N'2013', N'', N'666670', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2300, N'3510', N'Snares Island', N'999', N'C', N'2013', N'', N'666671', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2301, N'3511', N'Oceanic-Antipodes Islands', N'999', N'C', N'2013', N'', N'666672', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2302, N'3512', N'Antipodes Islands', N'999', N'C', N'2013', N'', N'666673', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2303, N'9999', N'Overseas resident', N'998', N'C', N'1991', N'', N'', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2304, N'BD00', N'Unknown Area Health Board', N'999', N'C', N'1991', N'', N'', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2305, N'BD01', N'Northland Area Health board', N'999', N'C', N'1991', N'', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2306, N'BD02', N'Auckland Area Health Board', N'999', N'C', N'1991', N'', N'', N'999', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2307, N'BD03', N'Waikato Area Health Board', N'999', N'C', N'1991', N'', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2308, N'BD04', N'Bay of Plenty Area Health Board', N'999', N'C', N'1991', N'', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2309, N'BD05', N'Tairawhiti Area Health Board', N'999', N'C', N'1991', N'', N'', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2310, N'BD06', N'Hawke''s Bay Area Health Board', N'999', N'C', N'1991', N'', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2311, N'BD07', N'Taranaki Area Health Board', N'999', N'C', N'1991', N'', N'', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2312, N'BD08', N'Manawatu/Wanganui Area Health Board', N'999', N'C', N'1991', N'', N'', N'999', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2313, N'BD09', N'Wellington Area Health Board', N'999', N'C', N'1991', N'', N'', N'999', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2314, N'BD10', N'Nelson/Marlborough Area Health Board', N'999', N'C', N'1991', N'', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2315, N'BD11', N'Westland Area Health Board', N'999', N'C', N'1991', N'', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2316, N'BD12', N'Canterbury Area Health Board', N'999', N'C', N'1991', N'', N'', N'999', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2317, N'BD13', N'Otago Area Health Board', N'999', N'C', N'1991', N'', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2318, N'BD14', N'Southland Area Health Board', N'999', N'C', N'1991', N'', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2319, N'BD99', N'Area Health Board not applicable', N'999', N'C', N'1991', N'', N'', N'999', N'')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2320, N'D011', N'Northland District Health Board', N'999', N'C', N'1996', N'', N'', N'011', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2321, N'D021', N'Waitemata District Health Board', N'999', N'C', N'1996', N'', N'', N'021', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2322, N'D022', N'Auckland District Health Board', N'999', N'C', N'1996', N'', N'', N'022', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2323, N'D023', N'Counties Manukau District Health Board', N'999', N'C', N'1996', N'', N'', N'023', N'01')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2324, N'D031', N'Waikato District Health Board', N'999', N'C', N'1996', N'', N'', N'031', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2325, N'D042', N'Lakes District Health Board', N'999', N'C', N'1996', N'', N'', N'042', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2326, N'D047', N'Bay of Plenty District Health Board', N'999', N'C', N'1996', N'', N'', N'047', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2327, N'D051', N'Tairawhiti District Health Board', N'999', N'C', N'1996', N'', N'', N'051', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2328, N'D061', N'Hawkes Bay District Health Board', N'999', N'C', N'1996', N'', N'', N'061', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2329, N'D071', N'Taranaki District Health Board', N'999', N'C', N'1996', N'', N'', N'071', N'02')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2330, N'D081', N'Mid Central District Health Board', N'999', N'C', N'1996', N'', N'', N'081', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2331, N'D082', N'Whanganui District Health Board', N'999', N'C', N'1996', N'', N'', N'082', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2332, N'D091', N'Capital and Coast District Health Board', N'999', N'C', N'1996', N'', N'', N'091', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2333, N'D092', N'Hutt Valley District Health Board', N'999', N'C', N'1996', N'', N'', N'092', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2334, N'D093', N'Wairarapa District Health Board', N'999', N'C', N'1996', N'', N'', N'093', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2335, N'D101', N'Nelson Marlborough District Health Board', N'999', N'C', N'1996', N'', N'', N'101', N'03')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2336, N'D111', N'West Coast District Health Board', N'999', N'C', N'1996', N'', N'', N'111', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2337, N'D121', N'Canterbury District Health Board', N'999', N'C', N'1996', N'', N'', N'121', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2338, N'D123', N'South Canterbury District Health Board', N'999', N'C', N'1996', N'', N'', N'123', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2339, N'D131', N'Otago District Health Board', N'999', N'C', N'1996', N'', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2340, N'D141', N'Southland District Health Board', N'999', N'C', N'1996', N'', N'', N'160', N'04')
GO
INSERT [Domiciles] ([Id], [Code], [Description], [TLA], [Status], [YearOfCensus], [RetiredYear], [AU13], [DHB], [RHAReg]) VALUES (2341, N'D161', N'Southern District Health Board', N'999', N'C', N'1996', N'', N'', N'160', N'04')
GO
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'TLA', N'Status', N'YearOfCensus', N'RetiredYear', N'AU13', N'DHB', N'RHAReg') AND [object_id] = OBJECT_ID(N'[Domiciles]'))
    SET IDENTITY_INSERT [Domiciles] OFF;

COMMIT;
GO

/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Comment') AND [object_id] = OBJECT_ID(N'[ContactUsages]'))
    SET IDENTITY_INSERT [ContactUsages] ON;
GO	
INSERT [ContactUsages] ([Id], [Code], [Description], [Comment]) VALUES (1, N'B', N'Business', 'Business address');
GO
INSERT [ContactUsages] ([Id], [Code], [Description], [Comment]) VALUES (2, N'E', N'Emergency', 'Emergency address');
GO
INSERT [ContactUsages] ([Id], [Code], [Description], [Comment]) VALUES (3, N'P', N'Personal', 'Personal address');
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Comment') AND [object_id] = OBJECT_ID(N'[ContactUsages]'))
    SET IDENTITY_INSERT [ContactUsages] OFF;
GO


IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Comment') AND [object_id] = OBJECT_ID(N'[ContactTypes]'))
    SET IDENTITY_INSERT [ContactTypes] ON;
GO	
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (1, N'A', N'Monitored alarms', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (2, N'C', N'Mobile (cell phone)', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (3, N'E', N'Email', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (4, N'F', N'Facsimile', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (5, N'M', N'Electronic mail box', N'A specific, individual mail ''container'' provided by a particular vendor or agency (eg, Chat, Skype)');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (6, N'P', N'Pager', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (7, N'S', N'Short messaging service (SMS)', N'A text message');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (8, N'T', N'Telephone number', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (9, N'U', N'URL (Universal Resource Locator)', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (10, N'V', N'Videoconferencing', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (11, N'W', N'Web forum (social media)', N'');
GO



IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Comment') AND [object_id] = OBJECT_ID(N'[ContactTypes]'))
    SET IDENTITY_INSERT [ContactTypes] OFF;
GO
