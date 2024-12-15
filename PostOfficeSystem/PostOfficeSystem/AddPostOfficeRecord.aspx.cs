using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostOfficeSystem
{
    public partial class AddPostOfficeRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                // Your existing data submission logic
                PostOfficeDataAccess dataAccess = new PostOfficeDataAccess();
                dataAccess.InsertPostOfficeRecord(
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
            catch (Exception ex)
            {
                // Show an error message if something goes wrong
                ClientScript.RegisterStartupScript(this.GetType(), "Error", $"alert('Error: {ex.Message.Replace("'", "\\'")}');", true);
            }
        }

    }
}