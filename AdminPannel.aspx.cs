using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPrototype
{
    public partial class AdminPannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL dal = new DAL();
             lblUsers.Text= dal.TotalMembers();
            lblFeedbacks.Text = dal.TotalFeedbacks();
            lblIncome.Text = dal.TotalIncome();
            lblProperties.Text = dal.TotalProperties();
            lblPType.Text = dal.TotalPropertyTypes();

        }
    }
}