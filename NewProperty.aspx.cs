using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace MyPrototype
{
    public partial class NewProperty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("Logout.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = txtTitle.Text;
            string description = txtDescription.Text;
            string category = ddlCat.Text;
            string type = ddlType.Text;
            string size = ddlSize.Text;
            string location = txtLocation.Text;
            string address = txtAddress.Text;
            string city = txtCity.Text;
            string amt = txtAmount.Text;
            string status = ddlStatus.Text;
            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);

            string remarks = "-";
            string owner = Label1.Text;
            string[] arr = {title,description,category,type,size,location,address,city,amt,status,link,remarks,owner };
            DAL dal = new DAL();

            Boolean result = dal.save("properties", arr);//save
            if (result)
            {
                Label2.Text = "Record is saved successfully";
                Response.Redirect("PropertyDetails.aspx");
            }
            else
            {
                Label2.Text = "Something went wrong please try latter";
            }
        }
    }
}