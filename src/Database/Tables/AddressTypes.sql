CREATE TABLE [AddressTypes] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    [HL7PostalAddressUse] nvarchar(max) NULL,
    CONSTRAINT [PK_AddressTypes] PRIMARY KEY ([Id])
)
