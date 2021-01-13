using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class konferansGuncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int s = Convert.ToInt16(Request.QueryString["ID"]);
            txtid.Text = s.ToString();
            txtid.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.tblIsAkisiTableAdapter dt = new DataSet1TableAdapters.tblIsAkisiTableAdapter();
                txtkonferans.Text = dt.konferansGetir(Convert.ToInt16(s))[0].diller;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblIsAkisiTableAdapter dt = new DataSet1TableAdapters.tblIsAkisiTableAdapter();
            dt.konferansGüncelle(txtkonferans.Text, Convert.ToInt16(txtid.Text));
            Response.Redirect("konferanslar.aspx");

        }
    }
}