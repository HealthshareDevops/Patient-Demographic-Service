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
    public class CreatePatientCommandUnitTest : CommandTestBase
    {
        private readonly Mock<IMissingDataQueueService> _mockMissingDataQueueService;
        private readonly Mock<INewPatientNotificationService> _mockNewPatientNotificationService;
        private readonly CreatePatientCommandHandler _createPatientCommandHandler;

        public CreatePatientCommandUnitTest()
        {
            _mockMissingDataQueueService = new Mock<IMissingDataQueueService>();
            _mockMissingDataQueueService.Setup(p => p.SendMessageAsync(It.IsAny<string>())).Returns(Task.FromResult(true));

            _mockNewPatientNotificationService = new Mock<INewPatientNotificationService>();
            _mockNewPatientNotificationService.Setup(p => p.PublishAsync(It.IsAny<string>())).Returns(Task.FromResult(string.Empty));

            _createPatientCommandHandler = new CreatePatientCommandHandler(_dbContext, _mockMissingDataQueueService.Object, _mockNewPatientNotificationService.Object);
        }

        [Fact]
        public async Task Should_Create_Patient_With_All_Valid_Values()
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
                CreatedBy = "Rhapsody"
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
        public async Task Should_Throw_Exception_With_Null_And_Empty_Nhi(string nhi)
        {
            // Arrange
            var request = new CreatePatientCommand()
            {
                Nhi = nhi,
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
                CreatedBy = "Rhapsody"
            };

            // Act
            var ex = await Assert.ThrowsAsync<ValidationException>(() => _createPatientCommandHandler.Handle(request, CancellationToken.None));
            
            // Assert
            Assert.Equal("Nhi should not be empty", ex.Message);
        }
    }
}
