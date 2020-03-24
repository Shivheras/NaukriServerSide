using naukri.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace naukri.Domains
{
    public class ExperienceDomain:BaseDomain
    {
        public List<Experiences> Get(int UserId)
        {
            var reader = this.GetReader($"select * from Experiences where UserId='{UserId}' ");
            var experiences = new List<Experiences>();
            while (reader.Read())
            {
                var experience = new Experiences();
                experience.ExpId = reader.GetInt32(0);
                experience.UserId = reader.GetInt32(1);
                experience.CurrentDesignation = reader.GetString(2);
                experience.CurrentCompney = reader.GetString(3);
                experience.WorkingSince = reader.GetString(4);
                experience.DurationOfNotice = reader.GetString(5);
                experience.Role = reader.GetString(6);
                experience.AnnualSalary = reader.GetString(7);
                
                experiences.Add(experience);
            }
            return experiences;
        }

        public void Add(Experiences exp)
        {
            this.ExecuteNonQuery($"insert into Experiences  values({exp.ExpId},'{exp.CurrentDesignation}','{exp.CurrentCompney}','{exp.AnnualSalary}','{exp.WorkingSince}','{exp.CurrentLocation}','{exp.DurationOfNotice}','{exp.Industry}','{exp.FunctionalArea}','{exp.Role}',{exp.UserId})");
        }
    }
}
