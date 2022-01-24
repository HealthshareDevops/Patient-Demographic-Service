using Amazon.Lambda.Core;
using Application.Queries;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace PatientService.WebAPI.Controllers
{
    [Authorize]
    public class PatientsController : ApiControllerBase
    {
        [HttpGet("{nhi}")]
        public async Task<PatientDto> Get(string nhi)
        {
            LambdaLogger.Log($"INFO: PatientsController.Get(nhi: {nhi}) called.");
            return await Mediator.Send(new GetPatientQuery() { Nhi = nhi });
        }
    }
}
