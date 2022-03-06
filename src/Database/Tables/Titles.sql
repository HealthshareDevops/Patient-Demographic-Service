CREATE TABLE [Titles] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(10) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_Titles] PRIMARY KEY ([Id])
)
