using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class AdminTenantsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL dal = new DAL();
            DataTable dt = dal.show("users", "usertype", "tenant");//tablename,column,value
            GridView1.DataSource = dt;
            DataBind();
        }
    }
}