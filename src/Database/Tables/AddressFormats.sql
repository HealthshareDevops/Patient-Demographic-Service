CREATE TABLE [AddressFormats] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    CONSTRAINT [PK_AddressFormats] PRIMARY KEY ([Id])
)
