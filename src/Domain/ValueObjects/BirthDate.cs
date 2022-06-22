using CSharpFunctionalExtensions;
using System;
using System.Collections.Generic;
using System.Globalization;

namespace Domain.ValueObjects
{
    public class BirthDate : ValueObject
    {
        const string TIMEZONE = "Pacific/Auckland";

        public string Value { get; }
        public DateTime DtValue { get; private set; }

        private BirthDate(string value, DateTime dtValue)
        {
            Value = value;
            DtValue = dtValue;
        }


        public static Result<BirthDate> Create(string birthDate)
        {
            // ToDo: Validation goes here
            if (string.IsNullOrEmpty(birthDate))
            {
                return Result.Failure<BirthDate>($"{nameof(birthDate)} should not be empty.");
            }

            // ToDo: Need rewriting
            if (!(birthDate.Length == 8 || birthDate.Length == 6 || birthDate.Length == 4))
            {
                return Result.Failure<BirthDate>($"{nameof(birthDate)} should be valid.");
            }

            if (birthDate.Length == 8)
            {
                if (DateTime.TryParseExact(birthDate, "yyyyMMdd", CultureInfo.InvariantCulture, DateTimeStyles.None, out var dt8))
                {
                    if (dt8 <= DatetimeNowInAppTimeZone())
                    {
                        return Result.Success(new BirthDate(birthDate, dt8));
                    }
                    else
                    {
                        return Result.Failure<BirthDate>($"{nameof(birthDate)} should not be future date.");
                    }
                }
                else
                {
                    return Result.Failure<BirthDate>($"{nameof(birthDate)} should be valid.");
                }
            }

            if (birthDate.Length == 6)
            {
                if (DateTime.TryParseExact(birthDate, "yyyyMM", CultureInfo.InvariantCulture, DateTimeStyles.None, out var dt6))
                {
                    if (dt6 <= DatetimeNowInAppTimeZone())
                    {
                        return Result.Success(new BirthDate(birthDate, dt6));
                    }
                    else
                    {
                        return Result.Failure<BirthDate>($"{nameof(birthDate)} should not be future date.");
                    }
                }
                else
                {
                    return Result.Failure<BirthDate>($"{nameof(birthDate)} should be valid.");
                }
            }

            if (birthDate.Length == 4)
            {
                if (DateTime.TryParseExact(birthDate, "yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out var dt4))
                {
                    if (dt4 <= DatetimeNowInAppTimeZone())
                    {
                        return Result.Success(new BirthDate(birthDate, dt4));
                    }
                    else
                    {
                        return Result.Failure<BirthDate>($"{nameof(birthDate)} should not be future date.");
                    }
                }
                else
                {
                    return Result.Failure<BirthDate>($"{nameof(birthDate)} should be valid.");
                }
            }
            // Need rewriting

            return Result.Failure<BirthDate>($"{nameof(birthDate)} should be valid.");
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return Value;
        }

        public static implicit operator string(BirthDate birthDate)
        {
            return birthDate.Value;
        }

        private static DateTime DatetimeNowInAppTimeZone()
        {
            try
            {
                
                var tzInfo = TimeZoneInfo.FindSystemTimeZoneById(TIMEZONE);
                return TimeZoneInfo.ConvertTime(DateTime.Now, tzInfo);

            } catch(Exception e)
            {
                // ToDo: Do we need to log
                return DateTime.Now;
            }
        }
    }
}
