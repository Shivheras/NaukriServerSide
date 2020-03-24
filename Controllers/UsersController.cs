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
    public class UsersController : ControllerBase
    { 
            public UsersController()
            {
                this.UserDomain = new UserDomain();
            }

            [HttpPost]
            public IActionResult Post(Users user)
            {
                var isLoggedIn = this.UserDomain.IsLogin(user);
                return Ok(isLoggedIn);
            }

            private UserDomain UserDomain { get; set; }
        }
    
}
