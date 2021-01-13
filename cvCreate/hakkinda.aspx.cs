using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) { 

            DataSet1TableAdapters.tblHakkindaTableAdapter dt = new DataSet1TableAdapters.tblHakkindaTableAdapter();
            TextBox1.Text = dt.HakkindaListele()[0].name;
            TextBox2.Text = dt.HakkindaListele()[0].surname;
            TextBox3.Text = dt.HakkindaListele()[0].adress;
            TextBox4.Text = dt.HakkindaListele()[0].mail;
            TextBox5.Text = dt.HakkindaListele()[0].phone;
            TextBox6.Text = dt.HakkindaListele()[0].text;
            TextBox7.Text = dt.HakkindaListele()[0].fotograf;
        }
}
        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblHakkindaTableAdapter dt1 = new DataSet1TableAdapters.tblHakkindaTableAdapter();
            dt1.hakkindaUpdate(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text,
                TextBox5.Text, TextBox6.Text, TextBox7.Text);
            Response.Redirect("WebForm1.aspx");

        }
    }
}




