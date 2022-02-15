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
)
