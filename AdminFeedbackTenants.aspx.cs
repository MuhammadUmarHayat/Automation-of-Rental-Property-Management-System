﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class AdminFeedbackTenants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL dal = new DAL();
            DataTable dt = dal.show("feedbacks", "usertype", "tenant");
            GridView1.DataSource = dt;
            DataBind();
        }
    }
}