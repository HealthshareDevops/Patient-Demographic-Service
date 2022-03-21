using System;

namespace Domain.Exceptions
{
    public class UnsupportedBirthDateSourceException : Exception
    {
        public UnsupportedBirthDateSourceException(string code)
           : base($"BirthDateSource \"{code}\" is unsupported.") { }
    }
}
