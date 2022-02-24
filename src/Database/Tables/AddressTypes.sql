CREATE TABLE [AddressTypes] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(1) NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    [HL7PostalAddressUse] nvarchar(10) NULL,
    CONSTRAINT [PK_AddressTypes] PRIMARY KEY ([Id])
)
