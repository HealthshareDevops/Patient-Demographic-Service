using System;
using System.Collections.Generic;

namespace Application.Common.Exceptions
{
    public class ValidationException : Exception
    {
        public ValidationException(string message) 
            : base($"{message}") { }
    }
}
