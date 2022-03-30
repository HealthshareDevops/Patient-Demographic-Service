IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Priority') AND [object_id] = OBJECT_ID(N'[Ethnicities]'))
    SET IDENTITY_INSERT [Ethnicities] ON;
INSERT INTO [Ethnicities] ([Id], [Code], [Description], [Priority])
VALUES (CAST(15 AS bigint), N'42', N'Chinese', N'12'),
(CAST(26 AS bigint), N'99', N'Not stated', N'99'),
(CAST(25 AS bigint), N'97', N'Response unidentifiable', N'97'),
(CAST(24 AS bigint), N'95', N'Refused to answer', N'95'),
(CAST(23 AS bigint), N'94', N'Do not know', N'94'),
(CAST(22 AS bigint), N'61', N'Other ethnicity', N'18'),
(CAST(21 AS bigint), N'54', N'Other(retired on 1/07/2009)', N'19'),
(CAST(19 AS bigint), N'52', N'Latin American / Hispanic', N'15'),
(CAST(18 AS bigint), N'51', N'Middle Eastern', N'17'),
(CAST(17 AS bigint), N'44', N'Other Asian', N'13'),
(CAST(16 AS bigint), N'43', N'Indian', N'11'),
(CAST(14 AS bigint), N'41', N'Southeast Asian', N'10'),
(CAST(20 AS bigint), N'53', N'African', N'16'),
(CAST(12 AS bigint), N'37', N'Other Pacific Island', N'8'),
(CAST(13 AS bigint), N'40', N'Asian not further defined', N'14'),
(CAST(2 AS bigint), N'11', N'NZ European', N'22'),
(CAST(3 AS bigint), N'12', N'Other European', N'20'),
(CAST(4 AS bigint), N'21', N'NZ Maori', N'1'),
(CAST(5 AS bigint), N'30', N'Pacific Island not further defined', N'9'),
(CAST(6 AS bigint), N'31', N'Samoan', N'7  '),
(CAST(1 AS bigint), N'10', N'European not further defined', N'21'),
(CAST(7 AS bigint), N'32', N'Cook Island Maori', N'6'),
(CAST(8 AS bigint), N'33', N'Tongan', N'5'),
(CAST(9 AS bigint), N'34', N'Niuean', N'4'),
(CAST(10 AS bigint), N'35', N'Tokelauan', N'2'),
(CAST(11 AS bigint), N'36', N'Fijian', N'3');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Priority') AND [object_id] = OBJECT_ID(N'[Ethnicities]'))
    SET IDENTITY_INSERT [Ethnicities] OFF;
GO