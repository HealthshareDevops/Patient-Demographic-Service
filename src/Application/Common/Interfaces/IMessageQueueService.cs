using System.Threading.Tasks;

namespace Application.Common.Interfaces
{
    public interface IMessageQueueService
    {
        Task<bool> DeleteMessageAsync(string receiptHandle);
    }
}
