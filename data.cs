using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Webschoolonline
{
    public class data
    {
        public void AddCompany(string NameCompany, string ParentCompany, string YearEstablished, string LicenseNo, string contactperson, string phone, string fax, string email, string Companystreet, string CompanyCity, string CompanyCountry, string PostBoxNo, string CompanyState, string fulltimeemployees, string parttimeemployees, string Oraganisation, out int CompanyID)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("InsertSupplier", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@NameCompany", (object)NameCompany);
                    sqlCommand.Parameters.AddWithValue("@ParentCompany", (object)ParentCompany);
                    sqlCommand.Parameters.AddWithValue("@YearEstablished", (object)YearEstablished);
                    sqlCommand.Parameters.AddWithValue("@LicenseNo", (object)LicenseNo);
                    sqlCommand.Parameters.AddWithValue("@contactperson", (object)contactperson);
                    sqlCommand.Parameters.AddWithValue("@phone", (object)phone);
                    sqlCommand.Parameters.AddWithValue("@fax", (object)fax);
                    sqlCommand.Parameters.AddWithValue("@email", (object)email);
                    sqlCommand.Parameters.AddWithValue("@Companystreet", (object)Companystreet);
                    sqlCommand.Parameters.AddWithValue("@CompanyCity", (object)CompanyCity);
                    sqlCommand.Parameters.AddWithValue("@CompanyCountry", (object)CompanyCountry);
                    sqlCommand.Parameters.AddWithValue("@PostBoxNo", (object)PostBoxNo);
                    sqlCommand.Parameters.AddWithValue("@CompanyState", (object)CompanyState);
                    sqlCommand.Parameters.AddWithValue("@fulltimeemployees", (object)fulltimeemployees);
                    sqlCommand.Parameters.AddWithValue("@parttimeemployees", (object)parttimeemployees);
                    sqlCommand.Parameters.AddWithValue("@Oraganisation", (object)Oraganisation);

                    sqlCommand.Parameters.Add("@CompanyID", SqlDbType.Int);
                    sqlCommand.Parameters["@CompanyID"].Direction = ParameterDirection.Output;
                    sqlCommand.ExecuteNonQuery();
                    CompanyID = Convert.ToInt32(sqlCommand.Parameters["@CompanyID"].Value.ToString());
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
        }
        public DataTable GetSupplierCategoryDocument(int Companyid)
        {
            DataTable dataTable = new DataTable();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("GetSupplierCategoryDocument", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@CategoryId", (object)Companyid);
                    

                    sqlCommand.ExecuteNonQuery();
                    dataTable.Load((IDataReader)sqlCommand.ExecuteReader(CommandBehavior.CloseConnection));
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
            return dataTable;
        }
         public DataTable GetSupplierCategory(int Companyid)
        {
            DataTable dataTable = new DataTable();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("GetSupplierCategory", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@SuppliersId", (object)Companyid);
                    

                    sqlCommand.ExecuteNonQuery();
                    dataTable.Load((IDataReader)sqlCommand.ExecuteReader(CommandBehavior.CloseConnection));
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
            return dataTable;
        }
         public DataTable GetSupplierdetail(int Companyid)
        {
            DataTable dataTable = new DataTable();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("GetSupplierDetails", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@CompanyID", (object)Companyid);
                    

                    sqlCommand.ExecuteNonQuery();
                    dataTable.Load((IDataReader)sqlCommand.ExecuteReader(CommandBehavior.CloseConnection));
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
            return dataTable;
        }
         public DataTable GetSupplierstatus(string LicenseNo, string Category)
        {
            DataTable dataTable = new DataTable();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("GetSupplierstatus", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@LicenseNo", (object)LicenseNo);
                    sqlCommand.Parameters.AddWithValue("@Category", (object)Category);

                    sqlCommand.ExecuteNonQuery();
                    dataTable.Load((IDataReader)sqlCommand.ExecuteReader(CommandBehavior.CloseConnection));
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
            return dataTable;
        }
        public void addSupplierlicense(string fileCompany, int CompanyID)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("InsertSupplierlicense", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@CompanyID", (object)CompanyID);
                    sqlCommand.Parameters.AddWithValue("@fileCompany", (object)fileCompany);

                    sqlCommand.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
        }
        public void InsertSupplierCategory(string CategoryType, string Specification, int CompanyID, out int CategoryId)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("InsertSupplierCategory", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@CompanyID", (object)CompanyID);
                    sqlCommand.Parameters.AddWithValue("@CategoryType", (object)CategoryType);
                    sqlCommand.Parameters.AddWithValue("@Specification", (object)Specification);

                    sqlCommand.Parameters.Add("@CategoryId", SqlDbType.Int);
                    sqlCommand.Parameters["@CategoryId"].Direction = ParameterDirection.Output;
                    sqlCommand.ExecuteNonQuery();
                    CategoryId = Convert.ToInt32(sqlCommand.Parameters["@CategoryId"].Value.ToString());

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
        }
        public void InsertSupplierCategoryDocument(string DocumentFile, int CategoryId)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("InsertSupplierCategoryDocument", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@CategoryId", (object)CategoryId);
                    sqlCommand.Parameters.AddWithValue("@DocumentFile", (object)DocumentFile);
                    sqlCommand.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
        }
        public void UPDATESupplierLicenseStatus(string status, int SuppliersId, int LicenseId)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("UPDATESupplierLicenseStatus", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@SuppliersId", (object)SuppliersId);
                     sqlCommand.Parameters.AddWithValue("@LicenseId", (object)LicenseId);
                    sqlCommand.Parameters.AddWithValue("@Status", (object)status);
                    sqlCommand.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
        }
           public void UPDATESupplierCategoryStatus(string status, int CategoryId)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString());
            try
            {
                connection.Open();
                using (SqlCommand sqlCommand = new SqlCommand("UPDATESupplierCategoryStatus", connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@CategoryId", (object)CategoryId);
                    sqlCommand.Parameters.AddWithValue("@Status", (object)status);
                    sqlCommand.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection.State > ConnectionState.Closed)
                    connection.Close();
            }
        }


        public DataTable GetSupplier()
        {
            DataTable dataTable = new DataTable();
            try
            {
                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString()))
                {
                    connection.Open();
                    using (SqlCommand sqlCommand = new SqlCommand(nameof(GetSupplier), connection))
                    {
                        sqlCommand.CommandType = CommandType.StoredProcedure;
                        dataTable.Load((IDataReader)sqlCommand.ExecuteReader(CommandBehavior.CloseConnection));
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dataTable;
        }
        public DataTable GetSupplierCategoryType()
        {
            DataTable dataTable = new DataTable();
            try
            {
                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBPAPSUPPLIER"].ToString()))
                {
                    connection.Open();
                    using (SqlCommand sqlCommand = new SqlCommand(nameof(GetSupplierCategoryType), connection))
                    {
                        sqlCommand.CommandType = CommandType.StoredProcedure;
                        dataTable.Load((IDataReader)sqlCommand.ExecuteReader(CommandBehavior.CloseConnection));
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dataTable;
        }
    }
}