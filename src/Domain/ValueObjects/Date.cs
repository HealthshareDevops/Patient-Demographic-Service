using CSharpFunctionalExtensions;
using System;
using System.Collections.Generic;
using System.Globalization;

namespace Domain.ValueObjects
{
    public class Date : ValueObject
    {
        public string Value { get; }

        private Date(string value)
        {
            Value = value ?? string.Empty;
        }

        public static Result<Date> Create(string date)
        {
            if (!string.IsNullOrEmpty(date))
            {
                if (date.Length != 8)
                {
                    return Result.Failure<Date>("Date should be length 8");
                }

                if (!DateTime.TryParseExact(date, "yyyyMMdd", CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime dt))
                {
                    return Result.Failure<Date>("Date should be valid");
                }
            }

            return Result.Success(new Date(date));
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return Value;
        }

        public static implicit operator string(Date date)
        {
            return date is null ? string.Empty: date.Value;
        }
    }
}
