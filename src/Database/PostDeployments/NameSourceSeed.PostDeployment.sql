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

