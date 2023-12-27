using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyPrototype
{
    public partial class LandlordFeedbacks : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                lblUser.Text = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("Logout.aspx");
            }

            bindusers();
        }
private void bindusers()
        {
       DataTable dt=     dal.show("users","usertype","tenant");
            if (!IsPostBack)
            {
                // Bind the DataTable to the DropDownList
                ddlTenant.DataSource = dt;
                ddlTenant.DataTextField = "username"; // Set the display text field
                ddlTenant.DataValueField = "username"; // Set the value field
                ddlTenant.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //save feedbacks
            string landlord =lblUser.Text;
            string tenant = ddlTenant.Text;
            string rating = RadioButtonList1.Text;
            string comment = TextBox1.Text;
            string dof = DateTime.Now.ToString();
            string status = "ok";
              string remarks = "";
             string usertype = "landlord";
            string[] arr = {landlord,tenant,rating,comment,dof,status,remarks,usertype };

            dal.save("feedbacks", arr);
            lblResult.Text = "Thank you for your feedback";
        }

    }
}