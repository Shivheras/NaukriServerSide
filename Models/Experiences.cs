using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Models
{
    public class Experiences
    {
        public int ExpId { get; set; }

        public string CurrentDesignation { get; set; }

        public string CurrentCompney { get; set; }

        public string AnnualSalary { get; set; }

        public string WorkingSince { get; set; }

        public string CurrentLocation { get; set; }

        public string DurationOfNotice { get; set; }

        public string Industry { get; set; }

        public string FunctionalArea { get; set; }

        public string Role { get; set; }

        public int UserId { get; set; }
    }
}
