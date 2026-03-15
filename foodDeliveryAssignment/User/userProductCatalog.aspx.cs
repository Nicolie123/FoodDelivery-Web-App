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

namespace foodDeliveryAssignment.Admin
{
    public partial class adminProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.loadProducts();

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

        private void loadProducts()
        {
            string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"]);
            SqlConnection conn = new SqlConnection(connection);
            conn.Open();

            string query = "select top 6 * from tblProducts order by newid()";
            SqlCommand comm = new SqlCommand(query, conn);
            SqlDataAdapter sda = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

            conn.Close();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("~/User/userLogin.aspx");
            }
            else
            {
                if (e.CommandName == "productDetails")
                {
                    Response.Write("you clicked the button");
                    //1st scenario
                    Response.Write(e.CommandArgument);
                    Session["itemPID"] = e.CommandArgument;
                    //2nd scenario
                    Label PID = e.Item.FindControl("pidLabel") as Label;
                    Response.Write(PID.Text);

                    Session["itemPID2"] = PID.Text;
                    Response.Redirect("~/User/userProductDetails.aspx");
                    //create shoppingcart table
                }
            } 
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "allProducts")
            {
                Response.Write("display all products");
                string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"]);
                SqlConnection conn = new SqlConnection(connection);
                conn.Open();

                string query = "SELECT * FROM tblProducts";
                SqlCommand comm = new SqlCommand(query, conn);
                SqlDataAdapter sda = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();

                conn.Close();
            }
            else if (e.CommandName == "catSelect")
            {
                Label labelCID = e.Item.FindControl("lblCID") as Label;
                Response.Write(labelCID.Text);

                string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString);
                SqlConnection conn = new SqlConnection(connection);
                conn.Open();

                string query = "SELECT * FROM tblProducts WHERE cid=@cid";
                SqlCommand comm = new SqlCommand(query, conn);
                comm.Parameters.AddWithValue("@cid", labelCID.Text);
                SqlDataAdapter sda = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();

                conn.Close();
            }
        }
    }
}