using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class LandlordHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]!=null)
            {
                Label1.Text = Session["username"].ToString();
               string username = Session["username"].ToString();
                DAL dal = new DAL();

                lbltotalProperty.Text = dal.TotalProperties(username);
                lblAggrement.Text = dal.TotalContracts(username);
                lblRequest.Text = dal.TotalRequests(username);
                lblFeedback.Text = dal.TotalFeedbacks(username);
                lblRevenue.Text = dal.TotalRevenue(username);
            }
            else
            {
                Response.Redirect("Logout.aspx");
            }
        }
    }
}