using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace foodDeliveryAssignment.User
{
    public partial class shoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Session["id"] = "1"; //Debugging purpose

                if (Session["id"] != null)
                {
                    lblUser.Text = "Welcome back, " + Session["name"].ToString() + " ";
                    lblLogin.Visible = false;
                    lblUserProfile.Visible = true;

                    loadCart();
                    computeTotal();
                }
                else
                {
                    Response.Redirect("~/User/userLogin.aspx");
                }
            }
        }

        private void computeTotal()
        {

            int total = 0;
            foreach (DataListItem dli in DataList1.Items)
            {
                string lblSubTotal = ((Label)dli.FindControl("Label1")).Text;

                total += int.Parse(lblSubTotal);
            }
            Session["gt"] = total.ToString();
            lblGT.Text = total.ToString();
        }

        private void loadCart()
        {
            string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"]);
            SqlConnection conn = new SqlConnection(connection);
            conn.Open();

            string sqlQuery = "SELECT sc.scid, p.name, p.description, p.picture, p.price, sc.qty, p.price* sc.qty AS 'Sub Total' FROM tblProducts p, tblShoppingCart sc WHERE p.pid = sc.pid AND sc.status = 'PENDING' AND sc.UID = @uid";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            cmd.Parameters.AddWithValue("@uid", Session["id"].ToString());
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

            conn.Close();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "updateItem")
            {
                //Get the pid of the product and update the qty in your shoppingcart table
                Label SCID = e.Item.FindControl("lblSCID") as Label;
                TextBox strQTY = (TextBox)(e.Item.FindControl("txtQTY"));

                string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"]);
                SqlConnection conn = new SqlConnection(connection);
                conn.Open();

                string sqlQuery = "UPDATE tblShoppingCart SET qty=@qty WHERE scid=@scid";
                SqlCommand cmd = new SqlCommand(sqlQuery, conn);
                cmd.Parameters.AddWithValue("@qty", Int32.Parse(strQTY.Text));
                cmd.Parameters.AddWithValue("@scid", Int32.Parse(SCID.Text));
                cmd.ExecuteNonQuery();
                conn.Close();
                loadCart();
                computeTotal();

            }
            if (e.CommandName == "removeItem")
            {
                //Get the pid of the product and delete it in your shoppingcart table
                Label SCID = e.Item.FindControl("lblSCID") as Label;

                string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"]);
                SqlConnection conn = new SqlConnection(connection);
                conn.Open();

                string sqlQuery = "DELETE FROM tblShoppingCart WHERE scid=@scid";
                SqlCommand cmd = new SqlCommand(sqlQuery, conn);
                cmd.Parameters.AddWithValue("@scid", Int32.Parse(SCID.Text));
                cmd.ExecuteNonQuery();
                conn.Close();
                loadCart();
                computeTotal();
            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/userCheckOut.aspx");
        }

        protected void btnContinueShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/userProductCatalog.aspx");
        }
    }
}