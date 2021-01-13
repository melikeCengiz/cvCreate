using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class deneyimguncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Txtıd.Enabled = false;       /* ID'ye dışarıdan müdahaleyi engeller.'*/
            Txtıd.Text = x.ToString();

            if (Page.IsPostBack == false)

            {
                DataSet1TableAdapters.tblDeneyimTableAdapter dt = new DataSet1TableAdapters.tblDeneyimTableAdapter();
                Txtbaslik.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].baslik;

                Txtaltbaslik.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].altbaslik;

                txtaciklama.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].aciklama;

                txttarih.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].tarih;

            }
        }
        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblDeneyimTableAdapter dt = new DataSet1TableAdapters.tblDeneyimTableAdapter();
            dt.DeneyimGuncelle(Txtbaslik.Text, Txtaltbaslik.Text, txtaciklama.Text, txttarih.Text, Convert.ToInt16(Txtıd.Text));
            Response.Redirect("deneyim.aspx");
        }
    }
}




