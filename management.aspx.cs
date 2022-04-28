using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using Newtonsoft.Json;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webschoolonline
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["Action"] != null)
            {

                switch (Request.Params["Action"].ToLower())
                {

                    case "getsuppliers":
                        getsuppliers();
                        break;
                    case "getsupplierscategorytype":
                        GetSupplierCategoryType();
                        break;
                    case "categorystatus":
                        CategoryStatus();
                        break;
                   



                }
            }
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
                vehicleDataObj.UPDATESupplierCategoryStatus(status,Convert.ToInt32(categoryid));
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
        public void getsuppliers()
        {
            Response.Expires = -1;
            Response.ContentType = "application/json";
            Response.StatusCode = (int)HttpStatusCode.NotFound;
            JavaScriptSerializer jss = new JavaScriptSerializer();
            jss.MaxJsonLength = 2147483647;
            


            try
            {
                data vehicleDataObj = new data();
                DataTable dataTable = new DataTable();

                string JSONresult = string.Empty;
                dataTable = vehicleDataObj.GetSupplier();
                JSONresult = JsonConvert.SerializeObject(dataTable);
                
                Response.Write(jss.Serialize(JSONresult));
                Response.StatusCode = (int)HttpStatusCode.OK;

            }
            catch (Exception ex)
            {
                Response.Write(jss.Serialize("Error " + ex.Message));
                Response.StatusCode = (int)HttpStatusCode.OK;
            }
            Response.End();
        }
        public void GetSupplierCategoryType()
        {
            Response.Expires = -1;
            Response.ContentType = "application/json";
            Response.StatusCode = (int)HttpStatusCode.NotFound;
            JavaScriptSerializer jss = new JavaScriptSerializer();
            jss.MaxJsonLength = 2147483647;
            


            try
            {
                data vehicleDataObj = new data();
                DataTable dataTable = new DataTable();

                string JSONresult = string.Empty;
                dataTable = vehicleDataObj.GetSupplierCategoryType();
                JSONresult = JsonConvert.SerializeObject(dataTable);
                
                Response.Write(jss.Serialize(JSONresult));
                Response.StatusCode = (int)HttpStatusCode.OK;

            }
            catch (Exception ex)
            {
                Response.Write(jss.Serialize("Error " + ex.Message));
                Response.StatusCode = (int)HttpStatusCode.OK;
            }
            Response.End();
        }
    }
}