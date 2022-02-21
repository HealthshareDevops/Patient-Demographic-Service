CREATE TABLE [Countries] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    CONSTRAINT [PK_Countries] PRIMARY KEY ([Id])
)
