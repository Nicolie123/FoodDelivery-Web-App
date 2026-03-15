using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodDeliveryAssignment
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                lblUser.Text = "Welcome, Guest ";
                lblLogin.Visible = true;
                lblUserProfile.Visible = false;
            }
            else
            {
                lblUser.Text = "Welcome back, " + Session["name"].ToString() + " ";
                lblLogin.Visible = false;
                lblUserProfile.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/userProductCatalog.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/userProductCatalog.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/userProductCatalog.aspx");

        }
    }
}