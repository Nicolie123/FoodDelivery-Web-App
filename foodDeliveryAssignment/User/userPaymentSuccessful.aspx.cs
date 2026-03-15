using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodDeliveryAssignment.User
{
    public partial class userPaymentSuccessful : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                lblUser.Text = "Welcome back, " + Session["name"].ToString() + " ";
                lblLogin.Visible = false;
                lblUserProfile.Visible = true;

            }
            else
            {
                Response.Redirect("~/User/userLogin.aspx");
            }
        }

        protected void btnContinueShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/userProductCatalog.aspx");
        }
    }
}