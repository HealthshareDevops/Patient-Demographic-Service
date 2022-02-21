CREATE TABLE [PatientEthnicities]
(
	[PatientId] BIGINT NOT NULL,
	[EthnicityId] BIGINT NOT NULL,
	CONSTRAINT [PK_PatientEthnicities] PRIMARY KEY ([PatientId], [EthnicityId]),
	CONSTRAINT [FK_PatientEthnicities_Patients_PatientId] FOREIGN KEY([PatientId]) REFERENCES [Patients]([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_PatientEthnicities_Ethnicities_EthnicityId] FOREIGN KEY([EthnicityId]) REFERENCES [Ethnicities]([Id]) ON DELETE NO ACTION
)
