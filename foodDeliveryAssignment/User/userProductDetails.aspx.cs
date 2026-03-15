using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Step 1 - namespaces
using System.Data;
using System.Data.SqlClient;
using System.Configuration; //in references to your connection string

namespace foodDeliveryAssignment.User
{
    public partial class productDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {           
            if (!Page.IsPostBack)
            {
                loadDetails();

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
        }

        void loadDetails()
        {
            //for debugging purposes, bypass login
            //Session["id"] = 1;

            string connStr = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string query = "SELECT * FROM tblProducts WHERE pid=@pid";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Parameters.AddWithValue("@pid", Session["itemPID"].ToString());

            //comm.ExecuteNonQuery - insert, update, delete
            SqlDataReader reader = comm.ExecuteReader();

            if (reader.Read())
            {
                imgProduct.ImageUrl = reader["picture"].ToString();
                lblPID.Text = Session["itemPID"].ToString();
                lblName.Text = reader["name"].ToString();
                lblDescription.Text = reader["description"].ToString();
                txtQTY.Text = "1";
                lblPrice.Text = reader["price"].ToString();

            }

            reader.Close();
            conn.Close();
        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string query = "INSERT INTO tblShoppingCart(uid,pid,qty,dtAdded,status)" + "VALUES(@uid,@pid,@qty,@dtAdded,@status)";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Parameters.AddWithValue("@uid", Session["id"].ToString());
            comm.Parameters.AddWithValue("@pid", lblPID.Text);
            comm.Parameters.AddWithValue("@qty", txtQTY.Text);
            comm.Parameters.AddWithValue("@dtAdded", DateTime.Now.ToString());
            comm.Parameters.AddWithValue("@status", "PENDING");

            int result = comm.ExecuteNonQuery();
            if(result > 0)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Item added to cart!";
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Sorry Error Encountered, try again!";
            }


            conn.Close();
        }

        protected void btnContinueShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/userProductCatalog.aspx");
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/shoppingCart.aspx");
        }
    }
}