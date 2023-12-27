using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyPrototype
{
    public partial class TenantPropertyDetails : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null && Session["property_id"] != null)
                {
                    lblUser.Text = Session["username"].ToString();
                    string id = Session["property_id"].ToString();
                    DataTable dt = dal.show("properties", "id", id);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                }
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (IsPostBack)
            {
                
                if (e.CommandName == "request")
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

                            string script = "alert('Your request have  been submitted to Lanlord for approval');";
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

                        }


                    }



                }

            }
        }
       
    }

}

