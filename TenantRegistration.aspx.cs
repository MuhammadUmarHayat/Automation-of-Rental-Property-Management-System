using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

namespace MyPrototype
{
    public partial class TenantRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void btnRegister_Click(object sender, EventArgs e)
        {

            string name = txtName.Text;
            string sirname = txtSirName.Text;
            string username = txtUsername.Text;
            string pw = txtPw.Text;
            string email = txtEmail.Text;
            string language = ddlLanguage.Text;
            string usertype = "tenant";
            string status = "active";



            captcha1.ValidateCaptcha(txtCapcha.Text.Trim());
            if (captcha1.UserValidated)
            {


                DAL dal = new DAL();


                //validate data
                if (dal.isExist(username, email))
                {//true
                    lblResult.Text = "You are already registered ";

                }
                else
                {
                    string[] arr = { name, sirname, username, pw, email, language, usertype, status };
                    Boolean result = dal.save("users", arr);
                    if (result)
                    {

                        lblResult.Text = "You are registered successfully";
                    }
                }

            }
            else
            {

                lblResult.Text = "Enter Correct Captcha Text";
            }


        }




        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //cancel now

            Response.Redirect("RegistrationForm.aspx");
        }
    }
}