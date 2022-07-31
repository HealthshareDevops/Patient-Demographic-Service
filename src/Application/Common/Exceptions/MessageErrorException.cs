using System;

namespace Application.Common.Exceptions
{
    public class MessageErrorException : Exception
    {
        public MessageErrorException(string message)
           : base($"{message}") { }
    }
}
