using System.Threading.Tasks;

namespace Application.Common.Interfaces
{
    public interface INewPatientNotificationService
    {
        Task<string> PublishAsync(string message);
    }
}
