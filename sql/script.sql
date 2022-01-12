BEGIN TRANSACTION;
GO

CREATE TABLE [NameSources] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    CONSTRAINT [PK_NameSources] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Suffixes] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    CONSTRAINT [PK_Suffixes] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Titles] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    CONSTRAINT [PK_Titles] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Patients] (
    [Id] bigint NOT NULL IDENTITY,
    [Nhi] nvarchar(450) NOT NULL,
    CONSTRAINT [PK_Patients] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [HumanNames] (
    [Id] bigint NOT NULL IDENTITY,
    [TitleId] bigint NULL,
    [GivenName] nvarchar(max) NULL,
    [MiddleName] nvarchar(max) NULL,
    [FamilyName] nvarchar(max) NULL,
    [SuffixId] bigint NULL,
    [IsPreferred] bit NOT NULL,
    [IsProtected] bit NOT NULL,
    [NameSourceId] bigint NULL,
    [EffectiveFrom] nvarchar(max) NULL,
    [EffectiveTo] nvarchar(max) NULL,
    [PatientId] bigint NULL,
    CONSTRAINT [PK_HumanNames] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_HumanNames_NameSources_NameSourceId] FOREIGN KEY ([SourceId]) REFERENCES [NameSources] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_HumanNames_Patients_PatientId] FOREIGN KEY ([PatientId]) REFERENCES [Patients] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_HumanNames_Suffixes_SuffixId] FOREIGN KEY ([SuffixId]) REFERENCES [Suffixes] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_HumanNames_Titles_TitleId] FOREIGN KEY ([TitleId]) REFERENCES [Titles] ([Id]) ON DELETE NO ACTION
);
GO

CREATE INDEX [IX_HumanNames_PatientId] ON [HumanNames] ([PatientId]);
GO

CREATE INDEX [IX_HumanNames_NameSourceId] ON [HumanNames] ([NameSourceId]);
GO

CREATE INDEX [IX_HumanNames_SuffixId] ON [HumanNames] ([SuffixId]);
GO

CREATE INDEX [IX_HumanNames_TitleId] ON [HumanNames] ([TitleId]);
GO

CREATE UNIQUE INDEX [IX_Patients_Nhi] ON [Patients] ([Nhi]);
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[NameSources]'))
    SET IDENTITY_INSERT [NameSources] ON;
INSERT INTO [NameSources] ([Id], [Code], [Comment], [Description])
VALUES (CAST(12 AS bigint), N'PPRT', N'', N'Passport'),
(CAST(11 AS bigint), N'OTHR', N'Other official documents', N'Other'),
(CAST(10 AS bigint), N'NZRT', N'', N'NZ Refugee Travel Document'),
(CAST(8 AS bigint), N'NZPV', N'A New Zealand Permanent Resident Visa(not time bound) issued by Immigration New Zealand', N'NZ Permanent Resident Visa'),
(CAST(7 AS bigint), N'NZET', N'', N'NZ Emergency Travel Document'),
(CAST(9 AS bigint), N'NZTV', N'A New Zealand Resident Visa(time bound) issued by Immigration New Zealand', N'NZ Resident Visa'),
(CAST(5 AS bigint), N'NZCI', N'', N'NZ Certificate of Identity'),
(CAST(4 AS bigint), N'NPRF', N'Information(not proof) provided by the patient / whÄnau', N'Proof Not Sighted'),
(CAST(3 AS bigint), N'HL7', N'Name information source has been applied via the legacy NHI system', N'HL7 applied'),
(CAST(2 AS bigint), N'BREG', N'', N'Birth Register'),
(CAST(1 AS bigint), N'BRCT', N'', N'Birth Certificate'),
(CAST(6 AS bigint), N'NZCT', N'', N'NZ Citizenship Certificate');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[NameSources]'))
    SET IDENTITY_INSERT [NameSources] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment') AND [object_id] = OBJECT_ID(N'[Suffixes]'))
    SET IDENTITY_INSERT [Suffixes] ON;
