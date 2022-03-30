using System.Threading.Tasks;

namespace Application.Common.Interfaces
{
    public interface IMissingDataQueueService
    {
        Task<bool> SendMessageAsync(string message);
    }
}
