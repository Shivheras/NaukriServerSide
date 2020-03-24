using naukri.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Domains
{
    public class RegisterDomain:BaseDomain
    {
        public void Add(Users users)
        {
            this.ExecuteNonQuery($"insert into Users  values('{users.Name}','{users.Password}','{users.Location}','{users.Skills}','{users.Email}','{users.PhoneNumber}')");
        }
    }
}
