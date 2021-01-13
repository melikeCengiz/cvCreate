using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class konferansEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblIsAkisiTableAdapter dt = new DataSet1TableAdapters.tblIsAkisiTableAdapter();
            dt.konferansEkle(txtodul.Text);
            Response.Redirect("konferanslar.aspx");
        }
    }
}