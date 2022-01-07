using CSharpFunctionalExtensions;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Domain.ValueObjects
{
    public class Nhi : ValueObject
    {
        public string Value { get; }

        private readonly static Dictionary<char, int> _alphabetConversionTable = new Dictionary<char, int>() {
            {'A', 1}, {'B', 2}, {'C', 3}, {'D', 4},
            {'E', 5}, {'F', 6}, {'G', 7}, {'H', 8},
            {'J', 9}, {'K', 10}, {'L', 11},
            {'M', 12}, {'N', 13}, {'P', 14},
            {'Q', 15}, {'R', 16}, {'S', 17}, {'T', 18},
            {'U', 19}, {'V', 20}, {'W', 21}, {'X', 22},
            {'Y', 23}, {'Z', 24}
        };

        private Nhi(string value)
        {
            Value = value;
        }

        public static Result<Nhi> Create(string nhi)
        {
            if (string.IsNullOrEmpty(nhi))
            {
                return Result.Failure<Nhi>("Nhi should not be empty");
            }

            nhi = nhi.Trim();

            if (nhi.Length != 7)
            {
                return Result.Failure<Nhi>("Nhi should be length 7");
            }

            if (!Regex.IsMatch(nhi, "^[A-HJ-NP-Z]{3}[0-9]{2}[A-HJ-NP-Z0-9]{2}$"))
            {
                return Result.Failure<Nhi>("Nhi format should be valid.");
            }

            if (!IsValidCheckSum(nhi))
            {
                return Result.Failure<Nhi>("Nhi checksum should be valid.");
            }

            return Result.Success(new Nhi(nhi));
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return Value;
        }

        public static implicit operator string(Nhi nhi)
        {
            return nhi.Value;
        }

        private static bool IsValidCheckSum(string nhi)
        {
            int sum = CalculateCheckSum(nhi);
            return char.IsUpper(nhi[6]) ? NewFormatNhi(nhi, sum) : OldFormatNhi(nhi, sum);
        }

        private static int CalculateCheckSum(string nhi)
        {
            int ordinal = 7;
            var sum = 0;
            foreach (char c in nhi.Substring(0, 6))
            {
                var charVal = char.IsDigit(c) ? int.Parse(c.ToString()) : _alphabetConversionTable[c];
                sum += charVal * ordinal;
                ordinal--;
            }

            return sum;
        }

        private static bool OldFormatNhi(string nhi, int sum)
        {
            var checksum = sum % 11;
            if (checksum == 0) return false;

            var checkdigit = 11 - checksum;
            checkdigit = checkdigit == 10 ? 0 : checkdigit;
            return checkdigit == int.Parse(nhi[6].ToString());
        }

        private static bool NewFormatNhi(string nhi, int sum)
        {
            var checksum = sum % 24;
            var checkCharVal = 24 - checksum;
            var checkChar = _alphabetConversionTable.FirstOrDefault(x => x.Value == checkCharVal).Key;
            return checkChar == nhi[6];
        }
    }
}
