using Application.Common.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.Services
{
    public class Hello : IHello
    {
        public string SayHello(string to) =>    $"Hello {to}!";
        
    }
}
