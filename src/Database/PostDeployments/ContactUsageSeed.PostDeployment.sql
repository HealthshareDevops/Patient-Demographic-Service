
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