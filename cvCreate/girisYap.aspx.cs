using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace cvCreate
{
    public partial class Girişyap : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-3V5IMN1\MSSQLSERVER02;Initial Catalog=BlogWebDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From tblAdmin where kullanıcı= @P1 and sifre=@P2",baglanti);
            komut.Parameters.AddWithValue("@P1",TextBox1.Text);
            komut.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("hakkinda.aspx");
            }
            else
            {
                Response.Write("Hatalı kullanıcı adı veya şifre");
            }
            baglanti.Close();
        }
    }
}