using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class egitimguncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Textid.Enabled = false;       /* ID'ye dışarıdan müdahaleyi engeller.'*/
            Textid.Text = x.ToString();

            if (Page.IsPostBack == false)

            {
                DataSet1TableAdapters.tblEgitimTableAdapter dt = new DataSet1TableAdapters.tblEgitimTableAdapter();
                Textbaslik.Text = dt.Egitimgetir(Convert.ToInt16(x))[0].baslik;

                Textaltbaslik.Text = dt.Egitimgetir(Convert.ToInt16(x))[0].altBaslik;

                Textaciklama.Text = dt.Egitimgetir(Convert.ToInt16(x))[0].aciklama;

                Textnot.Text = dt.Egitimgetir(Convert.ToInt16(x))[0].genelNot;

                Texttarih.Text = dt.Egitimgetir(Convert.ToInt16(x))[0].tarih;

            }
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblEgitimTableAdapter dt = new DataSet1TableAdapters.tblEgitimTableAdapter();
            dt.egitimGuncelle(Textbaslik.Text, Textaltbaslik.Text, Textaciklama.Text, Textnot.Text, Texttarih.Text, Convert.ToInt16(Textid.Text));
            Response.Redirect("egitim.aspx");
        }
    }
}