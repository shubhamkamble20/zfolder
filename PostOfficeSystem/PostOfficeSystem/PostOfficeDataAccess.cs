using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace PostOfficeSystem
{
    public class PostOfficeDataAccess
    {

        private readonly string connectionString = ConfigurationManager.ConnectionStrings["PostOfficeDB"].ConnectionString;

        public DataTable GetPostOfficeDetails()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM PostOffice", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        public void InsertPostOfficeRecord(string firstName, string lastName, string address, string schemeName, decimal balance, int noOfYears, string mobile)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO PostOffice (Firstname, Lastname, Address, Schemename, Balance, NoOfYears, Mobile) " +
                               "VALUES (@Firstname, @Lastname, @Address, @Schemename, @Balance, @NoOfYears, @Mobile)";
                SqlCommand cmd = new SqlCommand(query, conn);

                // Adding parameters to prevent SQL injection
                cmd.Parameters.AddWithValue("@Firstname", firstName);
                cmd.Parameters.AddWithValue("@Lastname", lastName);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Schemename", schemeName);
                cmd.Parameters.AddWithValue("@Balance", balance);
                cmd.Parameters.AddWithValue("@NoOfYears", noOfYears);
                cmd.Parameters.AddWithValue("@Mobile", mobile);

                conn.Open(); // Open the connection
                cmd.ExecuteNonQuery(); // Execute the insert query
            }
        }

        public void UpdatePostOfficeRecord(int id, string firstName, string lastName, string address, string schemeName, decimal balance, int noOfYears, string mobile)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "UPDATE PostOffice " +
                               "SET Firstname = @Firstname, Lastname = @Lastname, Address = @Address, Schemename = @Schemename, Balance = @Balance, NoOfYears = @NoOfYears, Mobile = @Mobile " +
                               "WHERE Id = @Id";
                SqlCommand cmd = new SqlCommand(query, conn);

                // Adding parameters to the query to prevent SQL injection
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Firstname", firstName);
                cmd.Parameters.AddWithValue("@Lastname", lastName);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Schemename", schemeName);
                cmd.Parameters.AddWithValue("@Balance", balance);
                cmd.Parameters.AddWithValue("@NoOfYears", noOfYears);
                cmd.Parameters.AddWithValue("@Mobile", mobile);

                conn.Open(); // Open the database connection
                cmd.ExecuteNonQuery(); // Execute the update query
            }
        }


        public void DeletePostOfficeRecord(int id)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM PostOffice WHERE Id = @Id";
                SqlCommand cmd = new SqlCommand(query, conn);

                // Adding parameter to the query to prevent SQL injection
                cmd.Parameters.AddWithValue("@Id", id);

                conn.Open(); // Open the database connection
                cmd.ExecuteNonQuery(); // Execute the delete query
            }
        }
    }
}