using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using PractiseTest.Models;
using PractiseTest.ViewModels;

namespace PractiseTest.Controllers
{
    public class StreetController : ApiController
    {
        AreaServicesEntities db = new AreaServicesEntities();

        [HttpPost]
        public Response CreateStreet(Street street)
        {
            var response = new Response();

            street.Name = street.Name.ToUpper();
            street.AreaName = street.AreaName.ToUpper();
            //Checking if area exists
            var existingArea = db.Areas.FirstOrDefault(x => x.Name == street.AreaName);
            if (existingArea!=null)
            {
                //Checking for existing Street Name
                var existingStreet = db.Streets.FirstOrDefault(x => x.Name == street.Name);
                if (existingStreet==null)
                {
                    db.Streets.Add(street);
                    db.SaveChanges();
                    response.Status = "Success";
                    response.Description = "Street added successfully";
                }
                else
                {
                    response.Status = "Failed";
                    response.Description = "Street exists already";
                }
            }
            else
            {
                response.Status = "Failed";
                response.Description = "Area does not exist";
            }

            return response;
        }

        [HttpPost]
        public IEnumerable<Street> RetrieveStreets(string AreaName)
        {
             var streets = db.Streets.Where(x => x.AreaName == AreaName.ToUpper()).ToList();
            return streets;
        }
    }
}
