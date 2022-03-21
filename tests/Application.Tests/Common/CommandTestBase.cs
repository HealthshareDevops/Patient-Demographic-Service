using Infrastructure.Persistence;
using System;

namespace Application.Tests.Common
{
    public class CommandTestBase : IDisposable
    {
        protected readonly ApplicationDbContext _dbContext;

        public CommandTestBase()
        {
            _dbContext = ApplicationContextFactory.Create();
        }

        public void Dispose()
        {
            ApplicationContextFactory.Destroy(_dbContext);
        }
    }
}
