using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration; //in references to your connection string

namespace foodDeliveryAssignment.Admin
{
    public partial class adminManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = "Administrator ";
            lblLogin.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //code with database connections
            //step 2 - create the connection
            string connStr = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            //step 3 - create sql commands - SELECT, INSERT, UPDATE, DELETE
            string sqlQuery = "UPDATE tblUsers SET firstname=@firstname, lastname=@lastname, email=@email, password=@password WHERE ID=@ID";
            SqlCommand comm = new SqlCommand(sqlQuery, conn);
            comm.Parameters.AddWithValue("@ID", lblID.Text.Trim());
            comm.Parameters.AddWithValue("@firstname", txtFName.Text.Trim()); //Trim() is used to remove trailing spaces
            comm.Parameters.AddWithValue("@lastname", txtLName.Text.Trim());
            comm.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
            comm.Parameters.AddWithValue("@password", txtPassword.Text.Trim());

            //step 4 - execute the command
            int result = comm.ExecuteNonQuery();

            //step 5 - manipulate data
            if (result > 0)
            {
                lblMessage.Text = "Product information has been update!";
            }
            else
            {
                lblMessage.Text = "Error, Please try again!";
            }

            //step 6 - close all connections
            conn.Close();
        }

        protected void UserGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblID.Text = UserGridView.SelectedRow.Cells[1].Text;
            txtFName.Text = UserGridView.SelectedRow.Cells[2].Text;
            txtLName.Text = UserGridView.SelectedRow.Cells[3].Text;
            txtEmail.Text = UserGridView.SelectedRow.Cells[4].Text;
            txtPassword.Text = UserGridView.SelectedRow.Cells[5].Text;
            lblDT.Text = UserGridView.SelectedRow.Cells[6].Text;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            lblMessage.Text = "Record has been Deleted!";
            lblMessage.ForeColor = System.Drawing.Color.Blue;
            lblID.Text = "";
            txtFName.Text = "";
            txtLName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
        }
    }
}