using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Net;

using System.Web.Script.Serialization;
using System.Web.UI;
using System.Configuration;

using System.IO;
using System.Text;
namespace Webschoolonline
{
    /// <summary>
    /// Summary description for addsuppliers
    /// </summary>
    public class addsuppliers : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            try
            {
                string CustomerEmail = "vincent.mufamadi@mobility-online.co.za";
            string processBusy = !string.IsNullOrEmpty(context.Request.Params["processBusy"]) ? context.Request.Params["processBusy"] : null;
            string ParentCompany = !string.IsNullOrEmpty(context.Request.Params["ParentCompany"]) ? context.Request.Params["ParentCompany"] : null;
            string YearEstablished = !string.IsNullOrEmpty(context.Request.Params["YearEstablished"]) ? context.Request.Params["YearEstablished"] : null;
            string NameCompany = !string.IsNullOrEmpty(context.Request.Params["NameCompany"]) ? context.Request.Params["NameCompany"] : null;
            string LicenseNo = !string.IsNullOrEmpty(context.Request.Params["LicenseNo"]) ? context.Request.Params["LicenseNo"] : null;
            string contactperson = !string.IsNullOrEmpty(context.Request.Params["contactperson"]) ? context.Request.Params["contactperson"] : null;
            string phone = !string.IsNullOrEmpty(context.Request.Params["phone"]) ? context.Request.Params["phone"] : null;
            string fax = !string.IsNullOrEmpty(context.Request.Params["fax"]) ? context.Request.Params["fax"] : null;
            string email = !string.IsNullOrEmpty(context.Request.Params["email"]) ? context.Request.Params["email"] : null;
            string Companystreet = !string.IsNullOrEmpty(context.Request.Params["Companystreet"]) ? context.Request.Params["Companystreet"] : null;
            string CompanyCity = !string.IsNullOrEmpty(context.Request.Params["CompanyCity"]) ? context.Request.Params["CompanyCity"] : null;
            string CompanyCountry = !string.IsNullOrEmpty(context.Request.Params["CompanyCountry"]) ? context.Request.Params["CompanyCountry"] : null;
            string PostBoxNo = !string.IsNullOrEmpty(context.Request.Params["PostBoxNo"]) ? context.Request.Params["PostBoxNo"] : null;
            string CompanyState = !string.IsNullOrEmpty(context.Request.Params["CompanyState"]) ? context.Request.Params["CompanyState"] : null;
            string fulltimeemployees = !string.IsNullOrEmpty(context.Request.Params["fulltimeemployees"]) ? context.Request.Params["fulltimeemployees"] : null;
            string parttimeemployees = !string.IsNullOrEmpty(context.Request.Params["parttimeemployees"]) ? context.Request.Params["parttimeemployees"] : null;

            string Oraganisation = !string.IsNullOrEmpty(context.Request.Params["Oraganisation"]) ? context.Request.Params["Oraganisation"] : null;
                string OfficeFurniture = !string.IsNullOrEmpty(context.Request.Params["OfficeFurniture"]) ? context.Request.Params["OfficeFurniture"] : null;
                string Consultant = !string.IsNullOrEmpty(context.Request.Params["Consultant"]) ? context.Request.Params["Consultant"] : null;
                string description = !string.IsNullOrEmpty(context.Request.Params["description"]) ? context.Request.Params["description"] : null;
                string PromotionalMaterial = !string.IsNullOrEmpty(context.Request.Params["PromotionalMaterial"]) ? context.Request.Params["PromotionalMaterial"] : null;
                string ComputerandAccessories = !string.IsNullOrEmpty(context.Request.Params["ComputerandAccessories"]) ? context.Request.Params["ComputerandAccessories"] : null;
                string AdvertisingMaterial = !string.IsNullOrEmpty(context.Request.Params["AdvertisingMaterial"]) ? context.Request.Params["AdvertisingMaterial"] : null;
                string PrintingEquipment = !string.IsNullOrEmpty(context.Request.Params["PrintingEquipment"]) ? context.Request.Params["PrintingEquipment"] : null;
                string NetworkingService = !string.IsNullOrEmpty(context.Request.Params["NetworkingService"]) ? context.Request.Params["NetworkingService"] : null;
                string ConferenceFacilities = !string.IsNullOrEmpty(context.Request.Params["ConferenceFacilities"]) ? context.Request.Params["ConferenceFacilities"] : null;
                //string Email = !string.IsNullOrEmpty(context.Request.Params["Email"]) ? context.Request.Params["Email"] : null;
                //string Names = !string.IsNullOrEmpty(context.Request.Params["Names"]) ? context.Request.Params["Names"] : null;
                //string Province = !string.IsNullOrEmpty(context.Request.Params["Province"]) ? context.Request.Params["Province"] : null;
                //string other = !string.IsNullOrEmpty(context.Request.Params["otherp"]) ? context.Request.Params["otherp"] : null;
                //string VehicleDrive = !string.IsNullOrEmpty(context.Request.Params["VehicleDrive"]) ? context.Request.Params["VehicleDrive"] : null;
                //string ExteriorColor = !string.IsNullOrEmpty(context.Request.Params["ExteriorColor"]) ? context.Request.Params["ExteriorColor"] : null;
                //string colorinterior = !string.IsNullOrEmpty(context.Request.Params["colorinterior"]) ? context.Request.Params["colorinterior"] : null;
                //string ServiceHistory = !string.IsNullOrEmpty(context.Request.Params["ServiceHistory"]) ? context.Request.Params["ServiceHistory"] : null;
                //string DealerNames = !string.IsNullOrEmpty(context.Request.Params["DealerNames"]) ? context.Request.Params["DealerNames"] : null;
                //string SellerType = !string.IsNullOrEmpty(context.Request.Params["SellerType"]) ? context.Request.Params["SellerType"] : null;
                data DataObj = new data();
                DataTable dataTable = new DataTable();

