using naukri.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Domains
{
    public class ForgotPasswordDomain : BaseDomain
    {
        public void Recover(Users users)
        {
            this.ExecuteNonQuery($"Update password from Users where Email = '{users.Email}' or Name = '{users.Name}'");
            
        }
       
           
    
    }
}
