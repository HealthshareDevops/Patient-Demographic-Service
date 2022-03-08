CREATE TABLE [dbo].[Contacts]
(
	[Id] BIGINT NOT NULL IDENTITY, 
    [ContactUsageId] BIGINT NOT NULL, 
    [ContactTypeId] BIGINT NOT NULL, 
    [Detail] NVARCHAR(255) NOT NULL, 
    [IsProtected] BIT NOT NULL DEFAULT 0, 
    [EffectiveFrom] NVARCHAR(8) NOT NULL, 
    [EffectiveTo] NVARCHAR(8) NULL, 
    [IsPreferred] BIT NOT NULL DEFAULT 0,
    [PatientId] BIGINT NULL,
    CONSTRAINT [PK_Contacts] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Contacts_ContactUsages_ContactUsageId] FOREIGN KEY ([ContactUsageId]) REFERENCES [ContactUsages]([Id]),
    CONSTRAINT [FK_Contacts_ContactTypes_ContactTypeId] FOREIGN KEY ([ContactTypeId]) REFERENCES [ContactTypes]([Id]),
    CONSTRAINT [FK_Contacts_Patients_PatientId] FOREIGN KEY ([PatientId]) REFERENCES [Patients] ([Id]) ON DELETE CASCADE,
)
