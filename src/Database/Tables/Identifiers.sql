CREATE TABLE [dbo].[Identifiers]
(
	[Id] BIGINT  NOT NULL IDENTITY, 
    [Nhi] NVARCHAR(7) NOT NULL, 
    [IsMajor] BIT NOT NULL DEFAULT 0, 
    [PatientId] BIGINT NOT NULL,
    CONSTRAINT [PK_Identifiers] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Identifiers_Patients_PatientId] FOREIGN KEY([PatientId]) REFERENCES [Patients]([Id]) ON DELETE CASCADE
)
