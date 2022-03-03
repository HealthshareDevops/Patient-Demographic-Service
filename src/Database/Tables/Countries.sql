CREATE TABLE [Countries] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(4) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_Countries] PRIMARY KEY ([Id])
)
