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
    public class ForgotPasswordController:ControllerBase
    {
        public ForgotPasswordController()
        {
            this.ForgotPasswordDomain = new ForgotPasswordDomain();
        }
        [HttpPost]
        public IActionResult Post(Users users)
        {
            this.ForgotPasswordDomain.Recover(users);
            return Ok();
        }

        private ForgotPasswordDomain ForgotPasswordDomain { get; set; }
    }
}
