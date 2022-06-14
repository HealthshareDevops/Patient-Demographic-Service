using Amazon.Lambda.Core;
using Application.Common.Exceptions;
using Application.Common.Interfaces;
using CSharpFunctionalExtensions;
using Domain.Entities;
using Domain.Enums;
using Domain.ValueObjects;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Commands.CreatePatient
{
    public class CreatePatientCommand : IRequest<long>
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
        public List<CreateEthnicityCommand> Ethnicities { get; set; } = new List<CreateEthnicityCommand>();
        public List<CreateAddressCommand> Addresses { get; set; } = new List<CreateAddressCommand>();
        public List<CreateContactCommand> Contacts { get; set; } = new List<CreateContactCommand>();
        public string CreatedBy { get; set; }
        public string EventDate { get; set; }
    }

    public class CreatePatientCommandHandler : IRequestHandler<CreatePatientCommand, long>
    {
        private readonly IApplicationDbContext _dbContext;
        private readonly IMissingDataQueueService _queueService;
        private readonly INewPatientNotificationService _newPatientNotificationService;

        public CreatePatientCommandHandler(IApplicationDbContext dbContext,
                                           IMissingDataQueueService queueService,
                                           INewPatientNotificationService newPatientNotificationService)
        {
            _dbContext = dbContext;
            _queueService = queueService;
            _newPatientNotificationService = newPatientNotificationService;
        }

        public async Task<long> Handle(CreatePatientCommand request, CancellationToken cancellationToken)
        {
            LambdaLogger.Log($"INFO: CreatePatientCommandHandler start...");
            try
            {
                // ToDo: Validation code.
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Request validation completed.");

                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Nhi: {request.Nhi}.");
                Result<Nhi> nhi = Nhi.Create(request.Nhi);
                if (nhi.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommand - Nhi ({request.Nhi}) create failure. ({nhi.Error})");
                    throw new ValidationException(nhi.Error);
                }
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Nhi: {nhi.Value} created.");

                // Create the identity
                // This is the first time we have seen this patient in the Midland region therefore business logic determines the NHI as the major
                var identity = new Identifier(nhi.Value, true);
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Identity created.");

                Result<BirthDate> birthDate = BirthDate.Create(request.BirthDate);
                if (birthDate.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommand - BirthDate ({request.BirthDate}) create failure. ({birthDate.Error})");
                    throw new ValidationException(birthDate.Error);
                }
                //var birthDateSource = BirthDateSource.FromCode(request.BirthDateSource);
                var birthDateSource = _dbContext.BirthDateSources.FirstOrDefault(x => x.Code == request.BirthDateSource);

                if (birthDateSource is null)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommand - BirthDateSource ({request.BirthDateSource}) should be valid. (null)");
                    throw new ValidationException("BirthDateSource is not valid.");
                }

                //var gender = Gender.FromCode(request.Gender);
                var gender = _dbContext.Genders.FirstOrDefault(x => x.Code == request.Gender);
                if (gender is null)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommand - Gender ({request.Gender}) create failure. (null)");
                    throw new ValidationException("Gender is not valid.");
                }
                
                // Create HumanName
                //var title = Title.FromCode(request.Title);
                //var suffix = Suffix.FromCode(request.Suffix);
                //var namesource = NameSource.FromCode(request.NameSource);

                var title = _dbContext.Titles.FirstOrDefault(x => x.Code == request.Title);
                var suffix = _dbContext.Suffixes.FirstOrDefault(x => x.Code == request.Suffix);
                var namesource = _dbContext.NameSources.FirstOrDefault(x => x.Code == request.NameSource);

                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Title, Suffix, NameSource created.");

                Result<Name> name = Name.Create(request.GivenName, request.MiddleName, request.FamilyName);
                if (name.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommand - Name - GivenName ({request.GivenName}), MiddleName ({request.MiddleName}), FamilyName ({request.FamilyName}) name create failure. ({name.Error})");
                    throw new ValidationException(name.Error);
                }
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Name created.");

                Result<Date> effectiveFrom = Date.Create(request.EffectiveFrom);
                if (effectiveFrom.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommand - Name - EffectiveFrom ({request.EffectiveFrom}) date create failure. ({effectiveFrom.Error})");
                    throw new ValidationException(effectiveFrom.Error);
                }
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: EffectiveFrom date created.");

                Result<Date> effectiveTo = Date.Create(request.EffectiveTo);
                if (effectiveTo.IsFailure)
                {
                    LambdaLogger.Log($"ERROR: CreatePatientCommand - Name - EffectiveTo ({request.EffectiveTo}) date create failure. ({effectiveTo.Error})");
                    throw new ValidationException(effectiveTo.Error);
                }
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: EffectiveTo date created.");
                // 

                var patnt = new Patient(identity, birthDate.Value, birthDateSource, gender, request.CreatedBy, request.EventDate);
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient object created.");

                patnt.AddName(title, name.Value, suffix, request.IsPreferred, request.IsProtected, namesource, effectiveFrom.Value, effectiveTo.Value);


                if (request.Ethnicities != null)
                {
                    // Add Ethnicities
                    foreach (var ethnicityCommand in request.Ethnicities)
                    {

                        //MHIP-147 - Tactial solution - MHIP-148 would resolve this with a permanent code set solution.
                        if (ethnicityCommand.Code == "NSP")
                            ethnicityCommand.Code = "99";
                        //var ethnicity = Ethnicity.FromCode(ethnicityCommand.Code);
                        var ethnicity = _dbContext.Ethnicities.FirstOrDefault(x => x.Code == ethnicityCommand.Code);

                        if (ethnicity is null)
                        {
                            LambdaLogger.Log($"INFO: CreatePatientCommand - Ethnicity ({ethnicityCommand.Code}) is not valid. (null)");
                            continue;
                        }
                        patnt.AddEthnicity(ethnicity);

                    }
                    LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient ethnicities added.");
                }

                if (request.Addresses != null)
                {
                    // Add addressess
                    foreach (var addrCommand in request.Addresses)
                    {
                        var addr = ToAddress(addrCommand);
                        if (addr is null)
                        {
                            continue;
                        }
                        patnt.AddAddress(addr);
                    }
                    LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient addresses added.");
                }

                if (request.Contacts != null)
                {
                    // Add contacts
                    foreach (var contactCommand in request.Contacts)
                    {
                        var contact = ToContact(contactCommand);
                        if(contact is null)
                        {
                            continue;
                        }
                       patnt.AddContact(contact);
                    }
                    LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient contacts added.");
                }

                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient object DB Saving.");
                _dbContext.Patients.Attach(patnt);
                await _dbContext.SaveChangesAsync(cancellationToken);
                LambdaLogger.Log($"INFO: CreatePatientCommandHandler: Patient object DB Saved. Patient Id: {patnt.Id}");


                // New patient is saved. Notify all the concerned services.
                await _newPatientNotificationService.PublishAsync(BuildEventMessage(request.Nhi));
                LambdaLogger.Log($"INFO: Services notified");


                // ToDo: If there are any missing data, send message to MissingData Queue.
                //LambdaLogger.Log($"INFO: Sending message to SQS start...");
                //var response = await _queueService.SendMessageAsync("Hello world from Console Application.");
                //LambdaLogger.Log($"INFO: Sending message to SQS end...");

                LambdaLogger.Log($"INFO: CreatePatientCommandHandler end...");
                return patnt.Id;
            }
            catch (Exception e)
            {
                LambdaLogger.Log($"ERROR: Error occurred in CreatePatientCommandHandler for Nhi {request.Nhi}: {e.Message}");
                LambdaLogger.Log($"ERROR: Error occurred in CreatePatientCommandHandler InnerException {e.InnerException?.Message}");
                throw;
            }
        }

        private Address ToAddress(CreateAddressCommand addressCommand)
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
                LambdaLogger.Log($"WARN: CreatePatientCommand - Address - StreetAddress ({addressCommand.StreetAddress}) should be valid. (empty or null)");
                return null;
            }

            //var country = Country.FromCode(addressCommand.Country);
            var country = _dbContext.Countries.FirstOrDefault(x => x.Code == addressCommand.Country);

            Result<Date> addrEffectiveFrom = Date.Create(addressCommand.EffectiveFrom);
            if (addrEffectiveFrom.IsFailure)
            {
                LambdaLogger.Log($"ERROR: CreatePatientCommand - Address - EffectiveFrom ({addressCommand.EffectiveFrom}) date failure. ({addrEffectiveFrom.Error})");
                throw new ValidationException(addrEffectiveFrom.Error);
            }

            Result<Date> addrEffectiveTo = Date.Create(addressCommand.EffectiveTo);
            if (addrEffectiveTo.IsFailure)
            {
                LambdaLogger.Log($"ERROR: CreatePatientCommand - Address - EffectiveTo ({addressCommand.EffectiveTo}) date failure. ({addrEffectiveTo.Error})");
                throw new ValidationException(addrEffectiveTo.Error);
            }

            var domicile = _dbContext.Domiciles.ToList().Where(p => p.Code == addressCommand.Domicile).SingleOrDefault();

            //var addressType = AddressType.FromCode(addressCommand.AddressType);
            var addressType = _dbContext.AddressTypes.FirstOrDefault(x => x.Code == addressCommand.AddressType);
            if (addressType is null)
            {
                LambdaLogger.Log($"ERROR: CreatePatientCommand - Address - AddressType ({addressCommand.AddressType}) should be valid. (null)");
                throw new ValidationException($"AddressType ({addressCommand.AddressType}) should be valid.");
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

        private Contact ToContact(CreateContactCommand contactCommand)
        {
            //var contactUsage = ContactUsage.FromCode(contactCommand.ContactUsage);
            var contactUsage = _dbContext.ContactUsages.FirstOrDefault(x => x.Code == contactCommand.ContactUsage);
            if (contactUsage is null)
            {
                LambdaLogger.Log($"WARN: CreatePatientCommand - Contact - ContactUsage ({contactCommand.ContactUsage}) is not valid. (null)");
            }

            //var contactType = ContactType.FromCode(contactCommand.ContactType);
            var contactType = _dbContext.ContactTypes.FirstOrDefault(x => x.Code == contactCommand.ContactType);
            if (contactType is null)
            {
                LambdaLogger.Log($"WARN: CreatePatientCommand - Contact - ContactType ({contactCommand.ContactType}) is not valid. (null)");
            }

            if (string.IsNullOrEmpty(contactCommand.Detail))
            {
                LambdaLogger.Log($"WARN: CreatePatientCommand - Contact - Detail ({contactCommand.Detail}) should be valid. (empty or null)");
                return null;
            }

            //5.5 is mandatory
            if (string.IsNullOrEmpty(contactCommand.EffectiveFrom))
            {
                LambdaLogger.Log($"WARN: CreatePatientCommand - Contact - EffectiveFrom ({contactCommand.EffectiveFrom}) is not valid. (empty or null).");
            }

            Result<Date> contactEffectiveFrom = Date.Create(contactCommand.EffectiveFrom);
            if (contactEffectiveFrom.IsFailure)
            {
                LambdaLogger.Log($"ERROR: CreatePatientCommand - Contact - EffectiveFrom ({contactCommand.EffectiveFrom}) date failure. ({contactEffectiveFrom.Error})");
                throw new ValidationException(contactEffectiveFrom.Error);
            }

            // 5.6 Optional
            Result<Date> contactEffectiveTo = Date.Create(contactCommand.EffectiveTo);
            if (contactEffectiveTo.IsFailure)
            {
                LambdaLogger.Log($"ERROR: CreatePatientCommand - Contact - EffectiveTo ({contactCommand.EffectiveTo}) date failure. ({contactEffectiveTo.Error})");
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
                EventType = "NewPatientCreated",
                NHI = nhi
            };
            return JsonSerializer.Serialize(msg);
        }
    }
}
