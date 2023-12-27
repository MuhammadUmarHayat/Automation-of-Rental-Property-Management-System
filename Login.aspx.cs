using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MyPrototype
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string pw = txtPw.Text;
            string usertype = DropDownList1.Text;

            DAL dal = new DAL();

            if (usertype.Equals("admin"))
            {
                if (dal.isAdmin(username, pw))
                {
                    Session["username"] = username;
                    Response.Redirect("AdminPannel.aspx");//navigate to home
                }
            }
            else if (usertype.Equals("landlord"))
            {
                //validate data
                if (dal.login(username, pw, usertype))
                {
                    Session["username"] = username;
                    Response.Redirect("LandlordHome.aspx");//navigate to home
                }
                else
                {
                    lblResult.Text = "user name and or password is not correct!";

                }
            }
            else if (usertype.Equals("tenant"))
            {
                //validate data
                if (dal.login(username, pw, usertype))
                {
                    Session["username"] = username;
                    Response.Redirect("TenantHome.aspx");//navigate to home
                }
                else
                {
                    lblResult.Text = "user name and or password is not correct!";

                }

            }

        }
    }
}