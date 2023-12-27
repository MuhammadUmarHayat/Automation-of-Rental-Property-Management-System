using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class TenantNoticeBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["username"] != null)
                {
                    lblUser.Text = Session["username"].ToString();
                   // string username = Session["username"].ToString();
                   // DAL dal = new DAL();
                   // DataTable dt = dal.show("rental_contracts","tentant",username);
                   // GridView1.DataSource = dt;
                   //GridView1.DataBind();
                }
                else
                {
                    Response.Redirect("Logout.aspx");
                }
            }
        }
    }
}