CREATE TABLE [Genders] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(1) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    [HL7AdministrativeGender] nvarchar(10) NULL,
    CONSTRAINT [PK_Genders] PRIMARY KEY ([Id])
)
