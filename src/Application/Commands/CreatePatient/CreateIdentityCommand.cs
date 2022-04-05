using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Commands.CreatePatient
{
    public class CreateIdentityCommand
    {
        public string Nhi { get; set; }
        public bool IsMajor { get; set; }
    }
}
