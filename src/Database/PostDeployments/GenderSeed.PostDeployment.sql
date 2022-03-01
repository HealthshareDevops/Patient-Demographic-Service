IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description', N'HL7AdministrativeGender') AND [object_id] = OBJECT_ID(N'[Genders]'))
    SET IDENTITY_INSERT [Genders] ON;
INSERT INTO [Genders] ([Id], [Code], [Comment], [Description], [HL7AdministrativeGender])
VALUES (CAST(3 AS bigint), N'O', N'', N'Other Gender', N'O'),
(CAST(4 AS bigint), N'U', N'A proper value is applicable but is not provided', N'Unspecified or Unknown', N'UN'),
(CAST(1 AS bigint), N'F', N'', N'Female', N'F'),
(CAST(2 AS bigint), N'M', N'', N'Male', N'M');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description', N'HL7AdministrativeGender') AND [object_id] = OBJECT_ID(N'[Genders]'))
    SET IDENTITY_INSERT [Genders] OFF;
GO