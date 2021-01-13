using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class konferansSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            
            
            DataSet1TableAdapters.tblIsAkisiTableAdapter bt = new DataSet1TableAdapters.tblIsAkisiTableAdapter();
            bt.konferansSil(Convert.ToInt16(x));
            Response.Redirect("konferanslar.aspx");
        }
    }
}