﻿namespace Infrastructure.Services
{
    public class CognitoSettings
    {
        public string Domain { get; set; }
        public string ClientId { get; set; }
        public string ClientSecret { get; set; }
        public string Issuer { get; set; }
    }
}
