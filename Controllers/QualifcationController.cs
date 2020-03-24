using Microsoft.AspNetCore.Mvc;
using naukri.Domains;
using naukri.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class QualifcationController : ControllerBase
    {
         public QualifcationController()
            {
                this.QualificationDomain = new QualificationDomain();
            }
            [HttpPost]
            public IActionResult Post(Qualifications qualification)
            {
                this.QualificationDomain.Add(qualification);
                return Ok();
            }
        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var qualifications = this.QualificationDomain.Get(id);
            return Ok(qualifications);

        }

        private QualificationDomain QualificationDomain { get; set; }
        }
}
