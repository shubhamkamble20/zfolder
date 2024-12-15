using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostOfficeSystem
{
    public partial class DeletePostOfficeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int Id => int.Parse(Request.QueryString["Id"]);

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            PostOfficeDataAccess dataAccess = new PostOfficeDataAccess();
            dataAccess.DeletePostOfficeRecord(Id);
            Response.Redirect("Default.aspx");
        }
    }
}