using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostOfficeSystem
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            PostOfficeDataAccess dataAccess = new PostOfficeDataAccess();
            GridView1.DataSource = dataAccess.GetPostOfficeDetails();
            GridView1.DataBind();
        }
    }
}