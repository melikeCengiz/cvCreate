using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class konferanslar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblIsAkisiTableAdapter dt = new DataSet1TableAdapters.tblIsAkisiTableAdapter();
            Repeater1.DataSource = dt.AkisListesi();
            Repeater1.DataBind();

        }
    }
}