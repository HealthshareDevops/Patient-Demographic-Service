IF NOT EXISTS (SELECT TOP 1 1 FROM [AddressFormats])
    BEGIN 
        IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[AddressFormats]'))
            SET IDENTITY_INSERT [AddressFormats] ON;
        INSERT INTO [AddressFormats] ([Id], [Code], [Comment], [Description])
        VALUES (CAST(1 AS bigint), N'CIQ', N'', N'NZ CIQ Address Profile'),
        (CAST(2 AS bigint), N'POST', N'', N'NZ Post Address Standard');
        IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[AddressFormats]'))
            SET IDENTITY_INSERT [AddressFormats] OFF;
    END
GO
