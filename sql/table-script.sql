BEGIN TRANSACTION;
GO

/**
  * Tables
**/
CREATE TABLE [AddressFormats] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(10) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_AddressFormats] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [AddressTypes] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(1) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    [HL7PostalAddressUse] nvarchar(10) NULL,
    CONSTRAINT [PK_AddressTypes] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [BirthDateSources] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(4) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_BirthDateSources] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Countries] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(4) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_Countries] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Domiciles]
(
	[Id] BIGINT NOT NULL IDENTITY, 
    [Code] NVARCHAR(4) NOT NULL, 
    [Description] NVARCHAR(200) NULL, 
    [TLA] NVARCHAR(10) NULL, 
    [Status] NVARCHAR(10) NULL, 
    [YearOfCensus] NVARCHAR(10) NULL, 
    [RetiredYear] NVARCHAR(10) NULL, 
    [AU13] NVARCHAR(10) NULL, 
    [DHB] NVARCHAR(10) NULL, 
    [RHAReg] NVARCHAR(10) NULL,
    CONSTRAINT [PK_Domiciles] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Ethnicities] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(4) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Priority] nvarchar(200) NULL,
    CONSTRAINT [PK_Ethnicities] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Genders] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(1) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    [HL7AdministrativeGender] nvarchar(10) NULL,
    CONSTRAINT [PK_Genders] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [NameSources] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(4) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_NameSources] PRIMARY KEY ([Id])
);
GO


