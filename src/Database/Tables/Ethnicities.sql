CREATE TABLE [Ethnicities] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(4) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Priority] nvarchar(200) NULL,
    CONSTRAINT [PK_Ethnicities] PRIMARY KEY ([Id])
)
