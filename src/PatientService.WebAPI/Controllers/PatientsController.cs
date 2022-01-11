using Application.Queries;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace PatientService.WebAPI.Controllers
{
    public class PatientsController : ApiControllerBase
    {
        [HttpGet("{nhi}")]
        public PatientDto Get(string nhi)
        {
            var pat = new PatientDto
            {
                Nhi = nhi
            };
            return pat;

            //return await Mediator.Send(new GetPatientQuery() { Nhi = nhi });
        }
    }
}
