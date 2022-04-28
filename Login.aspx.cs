using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using unirest_net.http;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webschoolonline
{
    public partial class login: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            bool result = false;
        
            HttpResponse<string> response = Unirest.get("https://outlook.office365.com/api/v1.0/me/").basicAuth("ronnyslow777@gmail.com", "Ronnyslow@1").asJson<string>();

            if (response.Code == 200)
                result = true;

            if (result)
            {

            }
            else
            {

            }
            if (Request.Params["Action"] != null)
            {

                switch (Request.Params["Action"].ToLower())
                {

                    case "register":
                        register();
                        break;
                   



                }
            }
        }
        public void register()
        {
            Response.Expires = -1;
            Response.ContentType = "application/json";
            Response.StatusCode = (int)HttpStatusCode.NotFound;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            //jss.MaxJsonLength = 2147483647;
            string SchoolName = !string.IsNullOrEmpty(Request.Params["SchoolName"]) ? Request.Params["SchoolName"] : null;
            string SchoolNumber = !string.IsNullOrEmpty(Request.Params["SchoolNumber"]) ? Request.Params["SchoolNumber"] : null;
            string SchoolBuildDate = !string.IsNullOrEmpty(Request.Params["SchoolBuildDate"]) ? Request.Params["SchoolBuildDate"] : null;
            string schoolLevel = !string.IsNullOrEmpty(Request.Params["schoolLevel"]) ? Request.Params["schoolLevel"] : null;
            string SchoolFees = !string.IsNullOrEmpty(Request.Params["SchoolFees"]) ? Request.Params["SchoolFees"] : null;
            string NumberofTeachers = !string.IsNullOrEmpty(Request.Params["NumberofTeachers"]) ? Request.Params["NumberofTeachers"] : null;
            string Numberoflearners = !string.IsNullOrEmpty(Request.Params["Numberoflearners"]) ? Request.Params["Numberoflearners"] : null;
            string schooltyp = !string.IsNullOrEmpty(Request.Params["schooltyp"]) ? Request.Params["schooltyp"] : null;
            string SchoolEmail = !string.IsNullOrEmpty(Request.Params["SchoolEmail"]) ? Request.Params["SchoolEmail"] : null;
            string SchoolPhone = !string.IsNullOrEmpty(Request.Params["SchoolPhone"]) ? Request.Params["SchoolPhone"] : null;
            string SchoolPhysicalAddress = !string.IsNullOrEmpty(Request.Params["School_PhysicalAddress"]) ? Request.Params["School_PhysicalAddress"] : null;
            string SchoolTownship = !string.IsNullOrEmpty(Request.Params["School_Township_village"]) ? Request.Params["School_Township_village"] : null;
            string SchoolDistrict = !string.IsNullOrEmpty(Request.Params["School_District"]) ? Request.Params["School_District"] : null;
            string SchoolMunicipality = !string.IsNullOrEmpty(Request.Params["School_Municipality"]) ? Request.Params["School_Municipality"] : null;
            string SchoolCity = !string.IsNullOrEmpty(Request.Params["School_City"]) ? Request.Params["School_City"] : null;
            string SchoolProvince = !string.IsNullOrEmpty(Request.Params["SchoolProvince"]) ? Request.Params["SchoolProvince"] : null;



            try
            {
                bool result = false;

                HttpResponse<string> response = Unirest.get("https://outlook.office365.com/api/v1.0/me/").basicAuth("info@e-dealerportal.co.za", "MObility1234_").asJson<string>();

                if (response.Code == 200)
                    result = true;

                if (result)
                {

                }
                else
                {

                }
                Response.Write(jss.Serialize("School Data Uploaded Successfully"));
                Response.StatusCode = (int)HttpStatusCode.OK;


            }
            catch (Exception ex)
            {

                Response.Write(jss.Serialize(1));
                Response.StatusCode = (int)HttpStatusCode.OK;
            }





            Response.End();
        }
    }
    
}