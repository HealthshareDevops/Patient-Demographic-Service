CREATE TABLE [Suffixes] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(5) NOT NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_Suffixes] PRIMARY KEY ([Id])
)