CREATE TABLE [Suffixes] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(5) NOT NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_Suffixes] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Titles] (
    [Id] bigint NOT NULL IDENTITY,
    [Code] nvarchar(10) NOT NULL,
    [Description] nvarchar(200) NULL,
    [Comment] nvarchar(200) NULL,
    CONSTRAINT [PK_Titles] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Patients] (
    [Id] bigint NOT NULL IDENTITY,
    [Nhi] nvarchar(7) NOT NULL,
    [BirthDate] nvarchar(8) NOT NULL,
    [BirthDateSourceId] bigint NULL,
    [GenderId] bigint NULL,
    [CreatedBy] nvarchar(40) NULL,
    [CreatedDate] datetime2(7) NULL,
    [LastModifiedBy] nvarchar(40) NULL,
    [LastModifiedDate] datetime2(7) NULL,
    CONSTRAINT [PK_Patients] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Patients_BirthDateSources_BirthDateSourceId] FOREIGN KEY ([BirthDateSourceId]) REFERENCES [BirthDateSources] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Patients_Genders_GenderId] FOREIGN KEY ([GenderId]) REFERENCES [Genders] ([Id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [Addresses] (
    [Id] bigint NOT NULL IDENTITY,
    [AddressFormatId] bigint NULL,
    [BuildingName] nvarchar(max) NULL,
    [StreetAddress] nvarchar(100) NOT NULL,
    [AdditionalStreetAddress] nvarchar(100) NULL,
    [Suburb] nvarchar(50) NULL,
    [TownOrCity] nvarchar(50) NULL,
    [PostCode] nvarchar(15) NULL,
    [CountryId] bigint NULL,
    [IsProtected] bit NOT NULL DEFAULT 0,
    [IsPermanent] bit NOT NULL DEFAULT 0,
    [EffectiveFrom] nvarchar(8) NULL,
    [EffectiveTo] nvarchar(8) NULL,
    [DomicileId] bigint NULL,
    [IsPrimary] bit NOT NULL DEFAULT 0,
    [AddressTypeId] bigint NULL,
    [PatientId] bigint NULL,
    CONSTRAINT [PK_Addresses] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Addresses_AddressFormats_AddressFormatId] FOREIGN KEY ([AddressFormatId]) REFERENCES [AddressFormats] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Addresses_AddressTypes_AddressTypeId] FOREIGN KEY ([AddressTypeId]) REFERENCES [AddressTypes] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Addresses_Countries_CountryId] FOREIGN KEY ([CountryId]) REFERENCES [Countries] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Addresses_Domiciles_DomicileId] FOREIGN KEY ([DomicileId]) REFERENCES [Domiciles] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Addresses_Patients_PatientId] FOREIGN KEY ([PatientId]) REFERENCES [Patients] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [HumanNames] (
    [Id] bigint NOT NULL IDENTITY,
    [TitleId] bigint NULL,
    [GivenName] nvarchar(50) NULL,
    [MiddleName] nvarchar(100) NULL,
    [FamilyName] nvarchar(100) NULL,
    [SuffixId] bigint NULL,
    [IsPreferred] bit NOT NULL,
    [IsProtected] bit NOT NULL,
    [NameSourceId] bigint NULL,
    [EffectiveFrom] nvarchar(8) NULL,
    [EffectiveTo] nvarchar(8) NULL,
    [PatientId] bigint NULL,
    CONSTRAINT [PK_HumanNames] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_HumanNames_NameSources_NameSourceId] FOREIGN KEY ([NameSourceId]) REFERENCES [NameSources] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_HumanNames_Patients_PatientId] FOREIGN KEY ([PatientId]) REFERENCES [Patients] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_HumanNames_Suffixes_SuffixId] FOREIGN KEY ([SuffixId]) REFERENCES [Suffixes] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_HumanNames_Titles_TitleId] FOREIGN KEY ([TitleId]) REFERENCES [Titles] ([Id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [PatientEthnicities]
(
	[PatientId] BIGINT NOT NULL,
	[EthnicityId] BIGINT NOT NULL,
	CONSTRAINT [PK_PatientEthnicities] PRIMARY KEY ([PatientId], [EthnicityId]),
	CONSTRAINT [FK_PatientEthnicities_Patients_PatientId] FOREIGN KEY([PatientId]) REFERENCES [Patients]([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_PatientEthnicities_Ethnicities_EthnicityId] FOREIGN KEY([EthnicityId]) REFERENCES [Ethnicities]([Id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [ContactTypes]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [Code] NVARCHAR(10) NOT NULL, 
    [Description] NVARCHAR(200) NULL, 
    [Comment] NVARCHAR(200) NULL
)
GO

CREATE TABLE [ContactUsages]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [Code] NVARCHAR NOT NULL, 
    [Description] NVARCHAR(200) NULL, 
    [Comment] NVARCHAR(200) NULL
)
GO

CREATE TABLE [Contacts]
(
	[Id] BIGINT NOT NULL IDENTITY, 
    [ContactUsageId] BIGINT NULL, 
    [ContactTypeId] BIGINT NULL, 
    [Detail] NVARCHAR(255) NOT NULL, 
    [IsProtected] BIT NOT NULL DEFAULT 0, 
    [EffectiveFrom] NVARCHAR(8) NULL, 
    [EffectiveTo] NVARCHAR(8) NULL, 
    [IsPreferred] BIT NOT NULL DEFAULT 0,
    [PatientId] BIGINT NULL,
    CONSTRAINT [PK_Contacts] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Contacts_ContactUsages_ContactUsageId] FOREIGN KEY ([ContactUsageId]) REFERENCES [ContactUsages]([Id]),
    CONSTRAINT [FK_Contacts_ContactTypes_ContactTypeId] FOREIGN KEY ([ContactTypeId]) REFERENCES [ContactTypes]([Id]),
    CONSTRAINT [FK_Contacts_Patients_PatientId] FOREIGN KEY ([PatientId]) REFERENCES [Patients] ([Id]) ON DELETE CASCADE,
);
GO

CREATE TABLE [Identifiers]
(
	[Id] BIGINT  NOT NULL IDENTITY, 
    [Nhi] NVARCHAR(7) NOT NULL, 
    [IsMajor] BIT NOT NULL DEFAULT 0, 
    [PatientId] BIGINT NOT NULL,
    CONSTRAINT [PK_Identifiers] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Identifiers_Patients_PatientId] FOREIGN KEY([PatientId]) REFERENCES [Patients]([Id]) ON DELETE CASCADE
);
GO

/**
  *  Indices
**/
CREATE INDEX [IX_Addresses_AddressFormatId] ON [Addresses] ([AddressFormatId]);
GO

CREATE INDEX [IX_Addresses_AddressTypeId] ON [Addresses] ([AddressTypeId]);
GO

CREATE INDEX [IX_Addresses_PatientId] ON [Addresses] ([PatientId]);
GO

CREATE INDEX [IX_HumanNames_PatientId] ON [HumanNames] ([PatientId]);
GO

CREATE INDEX [IX_HumanNames_NameSourceId] ON [HumanNames] ([NameSourceId]);
GO

CREATE INDEX [IX_HumanNames_SuffixId] ON [HumanNames] ([SuffixId]);
GO

CREATE INDEX [IX_HumanNames_TitleId] ON [HumanNames] ([TitleId]);
GO

CREATE INDEX [IX_Patients_BirthDateSourceId] ON [Patients] ([BirthDateSourceId]);
GO

CREATE INDEX [IX_Patients_GenderId] ON [Patients] ([GenderId]);
GO

CREATE UNIQUE INDEX [IX_Patients_Nhi] ON [Patients] ([Nhi]);
GO

COMMIT;
GO

/**
*	Drop Index
*/
DROP INDEX IF EXISTS IX_Patients_Nhi ON [dbo].[Patients]
GO

/**
  * Drop Column
  */
ALTER TABLE [dbo].[Patients] 
DROP COLUMN IF EXISTS [Nhi]
GO

/**
  * Add column "EventDate" in the "Patients" table 
  */
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Patients' AND COLUMN_NAME = 'EventDate')
BEGIN
  ALTER TABLE Patients
  ADD EventDate NVARCHAR(14) NULL
END;


-- Adding Indexes
-- ***************

/**
 *  Index Addresses
 */
CREATE INDEX [IX_Addresses_CountryId] ON [Addresses] ([CountryId])
CREATE INDEX [IX_Addresses_DomicileId] ON [Addresses] ([DomicileId])

/**
 *  Index Contacts
 */
CREATE INDEX [IX_Contacts_ContactUsageId] ON [Contacts] ([ContactUsageId])
CREATE INDEX [IX_Contacts_ContactTypeId] ON [Contacts] ([ContactTypeId])
CREATE INDEX [IX_Contacts_PatientId] ON [Contacts] ([PatientId])

/**
 *  Index PatientEthnicities
 */
CREATE INDEX [IX_PatientEthnicities_PatientId] ON [PatientEthnicities] ([PatientId])
CREATE INDEX [IX_PatientEthnicities_EthnicityId] ON [PatientEthnicities] ([EthnicityId])

/**
 *  Index Identifiers
 */
CREATE INDEX [IX_Identifiers_PatientId] ON [Identifiers] ([PatientId]);
CREATE INDEX [IX_Identifiers_Nhi_IsMajor] ON [Identifiers] ([Nhi], [IsMajor])
CREATE INDEX [IX_Identifiers_Nhi] ON [Identifiers] ([Nhi])
/**
 * Unique Index (Nhi, IsMajor)
 */
CREATE UNIQUE NONCLUSTERED INDEX IX_Identifiers_Nhi_IsMajor_Unique_Filtered
ON Identifiers(Nhi, IsMajor)
WHERE IsMajor = 1;


