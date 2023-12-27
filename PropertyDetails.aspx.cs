using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class PropertyDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    Label1.Text = Session["username"].ToString();
                    DAL dal = new DAL();
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

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.CommandName == "edit")
                {
Session["property_id"]= e.CommandArgument.ToString();//id


                    Response.Redirect("EditProperty.aspx");

                }
                else if (e.CommandName == "delete")
                {
                    string id = e.CommandArgument.ToString();//id
                    DAL dal = new DAL();
                    dal.delete("properties","id",id);

                    Response.Redirect("PropertyDetails.aspx");
                }

            }

           
        }

        }
}