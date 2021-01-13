using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class egitimekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnekle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblEgitimTableAdapter dt = new DataSet1TableAdapters.tblEgitimTableAdapter();
            dt.EgitimEkle(Textbaslik.Text, Textaltbaslik.Text, Textaciklama.Text, Textnot.Text, Texttarih.Text);
            Response.Redirect("egitim.aspx");
        }
    }
}