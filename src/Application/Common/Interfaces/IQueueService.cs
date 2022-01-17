using System.Threading.Tasks;

namespace Application.Common.Interfaces
{
    public interface IQueueService
    {
        Task<bool> SendMessageAsync(string message);
    }
}
