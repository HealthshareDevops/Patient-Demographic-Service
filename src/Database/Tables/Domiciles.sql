﻿CREATE TABLE [Domiciles]
(
	[Id] BIGINT NOT NULL IDENTITY, 
    [Code] NVARCHAR(4) NOT NULL, 
    [Description] NVARCHAR(200) NULL, 
    [TLA] NVARCHAR(10) NULL, 
    [Status] NVARCHAR(10) NULL, 
    [YearOfCensus] NVARCHAR(10) NULL, 
    [RetiredYear] NVARCHAR(10) NULL, 
    [AU13] NVARCHAR(10) NULL, 
    [DHB] NVARCHAR(10) NULL, 
    [RHAReg] NVARCHAR(10) NULL,
    CONSTRAINT [PK_Domiciles] PRIMARY KEY ([Id])
)
