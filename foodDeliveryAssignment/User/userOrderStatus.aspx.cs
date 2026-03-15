using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodDeliveryAssignment.User
{
    public partial class userOrderStatus : System.Web.UI.Page
    {
        string str;
        string orderId;
        string value;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["id"] = "1"; //Debugging purpose

            if (!Page.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    lblUser.Text = "Welcome back, " + Session["name"].ToString() + " ";
                    lblLogin.Visible = false;
                    lblUserProfile.Visible = true;

                    ddlOrderID.DataBind();
                    orderId = ddlOrderID.SelectedValue;
                    int orderID = Convert.ToInt32(orderId);
                    if (orderID != 0)
                    {

                        loadOrderList();
                    }
                    else
                    {
                        lblError.Visible = true;
                        lblError.Text = "There is no Receipt in your account yet, please purchase anything!";
                    }
                }
                else
                {
                    Response.Redirect("~/User/userLogin.aspx");
                }
            }
        }

        protected void loadOrderList()
        {
            string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"]);
            SqlConnection conn = new SqlConnection(connection);
            string sqlQuery = "SELECT OID, RID, Status, dtAdded FROM tblOrder WHERE UID = @uid AND OID=@oid";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            cmd.Parameters.AddWithValue("@uid", Session["id"]);
            cmd.Parameters.AddWithValue("@oid", Convert.ToInt32(orderId));
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void ddlOrderID_SelectedIndexChanged(object sender, EventArgs e)
        {
            orderId = ddlOrderID.SelectedValue;
            loadOrderList();
        }

        protected void btnSubmitFeedback_Click(object sender, EventArgs e)
        {
            int userID = Convert.ToInt32(Session["id"]);
            int ratingValue = Convert.ToInt32(rblRating.SelectedValue);
            string comment = txtComment.Text;
            orderId = ddlOrderID.SelectedValue;
            DateTime dtAdded = DateTime.Now;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString);
            string query = "INSERT INTO tblFeedback (UID, OID, ratingValue, comment, dtAdded) VALUES (@uid, @oid, @ratingValue, @comment, @dtAdded)";
            SqlCommand cmd = new SqlCommand(query, conn);
            
            cmd.Parameters.AddWithValue("@uid", userID);
            cmd.Parameters.AddWithValue("@oid", Convert.ToInt32(orderId));
            cmd.Parameters.AddWithValue("@ratingValue", ratingValue);
            cmd.Parameters.AddWithValue("@Comment", comment);
            cmd.Parameters.AddWithValue("@dtAdded", dtAdded);

            try
            {
                // Open the database connection
                conn.Open();

                // Execute the SQL command to insert the feedback data into the database
                cmd.ExecuteNonQuery();

                // Display a success message to the user
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Thank you for your feedback!";
            }
            catch (Exception ex)
            {
                // Display an error message to the user
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "An error occurred while submitting your feedback. Please try again later.";
            }
            finally
            {
                // Close the database connection
                conn.Close();
            }
        }

    
    }
}