using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class AdminFeedbackLandlord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL dal = new DAL();
            DataTable dt = dal.show("feedbacks", "usertype", "landlord");
            GridView1.DataSource = dt;
            DataBind();

        }
    }
}