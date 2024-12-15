using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostOfficeSystem
{
    public partial class DetailsPostOffice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["Id"]);
                LoadAccountDetails(id);
            }
        }

        private void LoadAccountDetails(int id)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["PostOfficeDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM PostOffice WHERE Id = @Id", conn);
                cmd.Parameters.AddWithValue("@Id", id);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    lblId.Text = reader["Id"].ToString();
                    lblFirstName.Text = reader["FirstName"].ToString();
                    lblLastName.Text = reader["LastName"].ToString();
                    lblAddress.Text = reader["Address"].ToString();
                    lblSchemeName.Text = reader["SchemeName"].ToString();
                    lblBalance.Text = Convert.ToDecimal(reader["Balance"]).ToString("C2"); // Format as currency
                    lblNoOfYears.Text = reader["NoOfYears"].ToString();
                    lblMobile.Text = reader["Mobile"].ToString();
                }
            }
        }
    }
}