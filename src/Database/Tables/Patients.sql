CREATE TABLE [Patients] (
    [Id] bigint NOT NULL IDENTITY,
    [BirthDate] nvarchar(8) NOT NULL,
    [BirthDateSourceId] bigint NULL,
    [GenderId] bigint NULL,
    [CreatedBy] nvarchar(40) NULL,
    [CreatedDate] datetime2(7) NULL,
    [LastModifiedBy] nvarchar(40) NULL,
    [LastModifiedDate] datetime2(7) NULL,
    [EventDate] nvarchar(14) NULL,
    CONSTRAINT [PK_Patients] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Patients_BirthDateSources_BirthDateSourceId] FOREIGN KEY ([BirthDateSourceId]) REFERENCES [BirthDateSources] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Patients_Genders_GenderId] FOREIGN KEY ([GenderId]) REFERENCES [Genders] ([Id]) ON DELETE NO ACTION
)