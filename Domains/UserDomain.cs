using naukri.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Domains
{
    public class UserDomain:BaseDomain
    {
        public bool IsLogin(Users user)
        {
            var reader = this.GetReader($"select * from Users where Name='{user.Name}' and Password = '{user.Password}'");
            var isLoggedIn = false;
            while (reader.Read())
            {
                isLoggedIn = true;
            }
            return isLoggedIn;
        }
    }
}
