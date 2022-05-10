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