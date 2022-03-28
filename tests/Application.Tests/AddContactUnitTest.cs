using Application.Commands.CreatePatient;
using Application.Common.Interfaces;
using Application.Tests.Common;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Xunit;

namespace Application.Tests
{
    public class AddContactUnitTest: CommandTestBase
    {
        private readonly Mock<IMissingDataQueueService> _mockMissingDataQueueService;
        private readonly Mock<INewPatientNotificationService> _mockNewPatientNotificationService;
        private readonly CreatePatientCommandHandler _createPatientCommandHandler;
        public AddContactUnitTest()
        {
            _mockMissingDataQueueService = new Mock<IMissingDataQueueService>();
            _mockMissingDataQueueService.Setup(p => p.SendMessageAsync(It.IsAny<string>())).Returns(Task.FromResult(true));

            _mockNewPatientNotificationService = new Mock<INewPatientNotificationService>();
            _mockNewPatientNotificationService.Setup(p => p.PublishAsync(It.IsAny<string>())).Returns(Task.FromResult(string.Empty));

            _createPatientCommandHandler = new CreatePatientCommandHandler(_dbContext, _mockMissingDataQueueService.Object, _mockNewPatientNotificationService.Object);
        }

        [Fact]
        public async Task Should_Create_Contact_When_All_Valid_Contact_Details_Is_Send()
        {
            // Arrange
            var request = new CreatePatientCommand()
            {
                Nhi = "ZZZ0024",
                Title = "SIR",
                GivenName = "Jack",
                MiddleName = "",
                FamilyName = "Doe",
                Suffix = "1ST",
                IsPreferred = true,
                IsProtected = true,
                NameSource = "BRCT",
                EffectiveFrom = "",
                EffectiveTo = "",
                BirthDate = "19920118",
                BirthDateSource = "BRCT",
                Gender = "M",
                Addresses = {
                    new CreateAddressCommand {
                        BuildingName = "hello",
                        StreetAddress="92 Hillcrest Road",
                        AdditionalStreetAddress="",
                        Suburb="Hillcrest",
                        TownOrCity="Hamilton",
                        PostCode="3216",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=true,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                    new CreateAddressCommand {
                        BuildingName = "world",
                        StreetAddress="16 Clarence Street",
                        AdditionalStreetAddress="",
                        Suburb="",
                        TownOrCity="Hamilton",
                        PostCode="3204",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=false,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                },
                Contacts = {
                    new CreateContactCommand {
                            ContactType = "A",
                            ContactUsage = "E",
                            Detail = "hello contact",
                            IsProtected = false,
                            EffectiveFrom = "20220101",
                            EffectiveTo = "20220228",
                            IsPreferred =  false
                        }
                }
            };
            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);
            var pat = _dbContext.Patients.ToList();
            // Assert
            Assert.Equal(1, res);
        }


        [Theory]
        [InlineData("")]
        [InlineData(null)]
        [InlineData("A")]
        [InlineData("AB")]
        public async Task InvalidContactUsage_CreatesContactWithContactUsageNull(string contactUsage)
        {
            // Arrange
            var request = new CreatePatientCommand()
            {
                Nhi = "ZZZ0024",
                Title = "SIR",
                GivenName = "Jack",
                MiddleName = "",
                FamilyName = "Doe",
                Suffix = "1ST",
                IsPreferred = true,
                IsProtected = true,
                NameSource = "BRCT",
                EffectiveFrom = "",
                EffectiveTo = "",
                BirthDate = "19920118",
                BirthDateSource = "BRCT",
                Gender = "M",
                Addresses = {
                    new CreateAddressCommand {
                        BuildingName = "hello",
                        StreetAddress="92 Hillcrest Road",
                        AdditionalStreetAddress="",
                        Suburb="Hillcrest",
                        TownOrCity="Hamilton",
                        PostCode="3216",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=true,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                    new CreateAddressCommand {
                        BuildingName = "world",
                        StreetAddress="16 Clarence Street",
                        AdditionalStreetAddress="",
                        Suburb="",
                        TownOrCity="Hamilton",
                        PostCode="3204",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=false,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                },
                Contacts = {
                    new CreateContactCommand {
                            ContactType = "A",
                            ContactUsage = contactUsage,
                            Detail = "hello contact",
                            IsProtected = false,
                            EffectiveFrom = "20220101",
                            EffectiveTo = "20220228",
                            IsPreferred =  false
                        }
                }
            };
            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);
            var pat = _dbContext.Patients.ToList();
            // Assert
            Assert.Null(pat[0].Contacts[0].ContactUsage);
        }

        [Theory]
        [InlineData("B")]
        [InlineData("E")]
        [InlineData("P")]
        public async Task Should_Create_Contact_When_Valid_ContactUsage_Is_Send(string contactUsage)
        {
            // Arrange
            var request = new CreatePatientCommand()
            {
                Nhi = "ZZZ0024",
                Title = "SIR",
                GivenName = "Jack",
                MiddleName = "",
                FamilyName = "Doe",
                Suffix = "1ST",
                IsPreferred = true,
                IsProtected = true,
                NameSource = "BRCT",
                EffectiveFrom = "",
                EffectiveTo = "",
                BirthDate = "19920118",
                BirthDateSource = "BRCT",
                Gender = "M",
                Addresses = {
                    new CreateAddressCommand {
                        BuildingName = "hello",
                        StreetAddress="92 Hillcrest Road",
                        AdditionalStreetAddress="",
                        Suburb="Hillcrest",
                        TownOrCity="Hamilton",
                        PostCode="3216",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=true,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                    new CreateAddressCommand {
                        BuildingName = "world",
                        StreetAddress="16 Clarence Street",
                        AdditionalStreetAddress="",
                        Suburb="",
                        TownOrCity="Hamilton",
                        PostCode="3204",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=false,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                },
                Contacts = {
                    new CreateContactCommand {
                            ContactType = "A",
                            ContactUsage = contactUsage,
                            Detail = "hello contact",
                            IsProtected = false,
                            EffectiveFrom = "20220101",
                            EffectiveTo = "20220228",
                            IsPreferred =  false
                        }
                }
            };
            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);
            var pat = _dbContext.Patients.ToList();
            // Assert
            Assert.NotNull(pat[0].Contacts[0].ContactUsage);
        }

        [Theory]
        [InlineData("B")]
        [InlineData("E")]
        [InlineData("P")]
        public async Task Should_Create_Contact_With_Valid_ContactUsage_When_Valid_ContactUsage_Is_Send(string contactUsage)
        {
            // Arrange
            var request = new CreatePatientCommand()
            {
                Nhi = "ZZZ0024",
                Title = "SIR",
                GivenName = "Jack",
                MiddleName = "",
                FamilyName = "Doe",
                Suffix = "1ST",
                IsPreferred = true,
                IsProtected = true,
                NameSource = "BRCT",
                EffectiveFrom = "",
                EffectiveTo = "",
                BirthDate = "19920118",
                BirthDateSource = "BRCT",
                Gender = "M",
                Addresses = {
                    new CreateAddressCommand {
                        BuildingName = "hello",
                        StreetAddress="92 Hillcrest Road",
                        AdditionalStreetAddress="",
                        Suburb="Hillcrest",
                        TownOrCity="Hamilton",
                        PostCode="3216",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=true,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                    new CreateAddressCommand {
                        BuildingName = "world",
                        StreetAddress="16 Clarence Street",
                        AdditionalStreetAddress="",
                        Suburb="",
                        TownOrCity="Hamilton",
                        PostCode="3204",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=false,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                },
                Contacts = {
                    new CreateContactCommand {
                            ContactType = "A",
                            ContactUsage = contactUsage,
                            Detail = "hello contact",
                            IsProtected = false,
                            EffectiveFrom = "20220101",
                            EffectiveTo = "20220228",
                            IsPreferred =  false
                        }
                }
            };
            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);
            var pat = _dbContext.Patients.ToList();
            // Assert
            Assert.Equal(contactUsage, pat[0].Contacts[0].ContactUsage.Code);
        }

        [Theory]
        [InlineData("A")]
        [InlineData("C")]
        [InlineData("E")]
        [InlineData("PH")]
        [InlineData("CP")]
        [InlineData("Internet")]
        public async Task Should_Create_Contact_With_Valid_ContactType_When_Valid_ContactType_Is_Send(string contactType)
        {
            // Arrange
            var request = new CreatePatientCommand()
            {
                Nhi = "ZZZ0024",
                Title = "SIR",
                GivenName = "Jack",
                MiddleName = "",
                FamilyName = "Doe",
                Suffix = "1ST",
                IsPreferred = true,
                IsProtected = true,
                NameSource = "BRCT",
                EffectiveFrom = "",
                EffectiveTo = "",
                BirthDate = "19920118",
                BirthDateSource = "BRCT",
                Gender = "M",
                Addresses = {
                    new CreateAddressCommand {
                        BuildingName = "hello",
                        StreetAddress="92 Hillcrest Road",
                        AdditionalStreetAddress="",
                        Suburb="Hillcrest",
                        TownOrCity="Hamilton",
                        PostCode="3216",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=true,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                    new CreateAddressCommand {
                        BuildingName = "world",
                        StreetAddress="16 Clarence Street",
                        AdditionalStreetAddress="",
                        Suburb="",
                        TownOrCity="Hamilton",
                        PostCode="3204",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=false,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                },
                Contacts = {
                    new CreateContactCommand {
                            ContactType = contactType,
                            ContactUsage = "",
                            Detail = "hello contact",
                            IsProtected = false,
                            EffectiveFrom = "20220101",
                            EffectiveTo = "20220228",
                            IsPreferred =  false
                        }
                }
            };
            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);
            var pat = _dbContext.Patients.ToList();
            // Assert
            Assert.Equal(contactType, pat[0].Contacts[0].ContactType.Code);
        }

        [Theory]
        [InlineData("")]
        [InlineData(null)]
        [InlineData("AB")]
        [InlineData("ABC")]
        public async Task Should_Create_Contact_With_Null_ContactType_When_Invalid_ContactType_Is_Send(string contactType)
        {
            // Arrange
            var request = new CreatePatientCommand()
            {
                Nhi = "ZZZ0024",
                Title = "SIR",
                GivenName = "Jack",
                MiddleName = "",
                FamilyName = "Doe",
                Suffix = "1ST",
                IsPreferred = true,
                IsProtected = true,
                NameSource = "BRCT",
                EffectiveFrom = "",
                EffectiveTo = "",
                BirthDate = "19920118",
                BirthDateSource = "BRCT",
                Gender = "M",
                Addresses = {
                    new CreateAddressCommand {
                        BuildingName = "hello",
                        StreetAddress="92 Hillcrest Road",
                        AdditionalStreetAddress="",
                        Suburb="Hillcrest",
                        TownOrCity="Hamilton",
                        PostCode="3216",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=true,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                    new CreateAddressCommand {
                        BuildingName = "world",
                        StreetAddress="16 Clarence Street",
                        AdditionalStreetAddress="",
                        Suburb="",
                        TownOrCity="Hamilton",
                        PostCode="3204",
                        Country="572",
                        IsProtected=false,
                        IsPermanent=false,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=true,
                        AddressType="R"
                    },
                },
                Contacts = {
                    new CreateContactCommand {
                            ContactType = contactType,
                            ContactUsage = "",
                            Detail = "hello contact",
                            IsProtected = false,
                            EffectiveFrom = "20220101",
                            EffectiveTo = "20220228",
                            IsPreferred =  false
                        }
                }
            };
            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);
            var pat = _dbContext.Patients.ToList();
            // Assert
            Assert.Null(pat[0].Contacts[0].ContactType);
        }
    }
}
