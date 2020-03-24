using naukri.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Domains
{
    public class QualificationDomain:BaseDomain
    {

        public List<Qualifications> Get(int UserId)
        {
            var reader = this.GetReader($"select * from Qualifications where UserId='{UserId}' ");
            var qualifications = new List<Qualifications>();
            while (reader.Read())
            {
                var qualification = new Qualifications();
                qualification.QualificationId = reader.GetInt32(0);
                qualification.UserId = reader.GetInt32(1);
                qualification.HighestQualification = reader.GetString(2);
                qualification.Courses = reader.GetString(3);
                qualification.Specilization = reader.GetString(4);
                qualification.PassingYear = reader.GetString(5);
                qualification.Universiy = reader.GetString(6);
                qualification.CourseType = reader.GetString(7);

                qualifications.Add(qualification);
            }
            return qualifications;
        }

        public void Add(Qualifications qualifications)
        {
            this.ExecuteNonQuery($"insert into Qualifications  values({qualifications.QualificationId},'{qualifications.HighestQualification}','{qualifications.Courses}','{qualifications.Specilization}','{qualifications.Universiy}','{qualifications.CourseType}','{qualifications.PassingYear}',{qualifications.UserId})");
        }
    }
}
