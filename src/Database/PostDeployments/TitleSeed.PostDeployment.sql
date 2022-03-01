IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[Titles]'))
    SET IDENTITY_INSERT [Titles] ON;
INSERT INTO [Titles] ([Id], [Code], [Comment], [Description])
VALUES (CAST(52 AS bigint), N'MAJ', N'Military Personnel', N'Major'),
(CAST(51 AS bigint), N'LT GEN', N'Military Personnel', N'Lieutenant General'),
(CAST(50 AS bigint), N'LT COL', N'Military Personnel', N'Lieutenant Colonel'),
(CAST(49 AS bigint), N'LT CDR', N'Military Personnel', N'Lieutenant Commander'),
(CAST(48 AS bigint), N'LT', N'Military Personnel', N'Lieutenant'),
(CAST(47 AS bigint), N'LMED', N'Military Personnel', N'Leading Medic'),
(CAST(45 AS bigint), N'LAC', N'Military Personnel', N'Leading Aircraftman'),
(CAST(44 AS bigint), N'GPCAPT', N'Military Personnel', N'Group Captain'),
(CAST(42 AS bigint), N'FLTLT', N'Military Personnel', N'Flight Lieutenant'),
(CAST(41 AS bigint), N'FGOFF', N'Military Personnel', N'Flying Officer'),
(CAST(40 AS bigint), N'F/SGT', N'Military Personnel', N' Flight Sergeant');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[Titles]'))
    SET IDENTITY_INSERT [Titles] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[Titles]'))
    SET IDENTITY_INSERT [Titles] ON;
INSERT INTO [Titles] ([Id], [Code], [Comment], [Description])
VALUES (CAST(39 AS bigint), N'ENS', N'Personnel', N'Ensign Military'),
(CAST(53 AS bigint), N'MAJ GEN', N'Military Personnel', N'Major General'),
(CAST(38 AS bigint), N'CPOMED', N'Military Personnel', N'Chief Petty Officer Medic'),
(CAST(46 AS bigint), N'LCPL', N'Military Personnel', N'Lance Corporal'),
(CAST(43 AS bigint), N'GEN', N'Military Personnel', N'General'),
(CAST(62 AS bigint), N'SGN LTCDR', N'Military Personnel', N'Surgeon Lieutenant Commander'),
(CAST(55 AS bigint), N'OMT', N'Military Personnel', N'Ordinary Medical Assistant'),
(CAST(37 AS bigint), N'CPL', N'Military Personnel', N'Corporal'),
(CAST(70 AS bigint), N'WGCDR', N'Military Personnel', N'Wing Commander'),
(CAST(69 AS bigint), N'W/O', N'Military Personnel', N'Warrant Officer'),
(CAST(68 AS bigint), N'TPR', N'Military Personnel', N'Trooper'),
(CAST(67 AS bigint), N'SSGT', N'Military Personnel', N'Staff Sergeant'),
(CAST(66 AS bigint), N'SQNLDR', N'Military Personnel', N'Squadron Leader'),
(CAST(65 AS bigint), N'SPR', N'Military Personnel', N'Sapper'),
(CAST(64 AS bigint), N'SLT', N'Military Personnel', N'Sub Lieutenant'),
(CAST(63 AS bigint), N'SGT', N'Military Personnel', N'Sergeant'),
(CAST(61 AS bigint), N'SGN LT', N'Military Personnel', N'Surgeon Lieutenant'),
(CAST(60 AS bigint), N'SGN CDR', N'Military Personnel', N'Surgeon Commander'),
(CAST(59 AS bigint), N'RA', N'Military Personnel', N'Rear Admiral'),
(CAST(58 AS bigint), N'PTE', N'Military Personnel', N'Private'),
(CAST(57 AS bigint), N'POMED', N'Military Personnel', N'Petty Officer Medic'),
(CAST(56 AS bigint), N'PLTOFF', N'Military Personnel', N'Pilot Officer'),
(CAST(54 AS bigint), N'MID', N'Military Personnel', N'Midshipman'),
(CAST(36 AS bigint), N'COL', N'Military Personnel', N'Colonel'),
(CAST(16 AS bigint), N'MOST REV', N'Archbishop/Bishop/Catholic Priest', N'The Most Reverend'),
(CAST(34 AS bigint), N'CDR', N'Military Personnel', N'Commander'),
(CAST(13 AS bigint), N'REV', N'Title given to ministers of some religions', N'Reverend'),
(CAST(12 AS bigint), N'SIR', N'', N'Sir'),
(CAST(11 AS bigint), N'PROF', N'', N'Professor'),
(CAST(10 AS bigint), N'MASTER', N'', N'Master'),
(CAST(9 AS bigint), N'MS', N'', N'Ms'),
(CAST(8 AS bigint), N'MRS', N'', N'Mrs'),
(CAST(14 AS bigint), N'RIGHT REV', N'Anglican Bishop', N'The Right Reverend'),
(CAST(7 AS bigint), N'MR', N'', N'Mr'),
(CAST(5 AS bigint), N'LADY', N'', N'Lady'),
(CAST(4 AS bigint), N'HIS EXCEL', N'', N'His Excellency'),
(CAST(3 AS bigint), N'HER EXCEL', N'', N'Her Excellency'),
(CAST(2 AS bigint), N'DR', N'', N'Doctor'),
(CAST(1 AS bigint), N'DAME', N'', N'Dame'),
(CAST(71 AS bigint), N'WO', N'Military Personnel', N'Warrant Officer'),
(CAST(6 AS bigint), N'MISS', N'', N'Miss'),
(CAST(15 AS bigint), N'VERY REV', N'Dean', N'The Very Reverend');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[Titles]'))
    SET IDENTITY_INSERT [Titles] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[Titles]'))
    SET IDENTITY_INSERT [Titles] ON;
