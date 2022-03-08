using Amazon.Lambda.Core;
using Application.Common.Exceptions;
using Application.Common.Interfaces;
using CSharpFunctionalExtensions;
using Domain.Entities;
using Domain.Enums;
using Domain.ValueObjects;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Commands.CreatePatient
{
    public class CreateContactCommand
    {
        public string ContactUsage { get; set; }

        public string ContactType { get; set; }

        public string Detail { get; set; }

        public bool IsProtected { get; set; }

        //Date contact effective from
        public string EffectiveFrom { get; set; }

        //Date address effective to
        public string  EffectiveTo { get; set; }

        public bool IsPreferred { get; set; }
    }
}
