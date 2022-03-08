IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Description', N'Comment') AND [object_id] = OBJECT_ID(N'[ContactTypes]'))
    SET IDENTITY_INSERT [ContactTypes] ON;
GO	
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (1, N'A', N'Monitored alarms', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (2, N'C', N'Mobile (cell phone)', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (3, N'E', N'Email', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (4, N'F', N'Facsimile', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (5, N'M', N'Electronic mail box', N'A specific, individual mail ''container'' provided by a particular vendor or agency (eg, Chat, Skype)');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (6, N'P', N'Pager', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (7, N'S', N'Short messaging service (SMS)', N'A text message');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (8, N'T', N'Telephone number', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (9, N'U', N'URL (Universal Resource Locator)', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (10, N'V', N'Videoconferencing', N'');
GO
INSERT [ContactTypes] ([Id], [Code], [Description], [Comment]) VALUES (11, N'W', N'Web forum (social media)', N'');
GO