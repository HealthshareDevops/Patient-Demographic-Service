CREATE TABLE [Genders] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(1) NULL,
    [Description] nvarchar(max) NULL,
    [Comment] nvarchar(max) NULL,
    [HL7AdministrativeGender] nvarchar(max) NULL,
    CONSTRAINT [PK_Genders] PRIMARY KEY ([Id])
)
