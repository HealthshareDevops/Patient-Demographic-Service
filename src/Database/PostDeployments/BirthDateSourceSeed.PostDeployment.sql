IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[BirthDateSources]'))
    SET IDENTITY_INSERT [BirthDateSources] ON;
INSERT INTO [BirthDateSources] ([Id], [Code], [Comment], [Description])
VALUES (CAST(9 AS bigint), N'NZPV', N'A New Zealand Permanent Resident Visa(not time bound) issued by Immigration New Zealand', N'NZ Permanent Resident Visa'),
(CAST(10 AS bigint), N'NZTV', N'A New Zealand Resident Visa(time bound) issued by Immigration New Zealand', N'NZ Resident Visa'),
(CAST(8 AS bigint), N'NZET', N'', N'NZ Emergency Travel Document'),
(CAST(12 AS bigint), N'OTHR', N'Other official document provided', N'Other'),
(CAST(11 AS bigint), N'NZRT', N'', N'NZ Refugee Travel Document'),
(CAST(7 AS bigint), N'NZCT', N'New Zealand Citizenship Certificate issued by Department of Internal Affairs', N'NZ Citizenship Certificate'),
(CAST(13 AS bigint), N'PPRT', N'An overseas passport is acceptable', N'Passport'),
(CAST(5 AS bigint), N'NPRF', N'Information(not proof) provided by the patient/whÄnau', N'Proof Not Sighted'),
(CAST(4 AS bigint), N'MIGR', N'From the legacy NHI system', N'Migrated'),
(CAST(3 AS bigint), N'HL7', N'Date of birth has been applied via HL7 message', N'HL7 applied'),
(CAST(2 AS bigint), N'BREG', N'Only applied by the Ministry of Health update from matching with the Birth Register', N'Birth Register'),
(CAST(1 AS bigint), N'BRCT', N'An overseas birth certificate is acceptable', N'Birth Certificate'),
(CAST(6 AS bigint), N'NZCI', N'', N'NZ Certificate of Identity');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[BirthDateSources]'))
    SET IDENTITY_INSERT [BirthDateSources] OFF;
GO