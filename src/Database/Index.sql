CREATE INDEX [IX_Addresses_AddressFormatId] ON [Addresses] ([AddressFormatId]);
GO

CREATE INDEX [IX_Addresses_AddressTypeId] ON [Addresses] ([AddressTypeId]);
GO

CREATE INDEX [IX_Addresses_CountryId] ON [Addresses] ([CountryId]);
GO

CREATE INDEX [IX_Addresses_DomicileId] ON [Addresses] ([DomicileId]);
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

CREATE INDEX [IX_Contacts_ContactUsageId] ON [Contacts] ([ContactUsageId]);
GO

CREATE INDEX [IX_Contacts_ContactTypeId] ON [Contacts] ([ContactTypeId]);
GO

CREATE INDEX [IX_Contacts_PatientId] ON [Contacts] ([PatientId]);
GO

CREATE INDEX [IX_PatientEthnicities_PatientId] ON [PatientEthnicities] ([PatientId]);
GO

CREATE INDEX [IX_PatientEthnicities_EthnicityId] ON [PatientEthnicities] ([EthnicityId]);
GO

CREATE INDEX [IX_Identifiers_PatientId] ON [Identifiers] ([PatientId]);
GO

CREATE INDEX [IX_Identifiers_Nhi_IsMajor] ON [Identifiers] ([Nhi], [IsMajor]);
GO

CREATE INDEX [IX_Identifiers_Nhi] ON [Identifiers] ([Nhi]);
GO