INSERT INTO [Titles] ([Id], [Code], [Comment], [Description])
VALUES (CAST(17 AS bigint), N'VEN', N'Archdeacon', N'The Venerable'),
(CAST(18 AS bigint), N'CARD', N'Catholic Priest', N'Cardinal'),
(CAST(33 AS bigint), N'CAPT', N'Military Personnel', N'Captain'),
(CAST(32 AS bigint), N'BRIG', N'Military Personnel', N'Brigadier'),
(CAST(31 AS bigint), N'BDR', N'Military Personnel', N'Bombardier'),
(CAST(30 AS bigint), N'AVM', N'Military Personnel', N'Air Vice Marshal'),
(CAST(29 AS bigint), N'AMT', N'Military Personnel', N'Able Medical Assistant'),
(CAST(28 AS bigint), N'AM', N'Military Personnel', N'Air Marshal'),
(CAST(27 AS bigint), N'AIRCDRE', N'Military Personnel', N'Air Commodore'),
(CAST(26 AS bigint), N'AC', N'Military Personnel', N'Aircraftman'),
(CAST(25 AS bigint), N'RT HON', N'The Right Honourable, Prime Minister or Privy Councillor', N'The Right Honourable'),
(CAST(24 AS bigint), N'HON', N'Executive Council, Speaker, Appeal/High Court and Supreme Court Judges', N'The Honourable'),
(CAST(23 AS bigint), N'SISTER', N'Of a Religious Order', N'Sister'),
(CAST(22 AS bigint), N'FR', N'Of a Religious Order', N'Father'),
(CAST(21 AS bigint), N'BR', N'Of a Religious Order', N'Brother'),
(CAST(20 AS bigint), N'CANON', N'Priest', N'Canon'),
(CAST(19 AS bigint), N'MON', N'Catholic Priest', N'Monsignor'),
(CAST(35 AS bigint), N'CDRE', N'Military Personnel', N'Commodore'),
(CAST(72 AS bigint), N'WOMED', N'Military Personnel', N'Warrant Officer Medic');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[Titles]'))
    SET IDENTITY_INSERT [Titles] OFF;
GO