INSERT INTO [Suffixes] ([Id], [Code], [Comment])
VALUES (CAST(54 AS bigint), N'MBE', N'Member of the Order of the British Empire'),
(CAST(59 AS bigint), N'MP', N'Member of Parliament'),
(CAST(58 AS bigint), N'MNZM', N'Member of the New Zealand Order of Merit'),
(CAST(57 AS bigint), N'MM', N'Military Medal'),
(CAST(56 AS bigint), N'MID', N'Mentioned in Dispatches'),
(CAST(60 AS bigint), N'MVO', N'Member of the Royal Victorian Order'),
(CAST(55 AS bigint), N'MC', N'Military Cross'),
(CAST(53 AS bigint), N'LVO', N'Lieutenant of the Royal Victorian Order');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment') AND [object_id] = OBJECT_ID(N'[Suffixes]'))
    SET IDENTITY_INSERT [Suffixes] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment') AND [object_id] = OBJECT_ID(N'[Suffixes]'))
    SET IDENTITY_INSERT [Suffixes] ON;
INSERT INTO [Suffixes] ([Id], [Code], [Comment])
VALUES (CAST(46 AS bigint), N'KCMG ', N'Knight Commander, Order of St Michael and St George'),
(CAST(51 AS bigint), N'LG', N'Lady of the Garter'),
(CAST(50 AS bigint), N'KT', N'Knight of the Thistle, Order of the Thistle'),
(CAST(49 AS bigint), N'KNZM', N'Knight Companion, the New Zealand Order of Merit'),
(CAST(48 AS bigint), N'KG', N'Knight of the Garter, Order of the Garter'),
(CAST(47 AS bigint), N'KCVO', N'Knight Commander, Royal Victorian Order'),
(CAST(43 AS bigint), N'JP', N'Justice of the Peace'),
(CAST(45 AS bigint), N'KCB', N'Knight Commander, Order of the Bath'),
(CAST(44 AS bigint), N'KBE', N'Knight Commander, Order of the British Empire'),
(CAST(52 AS bigint), N'LT', N'Lady of the Thistle'),
(CAST(61 AS bigint), N'NZC', N'New Zealand Cross'),
(CAST(69 AS bigint), N'QFSM', N'Queenâ€™s Fire Service Medal for Distinguished Service'),
(CAST(63 AS bigint), N'OM', N' Member of the Order of Merit'),
(CAST(81 AS bigint), N'WKB', N'Wife of Knight Bachelor, Baronet or Peer of the Realm'),
(CAST(80 AS bigint), N'VRD', N'Royal New Zealand Naval Volunteer Reserve Decoration'),
(CAST(79 AS bigint), N'VC', N'Victoria Cross'),
(CAST(78 AS bigint), N'SNR', N'Senior'),
(CAST(77 AS bigint), N'RVM', N'Royal Victorian Medal'),
(CAST(76 AS bigint), N'RRC', N'Royal Red Cross'),
(CAST(75 AS bigint), N'RD', N'Royal New Zealand Naval Reserve Decoration'),
(CAST(74 AS bigint), N'QSO', N'Companion of the Queenâ€™s Service Order'),
(CAST(73 AS bigint), N'QSM', N'Queenâ€™s Service Medal'),
(CAST(72 AS bigint), N'QPM', N'Queenâ€™s Police Medal for Distinguished Service'),
(CAST(71 AS bigint), N'QHP', N'Queenâ€™s Honorary Physician'),
(CAST(70 AS bigint), N'QGM', N'Queenâ€™s Gallantry Medal'),
(CAST(68 AS bigint), N'QCVSA', N'Queenâ€™s Commendation for Valuable Service in the Air'),
(CAST(67 AS bigint), N'QCBC', N'Queenâ€™s Commendation for Brave Conduct'),
(CAST(66 AS bigint), N'QC', N'Queenâ€™s Counsel'),
(CAST(65 AS bigint), N'ONZM', N'Officer of the New Zealand Order of Merit'),
(CAST(64 AS bigint), N'ONZ', N'Member of the Order of New Zealand'),
(CAST(62 AS bigint), N'OBE', N'Officer of the Order of the British Empire'),
(CAST(42 AS bigint), N'JNR', N'Junior'),
(CAST(21 AS bigint), N'DCB', N'Dame Commander of the Order of the Bath'),
(CAST(40 AS bigint), N'GNZM', N'Dame/Knight Grand Companion of the New Zealand Order of Merit'),
(CAST(17 AS bigint), N'CNZM', N'Companion of the New Zealand Order of Merit'),
(CAST(16 AS bigint), N'CMG', N'Companion of the Order of St Michael and St George'),
(CAST(15 AS bigint), N'CH ', N'Companion of Honour, Order of the Companions of Honour'),
(CAST(14 AS bigint), N'CGM', N'Conspicuous Gallantry Medal'),
(CAST(13 AS bigint), N'CGC', N'Conspicuous Gallantry Cross'),
(CAST(12 AS bigint), N'CBE', N'Commander of the Order of the British Empire'),
(CAST(11 AS bigint), N'CB', N'Companion of the Order of the Bath'),
(CAST(10 AS bigint), N'BT', N'Baronet');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment') AND [object_id] = OBJECT_ID(N'[Suffixes]'))
    SET IDENTITY_INSERT [Suffixes] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment') AND [object_id] = OBJECT_ID(N'[Suffixes]'))
    SET IDENTITY_INSERT [Suffixes] ON;
