IF NOT EXISTS (SELECT TOP 1 1 FROM [AddressTypes])
    BEGIN 
        IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description', N'HL7PostalAddressUse') AND [object_id] = OBJECT_ID(N'[AddressTypes]'))
            SET IDENTITY_INSERT [AddressTypes] ON;
        INSERT INTO [AddressTypes] ([Id], [Code], [Comment], [Description], [HL7PostalAddressUse])
        VALUES (CAST(1 AS bigint), N'M', N'', N'Mailing', N'PST'),
        (CAST(2 AS bigint), N'R', N'', N'Residential', N'H');
        IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description', N'HL7PostalAddressUse') AND [object_id] = OBJECT_ID(N'[AddressTypes]'))
            SET IDENTITY_INSERT [AddressTypes] OFF;
    END
GO
