CREATE TABLE [Ethnicities] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Priority] nvarchar(max) NULL,
    CONSTRAINT [PK_Ethnicities] PRIMARY KEY ([Id])
)