INSERT INTO [Suffixes] ([Id], [Code], [Comment])
VALUES (CAST(9 AS bigint), N'BEM', N'British Empire Medal'),
(CAST(8 AS bigint), N'ARRC', N'Associate of the Royal Red Cross'),
(CAST(7 AS bigint), N'AFM', N'Air Force Medal'),
(CAST(6 AS bigint), N'AFC', N'Air Force Cross'),
(CAST(5 AS bigint), N'AE', N'Air Efficiency Award'),
(CAST(4 AS bigint), N'ADC', N'Aide-de-Camp'),
(CAST(3 AS bigint), N'3RD', N'The Third'),
(CAST(1 AS bigint), N'1ST', N'The First'),
(CAST(41 AS bigint), N'ISO', N'Companion of the Imperial Service Order'),
(CAST(18 AS bigint), N'CSO', N'Companion of the Distinguished Service Order'),
(CAST(19 AS bigint), N'CVO', N'Commander of the Royal Victorian Order'),
(CAST(2 AS bigint), N'2ND', N'The Second'),
(CAST(22 AS bigint), N'DCM', N'Distinguished Conduct Medal'),
(CAST(20 AS bigint), N'DBE', N'Dame Commander of the Order of the British Empire'),
(CAST(37 AS bigint), N'GCMG', N'Dame/Knight Grand Cross, Order of St Michael and St George'),
(CAST(36 AS bigint), N'GCB', N'Dame/Knight Grand Cross, Order of the Bath'),
(CAST(35 AS bigint), N'GC', N'George Cross'),
(CAST(34 AS bigint), N'GBE', N'Dame/Knight Grand Cross, Order of the British Empire'),
(CAST(33 AS bigint), N'EM', N'Efficiency Medal'),
(CAST(32 AS bigint), N'ED ', N'Efficiency Decoration'),
(CAST(31 AS bigint), N'DSO', N'Distinguished Service Order'),
(CAST(38 AS bigint), N'GCVO', N'Dame/Knight Grand Cross, Royal Victorian Order'),
(CAST(29 AS bigint), N'DSC', N'Distinguished Service Cross'),
(CAST(23 AS bigint), N'DCMG', N'Dame Commander of the Order of St Michael and St George'),
(CAST(30 AS bigint), N'DSM', N'Distinguished Service Medal'),
(CAST(24 AS bigint), N'DCNZM', N'Distinguished Companion of the New Zealand Order of Merit'),
(CAST(39 AS bigint), N'GM', N'George Medal'),
(CAST(26 AS bigint), N'DFC', N'Distinguished Flying Cross'),
(CAST(27 AS bigint), N'DFM', N'Distinguished Flying Medal'),
(CAST(28 AS bigint), N'DNZM', N'Dame Companion of the New Zealand Order of Merit'),
(CAST(25 AS bigint), N'DCVO', N'Dame Commander of the Royal Victorian Order');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment') AND [object_id] = OBJECT_ID(N'[Suffixes]'))
    SET IDENTITY_INSERT [Suffixes] OFF;
GO

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

COMMIT;
GO