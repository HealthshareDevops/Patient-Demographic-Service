using Application.Commands.CreatePatient;
using Application.Common.Exceptions;
using Application.Common.Interfaces;
using Application.Tests.Common;
using Moq;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Xunit;

namespace Application.Tests
{
    public class AddressUnitTest : CommandTestBase
    {
        private readonly Mock<IMissingDataQueueService> _mockMissingDataQueueService;
        private readonly Mock<INewPatientNotificationService> _mockNewPatientNotificationService;
        private readonly CreatePatientCommandHandler _createPatientCommandHandler;
        public AddressUnitTest()
        {
            _mockMissingDataQueueService = new Mock<IMissingDataQueueService>();
            _mockMissingDataQueueService.Setup(p => p.SendMessageAsync(It.IsAny<string>())).Returns(Task.FromResult(true));

            _mockNewPatientNotificationService = new Mock<INewPatientNotificationService>();
            _mockNewPatientNotificationService.Setup(p => p.PublishAsync(It.IsAny<string>())).Returns(Task.FromResult(string.Empty));

            _createPatientCommandHandler = new CreatePatientCommandHandler(_dbContext, _mockMissingDataQueueService.Object, _mockNewPatientNotificationService.Object);
        }

        [Fact]
        public async Task Send_ValidAddress_CreatesAddress()
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
                CreatedBy = "Rhapsody"
            };
            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);
            var pat = _dbContext.Patients.ToList();
            // Assert
            Assert.Equal(1, res);
        }

        [Fact]
        public async Task Send_AllOptionalFieldsEmpty_CreatesAddress()
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
                        AddressFormat="CIQ",
                        BuildingName = "",
                        StreetAddress="16 Clarence Street",
                        AdditionalStreetAddress="",
                        Suburb="",
                        TownOrCity="",
                        PostCode="",
                        Country="",
                        IsProtected=false,
                        IsPermanent=false,
                        EffectiveFrom="",
                        EffectiveTo="",
                        Domicile="",
                        IsPrimary=false,
                        AddressType="R"
                    },
                },
                CreatedBy = "Rhapsody"
            };

            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);

            // Assert
            Assert.Equal(1, res);
        }

        [Fact]
        public async Task Send_AllOptionalFieldsNull_CreateAddress()
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
                        AddressFormat="CIQ",
                        BuildingName = null,
                        StreetAddress="16 Clarence Street",
                        AdditionalStreetAddress="",
                        Suburb= null,
                        TownOrCity= null,
                        PostCode= null,
                        Country= null,
                        IsProtected=false,
                        IsPermanent=false,
                        EffectiveFrom= null,
                        EffectiveTo= null,
                        Domicile= null,
                        IsPrimary=false,
                        AddressType="R"
                    },
                },
                CreatedBy = "Rhapsody"
            };

            // Act
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);

            var pat = _dbContext.Patients.ToList();

            // Assert
            Assert.Equal(1, res);
            Assert.Equal(string.Empty, pat[0].Addresses[0].BuildingName);
            Assert.Equal(string.Empty, pat[0].Addresses[0].AdditionalStreetAddress);
            Assert.Equal(string.Empty, pat[0].Addresses[0].Suburb);
            Assert.Equal(string.Empty, pat[0].Addresses[0].TownOrCity);
            Assert.Equal(string.Empty, pat[0].Addresses[0].PostCode);
            Assert.Equal(string.Empty, pat[0].Addresses[0].EffectiveFrom.Value);
            Assert.Equal(string.Empty, pat[0].Addresses[0].EffectiveTo.Value);
        }

        [Theory]
        [InlineData("")]
        [InlineData(null)]
        public async Task Send_InvalidStreetAddress_DoesNotCreateAddress(string streetAddress)
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
                        AddressFormat = "CIQ",
                        BuildingName = "",
                        StreetAddress = streetAddress,
                        AdditionalStreetAddress = "",
                        Suburb = "",
                        TownOrCity = "",
                        PostCode = "",
                        Country = "",
                        IsProtected = false,
                        IsPermanent = false,
                        EffectiveFrom = "",
                        EffectiveTo = "",
                        Domicile = "",
                        IsPrimary = false,
                        AddressType = "R"
                    },
                },
                CreatedBy = "Rhapsody"
            };

            var expectedAddressCount = 0;

            // Act
            //var ex = await Assert.ThrowsAsync<ValidationException>(() => _createPatientCommandHandler.Handle(request, CancellationToken.None));
            var res = await _createPatientCommandHandler.Handle(request, CancellationToken.None);
            var pat = _dbContext.Patients.ToList();

            // Assert
            //Assert.Equal("StreetAddress should be valid.", ex.Message);
            Assert.Equal(expectedAddressCount, pat[0].Addresses.Count);
        }

        [Theory]
        [InlineData("")]
        [InlineData(null)]
        [InlineData("A")]
        [InlineData("AB")]
        public async Task Send_InvalidAddressType_ThrowValidationException(string addressType)
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
                        AddressFormat = "CIQ",
                        BuildingName = "",
                        StreetAddress = "16 Clarence Street",
                        AdditionalStreetAddress = "",
                        Suburb = "",
                        TownOrCity = "",
                        PostCode = "",
                        Country = "",
                        IsProtected = false,
                        IsPermanent = false,
                        EffectiveFrom = "",
                        EffectiveTo = "",
                        Domicile = "",
                        IsPrimary = false,
                        AddressType = addressType
                    },
                },
                CreatedBy = "Rhapsody"
            };

            // Act
            var ex = await Assert.ThrowsAsync<ValidationException>(() => _createPatientCommandHandler.Handle(request, CancellationToken.None));

            // Assert
            Assert.Equal("AddressType should be valid.", ex.Message);
        }
    }
}
