using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class hobiGüncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            txtid.Text = x.ToString();
            txtid.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.tblHobiTableAdapter dt = new DataSet1TableAdapters.tblHobiTableAdapter();
              txthobi.Text= dt.HobiGetir(Convert.ToInt16(txtid.Text))[0].hobiler;
               
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblHobiTableAdapter dt = new DataSet1TableAdapters.tblHobiTableAdapter();
            dt.hobiGüncelle(txthobi.Text,Convert.ToInt16(txtid.Text));
            Response.Redirect("hobiler.aspx");


        }
    }
}