using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//step 1 - namespaces
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace foodDeliveryAssignment.User
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = "Welcome, Guest ";
            lblLogin.Visible = true;
            lblUserProfile.Visible = false;
        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            string username = txtEmail.Text;
            string password = txtPassword.Text;

            if (username == "admin" && password == "admin123")
            {
                // Redirect to the admin dashboard page
                Response.Redirect("~/Admin/adminPage.aspx");
            }
            else
            {
                //step 2 - create the db connection
                string connStr = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();

                //step 3 - create a command - select, insert, update, delete
                //sqlinjection = *  'O'brien'
                string sqlQuery = "SELECT * FROM tblUsers WHERE email=@email AND password=@password";
                SqlCommand comm = new SqlCommand(sqlQuery, conn);
                comm.Parameters.AddWithValue("@email", txtEmail.Text.Trim()); //ben@gmail.com
                comm.Parameters.AddWithValue("@password", txtPassword.Text.Trim());

                //step 4 - create a data reader
                SqlDataReader reader = comm.ExecuteReader();

                //step 5 - manipulate the reader
                if (reader.Read())
                {
                    //true
                    Response.Write("Correct credentials!");
                    Response.Write(reader["firstname"].ToString());
                    Session["name"] = reader["firstname"].ToString() + " " + reader["lastname"].ToString();
                    Session["email"] = reader["email"].ToString();
                    Session["id"] = reader["id"].ToString();
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Invalid credentials!";
                }

                //step 6 - close all connections
                conn.Close();
            }            
        }
    }
}