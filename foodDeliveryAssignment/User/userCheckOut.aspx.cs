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
    public partial class userCheckOut : System.Web.UI.Page
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

        protected void btnPayNow_Click(object sender, EventArgs e)
        {
            decimal total = Convert.ToDecimal(lblGT.Text);
            DateTime dtAdded = DateTime.Now;
            int uid = Convert.ToInt32(Session["id"]);

            string connection = Convert.ToString(ConfigurationManager.ConnectionStrings["FeastyDbsConnection"]);
            SqlConnection conn = new SqlConnection(connection);

            string sql = "INSERT INTO tblReceipt (total, dtAdded, UID) VALUES (@total, @dtAdded, @uid)";
            SqlCommand cmd = new SqlCommand(sql, conn);

            cmd.Parameters.AddWithValue("@total", total);
            cmd.Parameters.AddWithValue("@dtAdded", dtAdded);
            cmd.Parameters.AddWithValue("@uid", uid);

            conn.Open();
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                string query2 = "SELECT TOP 1 RID FROM tblReceipt ORDER BY RID DESC";
                SqlCommand comm1 = new SqlCommand(query2, conn);
                object response = comm1.ExecuteScalar();

                int latestRid = Convert.ToInt32(response);

                if (response != null)
                {
                    // update
                    string sqlQuery = "UPDATE tblShoppingCart SET status=@status, RID=@rid WHERE status=@pending AND UID=@uid";
                    SqlCommand cmd1 = new SqlCommand(sqlQuery, conn);
                    cmd1.Parameters.AddWithValue("@status", "PAID");
                    cmd1.Parameters.AddWithValue("@rid", latestRid);
                    cmd1.Parameters.AddWithValue("@pending", "PENDING");
                    cmd1.Parameters.AddWithValue("@uid", Session["id"]);
                    cmd1.ExecuteNonQuery();

                    string query = "INSERT INTO tblOrder(RID, UID, Status ,dtAdded)" + "VALUES(@rid, @uid ,@status ,@dtAdded)";
                    SqlCommand comm = new SqlCommand(query, conn);
                    comm.Parameters.AddWithValue("@rid", latestRid);
                    comm.Parameters.AddWithValue("@uid", Session["id"]);
                    comm.Parameters.AddWithValue("@status", "PENDING");
                    comm.Parameters.AddWithValue("@dtAdded", DateTime.Parse(DateTime.Now.ToString()));
                    comm.ExecuteNonQuery();
                    Response.Redirect("~/User/userPaymentSuccessful.aspx");

                }
            }
            else
            {
                //Error message
            }

            conn.Close();
        }
    }
}