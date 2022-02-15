CREATE TABLE [Suffixes] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(5) NULL,
    [Comment] nvarchar(max) NULL,
    CONSTRAINT [PK_Suffixes] PRIMARY KEY ([Id])
)
