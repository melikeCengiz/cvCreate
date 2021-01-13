using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class yetenekGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           txtid.Text.ToString();
            txtid.Enabled = false;

            if(Page.IsPostBack == false) {

            DataSet1TableAdapters.tblYetenekTableAdapter dt = new DataSet1TableAdapters.tblYetenekTableAdapter();
            int x = Convert.ToInt16(Request.QueryString["ID"]);
                txtid.Text = x.ToString();

            TextBox1.Text = dt.YetenekGetir(Convert.ToInt16(x))[0].yetenekler;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblYetenekTableAdapter dt = new DataSet1TableAdapters.tblYetenekTableAdapter();
            dt.YetenekGuncelle(TextBox1.Text, Convert.ToInt16(txtid.Text));
            Response.Redirect("yetenek.aspx");

        }
    }
}