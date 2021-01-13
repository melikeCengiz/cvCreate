using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class deneyimsil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);

            DataSet1TableAdapters.tblDeneyimTableAdapter dt = new DataSet1TableAdapters.tblDeneyimTableAdapter();
            dt.DeneyimSil(id);
            Response.Redirect("deneyim.aspx");
        }
    }
}