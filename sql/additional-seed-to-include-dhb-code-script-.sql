/**
  * Additional Contact Types To Include DHB Code Sets
  */
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Comment') AND [object_id] = OBJECT_ID(N'[ContactTypes]'))
    SET IDENTITY_INSERT [ContactTypes] ON;
GO	
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (12, N'CP', N'Mobile', N'DHB code');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (13, N'FX', N'Facsimile', N'DHB code');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (14, N'Internet', N'Email', N'DHB code');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (15, N'NET', N'Email', N'DHB code');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (16, N'PH', N'Telephone', N'DHB code');
GO
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Comment') AND [object_id] = OBJECT_ID(N'[ContactTypes]'))
    SET IDENTITY_INSERT [ContactTypes] OFF;
GO