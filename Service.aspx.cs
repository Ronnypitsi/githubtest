using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webschoolonline
{
    public partial class Service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["Action"] != null)
            {

                switch (Request.Params["Action"].ToLower())
                {

                    case "getcompanydetails":
                        GetCompanyDetails();
                        break;
                   
                    case "getcompanycategory":
                        GetSupplierCategory();
                        break;
                   case "getcompanycategorydocument":
                        GetSupplierCategoryDocument();
                        break;
                    case "categorystatus":
                        CategoryStatus();
                        break;
                        case "licensestatus":
                        LicenseStatus();
                        break;



                }
            }
        }

        public void LicenseStatus()
        {
            Response.Expires = -1;
            Response.ContentType = "application/json";
            Response.StatusCode = (int)HttpStatusCode.NotFound;
            JavaScriptSerializer jss = new JavaScriptSerializer();
            jss.MaxJsonLength = 2147483647;
            string categoryid = !string.IsNullOrEmpty(Request.Params["categoryid"]) ? Request.Params["categoryid"] : null;
            //string categoryid = !string.IsNullOrEmpty(Request.Params["categoryid"]) ? Request.Params["categoryid"] : null;
            string status = !string.IsNullOrEmpty(Request.Params["status"]) ? Request.Params["status"] : null;


            try
            {
                data vehicleDataObj = new data();
                DataTable dataTable = new DataTable();

                string JSONresult = string.Empty;
                vehicleDataObj.UPDATESupplierLicenseStatus(status, Convert.ToInt32(categoryid), Convert.ToInt32(categoryid));
                JSONresult = JsonConvert.SerializeObject(dataTable);

                Response.Write(jss.Serialize(true));
                Response.StatusCode = (int)HttpStatusCode.OK;

            }
            catch (Exception ex)
            {
                Response.Write(jss.Serialize("Error " + ex.Message));
                Response.StatusCode = (int)HttpStatusCode.OK;
            }
            Response.End();
        }
        public void CategoryStatus()
        {
            Response.Expires = -1;
            Response.ContentType = "application/json";
            Response.StatusCode = (int)HttpStatusCode.NotFound;
            JavaScriptSerializer jss = new JavaScriptSerializer();
            jss.MaxJsonLength = 2147483647;
            string categoryid = !string.IsNullOrEmpty(Request.Params["categoryid"]) ? Request.Params["categoryid"] : null;
            string status = !string.IsNullOrEmpty(Request.Params["status"]) ? Request.Params["status"] : null;


            try
            {
                data vehicleDataObj = new data();
                DataTable dataTable = new DataTable();

                string JSONresult = string.Empty;
                vehicleDataObj.UPDATESupplierCategoryStatus(status, Convert.ToInt32(categoryid));
                JSONresult = JsonConvert.SerializeObject(dataTable);

                Response.Write(jss.Serialize(true));
                Response.StatusCode = (int)HttpStatusCode.OK;

            }
            catch (Exception ex)
            {
                Response.Write(jss.Serialize("Error " + ex.Message));
                Response.StatusCode = (int)HttpStatusCode.OK;
            }
            Response.End();
        }
        public void GetSupplierCategoryDocument()
        {
            Response.Expires = -1;
            Response.ContentType = "application/json";
            Response.StatusCode = (int)HttpStatusCode.NotFound;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            //jss.MaxJsonLength = 2147483647;
            string Companyid = !string.IsNullOrEmpty(Request.Params["Companyid"]) ? Request.Params["Companyid"] : null;



            try
            {
                data DataObj = new data();
                DataTable dataTable = new DataTable();

               

                dataTable=DataObj.GetSupplierCategoryDocument(Convert.ToInt32(Companyid));
               string JSONresult = JsonConvert.SerializeObject(dataTable);
                Response.Write(jss.Serialize(JSONresult));
                Response.StatusCode = (int)HttpStatusCode.OK;


            }
            catch (Exception ex)
            {

                Response.Write(jss.Serialize(1));
                Response.StatusCode = (int)HttpStatusCode.OK;
            }





            Response.End();
        }
       public void GetSupplierCategory()
        {
            Response.Expires = -1;
            Response.ContentType = "application/json";
            Response.StatusCode = (int)HttpStatusCode.NotFound;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            //jss.MaxJsonLength = 2147483647;
            string Companyid = !string.IsNullOrEmpty(Request.Params["Companyid"]) ? Request.Params["Companyid"] : null;



            try
            {
                data DataObj = new data();
                DataTable dataTable = new DataTable();

               

                dataTable=DataObj.GetSupplierCategory(Convert.ToInt32(Companyid));
               string JSONresult = JsonConvert.SerializeObject(dataTable);
                Response.Write(jss.Serialize(JSONresult));
                Response.StatusCode = (int)HttpStatusCode.OK;


            }
            catch (Exception ex)
            {

                Response.Write(jss.Serialize(1));
                Response.StatusCode = (int)HttpStatusCode.OK;
            }





            Response.End();
        }
     public void GetCompanyDetails()
        {
            Response.Expires = -1;
            Response.ContentType = "application/json";
            Response.StatusCode = (int)HttpStatusCode.NotFound;
            JavaScriptSerializer jss = new JavaScriptSerializer();

            //jss.MaxJsonLength = 2147483647;
            string Companyid = !string.IsNullOrEmpty(Request.Params["Companyid"]) ? Request.Params["Companyid"] : null;



            try
            {
                data DataObj = new data();
                DataTable dataTable = new DataTable();

               

                dataTable=DataObj.GetSupplierdetail(Convert.ToInt32(Companyid));
               string JSONresult = JsonConvert.SerializeObject(dataTable);
                Response.Write(jss.Serialize(JSONresult));
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