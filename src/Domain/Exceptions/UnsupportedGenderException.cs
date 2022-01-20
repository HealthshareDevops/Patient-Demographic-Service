using System;

namespace Domain.Exceptions
{
    public class UnsupportedGenderException : Exception
    {
        public UnsupportedGenderException(string code)
            : base($"Gender \"{code}\" is unsupported.")
        {
        }
    }
}
