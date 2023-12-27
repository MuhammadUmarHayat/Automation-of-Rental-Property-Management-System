using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyPrototype
{
    public partial class TenantPayment : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                lblUser.Text = Session["username"].ToString();
                string username = Session["username"].ToString();
              
              DataTable dt=  dal.bindProperty(username);
                // Bind the DataTable to the DropDownList

                ddlProperty.DataSource = dt;
                ddlProperty.DataTextField = "PropertyTitle"; // Set the display text field
                ddlProperty.DataValueField = "PropertyTitle"; // Set the value field
                ddlProperty.DataBind();




            }
            }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //save amount
            string propertyTitle = ddlProperty.Text;
            DataTable dt = dal.getRentalDetails(propertyTitle);
            ////TenantName,contract_no,Owner,property_no, PropertyTitle,

            string TenantName = dt.Rows[0]["TenantName"].ToString();
            string contract_no = dt.Rows[0]["contract_no"].ToString();
            string Owner = dt.Rows[0]["Owner"].ToString();
            string property_no = dt.Rows[0]["property_no"].ToString();
            string PropertyTitle = dt.Rows[0]["PropertyTitle"].ToString();
            string amont = lblAmount.Text;
            string dot = DateTime.Now.ToString();
            string months = DateTime.Now.Month.ToString();
            string years = DateTime.Now.Year.ToString();
            string status = "submit";
            bool isValidTransaction = dal.isValidTransaction(TenantName, property_no, months, years);
if (isValidTransaction)
            {
                string[] arr = { property_no, Owner, TenantName, contract_no, amont, dot, months, years, status, propertyTitle };
                dal.save("transactions", arr);
                string script = "alert('Your payment  been processed');";

                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                Response.Redirect("TenantHome.aspx");
            }
            else
            {
                string script = "alert('Your transaction is not valid! You already have submitted the payment ');";

                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
               // Response.Redirect("TenantHome.aspx");

            }
            

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            string property = ddlProperty.Text;
           DataTable dt= dal.show("properties", "title", property);
            lblAmount.Text = dt.Rows[0]["amount"].ToString();

        }
    }
}