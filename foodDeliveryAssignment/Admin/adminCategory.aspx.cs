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
    public partial class adminCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = "Administrator ";
            lblLogin.Visible = true;
        }

        protected void CategoryGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCID.Text = CategoryGridView.SelectedRow.Cells[1].Text;
            txtName.Text = CategoryGridView.SelectedRow.Cells[2].Text;
            txtDescription.Text = CategoryGridView.SelectedRow.Cells[3].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblDT.Text = DateTime.Now.ToString();
            SqlDataSource1.Insert();
            lblMessage.Text = "Record has been inserted!";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //code with database connections
            //step 2 - create the connection
            string connStr = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            //step 3 - create sql commands - SELECT, INSERT, UPDATE, DELETE
            string sqlQuery = "UPDATE tblCategory SET name=@name, description=@description WHERE cid=@cid";
            SqlCommand comm = new SqlCommand(sqlQuery, conn);
            comm.Parameters.AddWithValue("@name", txtName.Text.Trim()); //Trim() is used to remove trailing spaces
            comm.Parameters.AddWithValue("@description", txtDescription.Text.Trim());
            comm.Parameters.AddWithValue("@cid", lblCID.Text.Trim());          


            //step 4 - execute the command
            int result = comm.ExecuteNonQuery();

            //step 5 - manipulate data
            if (result > 0)
            {
                lblMessage.Text = "Record has been update!";
            }
            else
            {
                lblMessage.Text = "Error, Please try again!";
            }

            //step 6 - close all connections
            conn.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            lblMessage.Text = "Record has been Deleted!";
            lblMessage.ForeColor = System.Drawing.Color.Blue;
            txtName.Text = "";
            txtDescription.Text = "";
        }
    }
}