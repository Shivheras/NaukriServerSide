﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Models
{
    public class Users
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Location { get; set; }
        public string PhoneNumber { get; set; }
        public string Skills { get; set; }
    }
}