            int Id = 0, CId = 0, dealerID = 0;

            DataObj.AddCompany(NameCompany, ParentCompany, YearEstablished,LicenseNo, contactperson, phone, fax, email, Companystreet, CompanyCity, CompanyCountry, PostBoxNo, CompanyState, fulltimeemployees, parttimeemployees, Oraganisation, out Id);


                HttpFileCollection filesUpload = context.Request.Files;
                for (int i = 0; i < filesUpload.Count; i++)
                {
                   
                    //MemoryStream ms;
                    HttpPostedFile file = filesUpload[i];

                    var fileName = Path.GetFileName(file.FileName);
                    string hhe = Path.GetFileNameWithoutExtension(fileName);
                    string huhh = DateTime.Now.ToString("yyyyMMddHHmmssfff");
                    string hgjh = Path.GetExtension(fileName);
                    string l = hhe + huhh + hgjh;




                    StringBuilder sb = new StringBuilder();
                    string path = context.Server.MapPath("~/DOC");
                    path = path + "\\" + NameCompany + "\\" + YearEstablished + "\\" + LicenseNo + "\\" + Oraganisation + "\\" + DateTime.Now.ToString("yyyyMMdd") + "\\";
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }


                    string imageAngle = !string.IsNullOrEmpty(context.Request.Params[file.FileName + "filetype"]) ? context.Request.Params[file.FileName + "filetype"] : null;
                    if(imageAngle== "LICENSE") { 
                    string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.addSupplierlicense(fileServerPath, Id);
                    }
                     if(imageAngle== "OfficeFurniture") {
                    DataObj.InsertSupplierCategory(OfficeFurniture, "N/A", Id,out CId);
                        string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.InsertSupplierCategoryDocument(fileServerPath, CId);
                    }
                     if(imageAngle== "Consultant") {
                        DataObj.InsertSupplierCategory(Consultant, "description", Id, out CId);
                        string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.InsertSupplierCategoryDocument(fileServerPath, CId);
                    }
                     if(imageAngle== "PromotionalMaterial") {
                        DataObj.InsertSupplierCategory(PromotionalMaterial, "N/A", Id, out CId);
                        string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.InsertSupplierCategoryDocument(fileServerPath, CId);
                    }
                     if(imageAngle== "ComputerandAccessories") {
                        DataObj.InsertSupplierCategory(ComputerandAccessories, "N/A", Id, out CId);
                        string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.InsertSupplierCategoryDocument(fileServerPath, CId);
                    }
                     if(imageAngle== "AdvertisingMaterial") {
                        DataObj.InsertSupplierCategory(AdvertisingMaterial, "N/A", Id, out CId);
                        string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.InsertSupplierCategoryDocument(fileServerPath, CId);
                    }
                     if(imageAngle== "PrintingEquipment") {
                        DataObj.InsertSupplierCategory(PrintingEquipment, "N/A", Id, out CId);
                        string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.InsertSupplierCategoryDocument(fileServerPath, CId);
                    }
                     if(imageAngle== "NetworkingService") {
                        DataObj.InsertSupplierCategory(NetworkingService, "N/A", Id, out CId);
                        string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.InsertSupplierCategoryDocument(fileServerPath, CId);
                    }  if(imageAngle== "ConferenceFacilities") {
                        DataObj.InsertSupplierCategory(ConferenceFacilities, "N/A", Id, out CId);
                        string fileServerPath = "~/DOC" + "/" + NameCompany + "/" + YearEstablished + "/" + LicenseNo + "/" + Oraganisation + "/" + DateTime.Now.ToString("yyyyMMdd") + "/" + fileName;
                    file.SaveAs(path + fileName);
                    DataObj.InsertSupplierCategoryDocument(fileServerPath, CId);
                    }

                }




                    context.Response.ContentType = "text/plain";
            context.Response.Write("Supplier registered Successfully!");
            }
            catch (Exception ex)
            {

                context.Response.ContentType = "text/plain";
                context.Response.Write(ex.Message);

            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}