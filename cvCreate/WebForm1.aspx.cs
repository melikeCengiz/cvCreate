using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblHakkindaTableAdapter dt = new DataSet1TableAdapters.tblHakkindaTableAdapter();
            Repeater1.DataSource = dt.HakkindaListele();
            Repeater1.DataBind();

            DataSet1TableAdapters.tblDeneyimTableAdapter dt2 = new DataSet1TableAdapters.tblDeneyimTableAdapter();
            Repeater2.DataSource = dt2.DeneyimListesi();
            Repeater2.DataBind();

            DataSet1TableAdapters.tblEgitimTableAdapter dt3 = new DataSet1TableAdapters.tblEgitimTableAdapter();
            Repeater3.DataSource = dt3.EgitimListesi();
            Repeater3.DataBind();

            DataSet1TableAdapters.tblIsAkisiTableAdapter dt4 = new DataSet1TableAdapters.tblIsAkisiTableAdapter();
            Repeater4.DataSource = dt4.AkisListesi();
            Repeater4.DataBind();

            DataSet1TableAdapters.tblHobiTableAdapter dt5 = new DataSet1TableAdapters.tblHobiTableAdapter();
            Repeater5.DataSource = dt5.HobiListesi();
            Repeater5.DataBind();

            DataSet1TableAdapters.tblYetenekTableAdapter dt6 = new DataSet1TableAdapters.tblYetenekTableAdapter();
            Repeater6.DataSource = dt6.YetenekListesi();
            Repeater6.DataBind();
        }
    }
}


