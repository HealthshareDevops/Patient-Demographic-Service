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
    public class CreateEthnicityCommand 
    {
        public string Code { get; set; }
        public string Description { get; set; }
    }

}
