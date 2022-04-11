using Amazon.Lambda.Core;
using Application.Common.Exceptions;
using Application.Common.Interfaces;
using CSharpFunctionalExtensions;
using Domain.Entities;
using Domain.Enums;
using Domain.ValueObjects;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Commands.UpdatePatient
{
    public class UpdatePatientCommand : IRequest<long>
    {
        public string Nhi { get; set; }
        public string Title { get; set; }
        public string GivenName { get; set; }
        public string MiddleName { get; set; }
        public string FamilyName { get; set; }
        public string Suffix { get; set; }
        public bool IsPreferred { get; set; }
        public bool IsProtected { get; set; }
        public string NameSource { get; set; }
        public string EffectiveFrom { get; set; }
        public string EffectiveTo { get; set; }
        public string BirthDate { get; set; }
        public string BirthDateSource { get; set; }
        public string Gender { get; set; }
        public List<UpdateEthnicityCommand> Ethnicities { get; set; } = new List<UpdateEthnicityCommand>();
        public List<UpdateAddressCommand> Addresses { get; set; } = new List<UpdateAddressCommand>();
        public List<UpdateContactCommand> Contacts { get; set; } = new List<UpdateContactCommand>();
        public string CreatedBy { get; set; }
    }

    public class UpdatePatientCommandHandler : IRequestHandler<UpdatePatientCommand, long>
    {
        private readonly IApplicationDbContext _dbContext;
        private readonly INewPatientNotificationService _newPatientNotificationService;

        public UpdatePatientCommandHandler(IApplicationDbContext dbContext, INewPatientNotificationService newPatientNotificationService)
        {
            _dbContext = dbContext;
            _newPatientNotificationService = newPatientNotificationService;
        }

        public async Task<long> Handle(UpdatePatientCommand request, CancellationToken cancellationToken)
        {
            LambdaLogger.Log($"INFO: UpdatePatientCommandHandler.Handle(): Start...");

            // Some validations
            request.Addresses = request.Addresses ?? new List<UpdateAddressCommand>();
            request.Ethnicities = request.Ethnicities ?? new List<UpdateEthnicityCommand>();
            request.Contacts = request.Contacts ?? new List<UpdateContactCommand>();

            var patnt = await _dbContext.Patients
                    .Include(x => x.HumanNames)
                        .ThenInclude(n => n.Suffix)
                    .Include(x => x.HumanNames)
                        .ThenInclude(n => n.Title)
                    .Include(x => x.HumanNames)
                        .ThenInclude(n => n.NameSource)
                    .Include(x => x.Addresses)
                        .ThenInclude(a => a.AddressFormat)
                    .Include(x => x.Addresses)
                        .ThenInclude(a => a.Country)
                    .Include(x => x.Addresses)
                        .ThenInclude(a => a.Domicile)
                    .Include(x => x.Addresses)
                        .ThenInclude(a => a.AddressType)
                    .Include(x => x.PatientEthnicities)
                        .ThenInclude(e => e.Ethnicity)
                    .Include(x => x.Contacts)
                        .ThenInclude(c => c.ContactUsage)
                    .Include(x => x.Contacts)
                        .ThenInclude(c => c.ContactType)
                    .FirstOrDefaultAsync(x => x.Nhi == request.Nhi);

            if (patnt is null)
            {
                throw new System.NotImplementedException();
            }

            // Creating HumanNames...
            var humanNames = new List<HumanName>();

            // ToDo:
            // When try to detached object like title, suffix and namesource to existingPatnt, getting error.
            // The instance of entity type 'Suffix' cannot be tracked because another instance with the key value '{Id: 1}' is already being tracked. When attaching existing entities, ensure that only one entity instance with a given key value is attached.
            // Need to analyze more.

            //var title = Title.FromCode(request.Title);
            //var suffix = Suffix.FromCode(request.Suffix);
            //var namesource = NameSource.FromCode(request.NameSource);

            var title = _dbContext.Titles.FirstOrDefault(x => x.Code == request.Title);
            var suffix = _dbContext.Suffixes.FirstOrDefault(x => x.Code == request.Suffix);
            var namesource = _dbContext.NameSources.FirstOrDefault(x => x.Code == request.NameSource);

            Result<Name> name = Name.Create(request.GivenName, request.MiddleName, request.FamilyName);
            if (name.IsFailure)
            {
                LambdaLogger.Log($"ERROR: UpdatePatientCommandHandler.Handle(): Name failure.");
                throw new ValidationException(name.Error);
            }
           
            Result<Date> effectiveFrom = Date.Create(request.EffectiveFrom);
            if (effectiveFrom.IsFailure)
            {
                LambdaLogger.Log($"ERROR: UpdatePatientCommandHandler.Handle(): EffectiveFrom date failure.");
                throw new ValidationException(effectiveFrom.Error);
            }
            
            Result<Date> effectiveTo = Date.Create(request.EffectiveTo);
            if (effectiveTo.IsFailure)
            {
                LambdaLogger.Log($"ERROR: UpdatePatientCommandHandler.Handle(): EffectiveTo date failure.");
                throw new ValidationException(effectiveTo.Error);
            }
            
            humanNames.Add(new HumanName(title, name.Value, suffix, request.IsPreferred, request.IsProtected, namesource, effectiveFrom.Value, effectiveTo.Value));

            LambdaLogger.Log($"INFO: UpdatePatientCommandHandler.Handle(): HumanNames created.");
            // End  creating HumanNames


            // Start PatientInfo...
            Result<BirthDate> birthDate = BirthDate.Create(request.BirthDate);
            if (birthDate.IsFailure)
            {
                throw new ValidationException(birthDate.Error);
            }

            var birthDateSource = BirthDateSource.FromCode(request.BirthDateSource);
            if (birthDateSource is null)
            {
                throw new ValidationException("BirthDateSource is not valid.");
            }

            var gender = Gender.FromCode(request.Gender);
            if (gender is null)
            {
                throw new ValidationException("Gender is not valid.");
            }
            // End PatientInfo..

            // Start Addressess...
            var addresses = new List<Address>();
            foreach (var addrCommand in request.Addresses)
            {
                var addr = ToAddress(addrCommand);
                if (addr is null)
                {
                    continue;
                }
                addresses.Add(addr);
            }
            // End Addresses...

            var ethnicities = new List<Ethnicity>();
            // Add Ethnicities
            foreach (var ethnicityCommand in request.Ethnicities)
            {
                var ethnicity = Ethnicity.FromCode(ethnicityCommand.Code);
                if (ethnicity is null)
                {
                    LambdaLogger.Log($"WARN: Ethnicity ${ethnicityCommand.Code} is not valid.");
                    continue;
                }
                ethnicities.Add(ethnicity);
            }

            // Start Contacts ...
            var contacts = new List<Contact>();
            foreach(var contactCommand in request.Contacts)
            {
                var contact = ToContact(contactCommand);
                if(contact is null)
                {
                    continue;
                }
                contacts.Add(contact);
            }
            // End Contacts ...


            patnt.UpdatePatientInfo(birthDate.Value, birthDateSource, gender, humanNames, addresses, ethnicities, contacts, request.CreatedBy);
            
            LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient object DB Saving.");
            
            //LambdaLogger.Log($"State: {_dbContext.Entry(existingPatnt).State}");
            //LambdaLogger.Log($"State: {_dbContext.Entry(existingPatnt.HumanNames[0].Suffix).State}");
            //LambdaLogger.Log($"State: {_dbContext.Entry(existingPatnt).Collection(s=>s.Addresses).State}");
            //_dbContext.Patients.Attach(existingPatnt);

            await _dbContext.SaveChangesAsync(cancellationToken);
            LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient object DB Saved. Patient Id: {patnt.Id}");

            // Patient is updated. Notify all the concerned services.
            await _newPatientNotificationService.PublishAsync(BuildEventMessage(patnt.Nhi));
            LambdaLogger.Log($"INFO: Services notified");

            return patnt.Id;
        }

        private Address ToAddress(UpdateAddressCommand addressCommand)
        {
            LambdaLogger.Log($"INFO: CreatePatientCommandHandler - ToAddress start ...");
            // ToDo:
            // Address format can be captured in two formats - NZ CIQ Address Profile and NZ Post Address Standard.
            // HL7 message does not capture the address format,  seems it uses NZ CIQ Address Profile.
            // Defaulting to CIQ Address Profile
            //var addressFormat = AddressFormat.CIQ;
            //var addressFormat = AddressFormat.FromCode(addressCommand.AddressFormat);
            var addressFormat = _dbContext.AddressFormats.FirstOrDefault(x => x.Code == AddressFormat.CIQ.Code);


            if (string.IsNullOrEmpty(addressCommand.StreetAddress))
            {
                LambdaLogger.Log($"ERROR: ToAddress: Street Address should be valid.");
                return null;
            }

            //var country = Country.FromCode(addressCommand.Country);
            var country = _dbContext.Countries.FirstOrDefault(x => x.Code == addressCommand.Country);

            Result<Date> addrEffectiveFrom = Date.Create(addressCommand.EffectiveFrom);
            if (addrEffectiveFrom.IsFailure)
            {
                LambdaLogger.Log($"ERROR: ToAddress: EffectiveFrom date failure.");
                throw new ValidationException(addrEffectiveFrom.Error);
            }

            Result<Date> addrEffectiveTo = Date.Create(addressCommand.EffectiveTo);
            if (addrEffectiveTo.IsFailure)
            {
                LambdaLogger.Log($"ERROR: ToAddress: EffectiveTo date failure.");
                throw new ValidationException(addrEffectiveTo.Error);
            }

            var domicile = _dbContext.Domiciles.ToList().Where(p => p.Code == addressCommand.Domicile).SingleOrDefault();

            //var addressType = AddressType.FromCode(addressCommand.AddressType);
            var addressType = _dbContext.AddressTypes.FirstOrDefault(x => x.Code == addressCommand.AddressType);
            if (addressType is null)
            {
                throw new ValidationException("AddressType should be valid.");
            }

            var address = new Address(addressFormat, addressCommand.BuildingName, addressCommand.StreetAddress,
                                      addressCommand.AdditionalStreetAddress, addressCommand.Suburb,
                                      addressCommand.TownOrCity, addressCommand.PostCode, country,
                                      addressCommand.IsProtected, addressCommand.IsPermanent,
                                      addrEffectiveFrom.Value, addrEffectiveTo.Value, domicile,
                                      addressCommand.IsPrimary, addressType);
            LambdaLogger.Log($"INFO: CreatePatientCommandHandler - ToAddress end ...");
            return address;
        }

        private Contact ToContact(UpdateContactCommand contactCommand)
        {
            var contactUsage = _dbContext.ContactUsages.FirstOrDefault(x => x.Code == contactCommand.ContactUsage);
            if (contactUsage is null)
            {
                LambdaLogger.Log($"WARN: ContactUsage is not valid (null).");
            }

            var contactType = _dbContext.ContactTypes.FirstOrDefault(x => x.Code == contactCommand.ContactType);
            if (contactType is null)
            {
                LambdaLogger.Log($"WARN: ContactType is not valid (null).");
            }

            if (string.IsNullOrEmpty(contactCommand.Detail))
            {
                LambdaLogger.Log($"ERROR: Detail is not valid.");
                throw new ValidationException("Detail is not valid.");
            }

            //5.5 is mandatory
            if (string.IsNullOrEmpty(contactCommand.EffectiveFrom))
            {
                LambdaLogger.Log($"WARN: EffectiveFrom is not valid (empty or null).");
            }

            Result<Date> contactEffectiveFrom = Date.Create(contactCommand.EffectiveFrom);
            if (contactEffectiveFrom.IsFailure)
            {
                LambdaLogger.Log($"ERROR: ToContact: EffectiveFrom date failure.");
                throw new ValidationException(contactEffectiveFrom.Error);
            }

            // 5.6 Optional
            Result<Date> contactEffectiveTo = Date.Create(contactCommand.EffectiveTo);
            if (contactEffectiveTo.IsFailure)
            {
                LambdaLogger.Log($"ERROR: ToContract: EffectiveTo date failure.");
                throw new ValidationException(contactEffectiveTo.Error);
            }


            Contact contact = new Contact(
                contactUsage,
                contactType,
                contactCommand.Detail,
                contactCommand.IsProtected,
                contactEffectiveFrom.Value,
                contactEffectiveTo.Value,
                contactCommand.IsPreferred
                );
            return contact;
        }

        private string BuildEventMessage(string nhi)
        {
            var msg = new
            {
                EventId = Guid.NewGuid(),
                EventDate = DateTime.UtcNow,
                EventType = "UpdatePatient",
                NHI = nhi
            };
            return JsonSerializer.Serialize(msg);
        }
    }
}
