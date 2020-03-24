using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Models
{
    public class Qualifications
    {
        public int QualificationId { get; set; }

        public string HighestQualification { get; set; }

        public string Courses { get; set; }

        public string Specilization { get; set; }

        public string Universiy { get; set; }

        public string CourseType { get; set; }

        public string PassingYear { get; set; }

        public int UserId { get; set; }


    }
}
