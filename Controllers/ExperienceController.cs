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
    public class ExperienceController:ControllerBase
    {
        public ExperienceController()
        {
            this.ExperienceDomain = new ExperienceDomain();
        }
        [HttpPost]
        public IActionResult Post(Experiences exp)
        {
            this.ExperienceDomain.Add(exp);
            return Ok();
        }
        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var experiences = this.ExperienceDomain.Get(id);
            return Ok(experiences);

        }

        private ExperienceDomain ExperienceDomain { get; set; }
    }
}
