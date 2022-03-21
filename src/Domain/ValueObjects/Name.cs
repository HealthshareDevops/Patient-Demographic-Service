using CSharpFunctionalExtensions;
using System.Collections.Generic;

namespace Domain.ValueObjects
{
    public class Name : ValueObject
    {
        public string GivenName { get; }
        public string MiddleName { get; }
        public string FamilyName { get; }

        private Name(string givenName, string middleName, string familyName)
        {
            GivenName = givenName;
            MiddleName = middleName;
            FamilyName = familyName;
        }

        public static Result<Name> Create(string givenName, string middleName, string familyName)
        {
            // ToDo: Validation goes here.
            if (string.IsNullOrEmpty(givenName) && string.IsNullOrEmpty(familyName))
            {
                return Result.Failure<Name>("Either Given name or Family name should be provided.");
            }

            if (!string.IsNullOrEmpty(middleName) && string.IsNullOrEmpty(givenName))
            {
                middleName = string.Empty;
            }

            return Result.Success(new Name(givenName, middleName, familyName));
        }
        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return GivenName;
            yield return MiddleName;
            yield return FamilyName;
        }
    }
}
