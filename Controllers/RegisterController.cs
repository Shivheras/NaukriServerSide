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
    public class RegisterController:ControllerBase
    {
        public RegisterController()
        {
            this.RegisterDomain = new RegisterDomain();
        }
        [HttpPost]
        public IActionResult Post(Users users)
        {
            this.RegisterDomain.Add(users);
            return Ok();
        }

        private RegisterDomain RegisterDomain { get; set; }
    }
}
