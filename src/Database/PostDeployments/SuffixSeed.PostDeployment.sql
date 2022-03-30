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