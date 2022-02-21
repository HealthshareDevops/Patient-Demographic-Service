CREATE TABLE [Titles] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(10) NULL,
    [Description] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    CONSTRAINT [PK_Titles] PRIMARY KEY ([Id])
)
