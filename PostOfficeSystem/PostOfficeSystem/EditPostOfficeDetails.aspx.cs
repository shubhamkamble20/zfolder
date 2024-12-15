using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostOfficeSystem
{
    public partial class EditPostOfficeDetails : System.Web.UI.Page
    {
        private int Id => int.Parse(Request.QueryString["Id"]);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPostOfficeDetails();
            }
        }

        private void LoadPostOfficeDetails()
        {
            PostOfficeDataAccess dataAccess = new PostOfficeDataAccess();
            DataTable postOfficeData = dataAccess.GetPostOfficeDetails();
            DataRow row = postOfficeData.Select($"Id = {Id}")[0];

            txtFirstName.Text = row["Firstname"].ToString();
            txtLastName.Text = row["Lastname"].ToString();
            txtAddress.Text = row["Address"].ToString();
            txtSchemeName.Text = row["Schemename"].ToString();
            txtBalance.Text = row["Balance"].ToString();
            txtNoOfYears.Text = row["NoOfYears"].ToString();
            txtMobile.Text = row["Mobile"].ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            PostOfficeDataAccess dataAccess = new PostOfficeDataAccess();
            dataAccess.UpdatePostOfficeRecord(
                Id,
                txtFirstName.Text,
                txtLastName.Text,
                txtAddress.Text,
                txtSchemeName.Text,
                decimal.Parse(txtBalance.Text),
                int.Parse(txtNoOfYears.Text),
                txtMobile.Text
            );
            Response.Redirect("Default.aspx");
        }
    }
}