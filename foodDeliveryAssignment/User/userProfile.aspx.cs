using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration; //in references to your connection string

namespace foodDeliveryAssignment.User
{
    public partial class userProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                lblLogin.Visible = false;
                lblUserProfile.Visible = true;

                if (Session["id"] != null)
                {
                    lblUser.Text = "Welcome back, " + Session["name"].ToString() + " ";
                    // Get the user's data from the database based on the ID in the session
                    int ID = Convert.ToInt32(Session["id"]);
                    string connectionString = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        string query = "SELECT * FROM tblUsers WHERE ID = @id";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@id", ID);
                            connection.Open();
                            SqlDataReader reader = command.ExecuteReader();
                            if (reader.Read())
                            {
                                // Load the user's data into the form
                                txtFName.Text = reader["firstname"].ToString();
                                txtLName.Text = reader["lastname"].ToString();
                                txtEmail.Text = reader["email"].ToString();
                                txtPassword.Text = reader["password"].ToString();
                                lblDT.Text = reader["dtAdded"].ToString();
                            }
                        }
                    }
                }
                else
                {
                    Response.Redirect("~/User/userLogin.aspx");
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                // Update the user's data in the database based on the ID in the session
                int ID = Convert.ToInt32(Session["id"]);
                string connectionString = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "UPDATE tblUsers SET firstname = @firstName, lastname = @lastName, email = @email, password = @password WHERE ID = @id";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@id", ID);
                        command.Parameters.AddWithValue("@firstName", txtFName.Text.Trim());
                        command.Parameters.AddWithValue("@lastName", txtLName.Text.Trim());
                        command.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                        command.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                        command.Parameters.AddWithValue("@dtAdded", lblDT.Text.Trim());

                        //step 4 - execute the command
                        int result = command.ExecuteNonQuery();

                        //step 5 - manipulate data
                        if (result > 0)
                        {
                            lblMessage.Text = "Your information has been updated!";
                        }
                        else
                        {
                            lblMessage.Text = "Error, Please try again!";
                        }

                        //step 6 - close all connections
                        connection.Close();
                    }
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear(); // Removes all keys and values from the session
            Session.Abandon(); // Ends the session and releases all resources used by it
            Response.Redirect("~/Default.aspx"); // Redirects the user to the Home page
        }
    }
}