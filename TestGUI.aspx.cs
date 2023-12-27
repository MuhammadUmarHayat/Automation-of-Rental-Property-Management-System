using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class TestGUI : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["username"] != null)
                {
                    lblUser.Text = Session["username"].ToString();
                    bindData();
                    DataTable dt = dal.show("properties");
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }
                else
                {
                    Response.Redirect("Logout.aspx");
                }
            }


        }

        private void bindData()
        {
            DataTable dt = dal.show("properties");

            if (!IsPostBack)
            {
                // Bind the DataTable to the DropDownList
                ddlType.DataSource = dt;
                ddlType.DataTextField = "type"; // Set the display text field
                ddlType.DataValueField = "type"; // Set the value field
                ddlType.DataBind();
                //bind location
                ddlLocation.DataSource = dt;
                ddlLocation.DataTextField = "location"; // Set the display text field
                ddlLocation.DataValueField = "location"; // Set the value field
                ddlLocation.DataBind();

                //bind size
                ddlSize.DataSource = dt;
                ddlSize.DataTextField = "area_size"; // Set the display text field
                ddlSize.DataValueField = "area_size"; // Set the value field
                ddlSize.DataBind();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //find
            string type = ddlType.Text;
            string location = ddlLocation.Text;
            string size = ddlSize.Text;

            DataTable dt = dal.search(type, location, size);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void btnLocation_Click(object sender, EventArgs e)
        {
            string location = ddlLocation.Text;
            DataTable dt = dal.show("properties", "location", location);
            DataList1.DataSource = dt;
            DataList1.DataBind();


        }

        protected void btnSize_Click(object sender, EventArgs e)
        {
            string size = ddlSize.Text;
            DataTable dt = dal.show("properties", "area_size", size);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void btnType_Click(object sender, EventArgs e)
        {
            string type = ddlType.Text;
            DataTable dt = dal.show("properties", "type", type);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void btnCommercial_Click(object sender, EventArgs e)
        {
            string category = "commercial";
            DataTable dt = dal.show("properties", "category", category);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void btnHomes_Click(object sender, EventArgs e)
        {
            string category = "Home";
            DataTable dt = dal.show("properties", "category", category);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.CommandName == "detail")
                {
                    Session["property_id"] = e.CommandArgument.ToString();


                    Response.Redirect("TenantPropertyDetails.aspx");

                }
                else if (e.CommandName == "request")
                {

                    string id = e.CommandArgument.ToString();

                    string tenant = lblUser.Text;
                    string date = DateTime.Now.ToString();
                    string status = "pending";
                    Boolean isRequestExist = dal.isRequestExist(tenant, id);

                    if (isRequestExist)
                    {
                        string script = "alert('You have  already been requested');";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

                    }
                    else
                    {
                        DataTable dt = dal.show("properties", "id", id);
                        if (dt.Rows.Count > 0)
                        {
                            string property_no = dt.Rows[0]["id"].ToString();
                            string owner = dt.Rows[0]["owner"].ToString();

                            //send request to landloard
                            string[] arr = { tenant, property_no, date, status, owner };
                            dal.save("requests", arr);

                        }


                    }
                }

            }

        }
    }
}