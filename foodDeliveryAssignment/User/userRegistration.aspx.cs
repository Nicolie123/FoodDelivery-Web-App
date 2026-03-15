using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodDeliveryAssignment.User
{
    public partial class WebForm1 : System.Web.UI.Page
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
            lblDTAdded.Text = DateTime.Now.ToString();
            SqlDataSource1.Insert();
            lblMessage.Text = "Account created successfully!";
            txtFName.Text = "";
            txtLName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
        }
    }
}