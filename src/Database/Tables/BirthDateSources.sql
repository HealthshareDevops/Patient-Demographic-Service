﻿CREATE TABLE [BirthDateSources] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(4) NULL,
    [Description] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    CONSTRAINT [PK_BirthDateSources] PRIMARY KEY ([Id])
)