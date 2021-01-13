using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class egitim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblEgitimTableAdapter dt = new DataSet1TableAdapters.tblEgitimTableAdapter();
            Repeater1.DataSource = dt.EgitimListesi();
            Repeater1.DataBind();
        }
    }
}