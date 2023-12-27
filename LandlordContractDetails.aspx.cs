using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class LandlordContractDetails : System.Web.UI.Page
    {
        DAL dal = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                lblUser.Text = Session["username"].ToString();
                bindusers();
                bindProperty();
            }
            else
            {
                Response.Redirect("Logout.aspx");
            }

           
        }
        private void bindusers()
        {
            DataTable dt = dal.show("users", "usertype", "tenant");
            if (!IsPostBack)
            {
                // Bind the DataTable to the DropDownList
                ddlTenant.DataSource = dt;
                ddlTenant.DataTextField = "username"; // Set the display text field
                ddlTenant.DataValueField = "username"; // Set the value field
                ddlTenant.DataBind();
            }
        }
        private void bindProperty()
        {
            DataTable dt = dal.show("properties");
            if (!IsPostBack)
            {
                // Bind the DataTable to the DropDownList
                ddlProperty.DataSource = dt;
                ddlProperty.DataTextField = "title"; // Set the display text field
                ddlProperty.DataValueField = "Id"; // Set the value field
                ddlProperty.DataBind();
            }
        }


        protected void btnContract_Click(object sender, EventArgs e)
        {
            string owner, tentant, property_no, amount, doa, status, months, years, statement;

            owner = lblUser.Text;
            tentant = ddlTenant.Text;
            property_no = ddlProperty.Text;
            amount = txtAmount.Text;
            doa = DateTime.Now.ToString();
            status = "pending";
            months = DateTime.Now.Month.ToString();
            years = DateTime.Now.Year.ToString();
            statement = txtStatement.Text;
            Boolean isContractExist = dal.isContractExist( tentant, property_no);
            Boolean isRequestExist = dal.isRequestExist(tentant, property_no);
            if (isContractExist )
            {
                lblResult.Text = "Contract is already  generated";
            }
            else
            {
                if (isRequestExist)
                {
                    string[] arr = { owner, tentant, property_no, amount, doa, status, months, years, statement };
                    dal.save("rental_contracts", arr);
                    lblResult.Text = "Contract is generated";
                }
                else
                {
                    lblResult.Text = "You have not been requested for this property";
                }
            
            
               
            }
        }

        protected void btnRequests_Click(object sender, EventArgs e)
        {
            string tenant = ddlTenant.Text;
            DataTable dt=  dal. RequestedProperties(tenant);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}