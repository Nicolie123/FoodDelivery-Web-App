using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodDeliveryAssignment.User
{
    public partial class userOrderHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["id"] = "1"; //Debugging purpose

            if (Session["id"] != null)
            {
                lblUser.Text = "Welcome back, " + Session["name"].ToString() + " ";
                lblLogin.Visible = false;
                lblUserProfile.Visible = true;

                loadRepeater();
            }
            else
            {
                Response.Redirect("~/User/userLogin.aspx");
            }
        }

        protected void loadRepeater()
        {
            string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"]);
            SqlConnection conn = new SqlConnection(connection);
            conn.Open();
            string query = "SELECT * FROM tblReceipt WHERE UID = @uid";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Parameters.AddWithValue("@uid", Session["id"]);
            SqlDataAdapter sda = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            conn.Close();
        }
    }
}