﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cvCreate
{
    public partial class hobiler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblHobiTableAdapter dt = new DataSet1TableAdapters.tblHobiTableAdapter();
            Repeater1.DataSource = dt.HobiListesi();
            Repeater1.DataBind();
        }
    }
}