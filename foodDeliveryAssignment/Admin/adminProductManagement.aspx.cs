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
    public partial class adminProductManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUser.Text = "Administrator ";
                lblLogin.Visible = true;
            }
        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCID.Text = DdlCategory.SelectedValue;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //check if it has file
            if (fuImage.HasFile.ToString() != null)
            {
                //save the physical file to your folder - images
                fuImage.SaveAs(Server.MapPath("~/assets/img//" + fuImage.FileName));
                //save it to your database
                lblImage.Text = "~/assets/img/" + fuImage.FileName.ToString(); //Images/coke.jpg
                lblDT.Text = DateTime.Now.ToString();
                SqlDataSource1.Insert();
                lblMessage.Text = "Product added!";
            }
            else
            {
                lblMessage.Text = "Please select an image for the product!";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //code with database connections
            //step 2 - create the connection
            string connStr = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            //step 3 - create sql commands - SELECT, INSERT, UPDATE, DELETE
            string sqlQuery = "UPDATE tblProducts SET name=@name, description=@description, qty=@qty, price=@price WHERE pid=@pid";
            SqlCommand comm = new SqlCommand(sqlQuery, conn);
            comm.Parameters.AddWithValue("@name", txtName.Text.Trim()); //Trim() is used to remove trailing spaces
            comm.Parameters.AddWithValue("@description", txtDescription.Text.Trim());
            comm.Parameters.AddWithValue("@qty", txtQTY.Text.Trim());
            comm.Parameters.AddWithValue("@price", txtPrice.Text.Trim());
            comm.Parameters.AddWithValue("@pid", txtPID.Text.Trim());


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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //code with database connections
            //step 2 - create the connection
            string connStr = ConfigurationManager.ConnectionStrings["FeastyDbsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            //step 3 - create sql commands - SELECT, INSERT, UPDATE, DELETE
            string sqlQuery = "DELETE FROM tblProducts WHERE pid=@pid";
            SqlCommand comm = new SqlCommand(sqlQuery, conn);
            comm.Parameters.AddWithValue("@pid", txtPID.Text.Trim());

            //step 4 - execute the command
            int result = comm.ExecuteNonQuery();

            //step 5 - manipulate data
            if (result > 0)
            {
                lblMessage.Text = "Product has been Deleted!";
            }
            else
            {
                lblMessage.Text = "Error, Please try again!";
            }

            //step 6 - close all connections
            conn.Close();
        }

        protected void ProductGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPID.Text = ProductGridView.SelectedRow.Cells[1].Text;
            txtName.Text = ProductGridView.SelectedRow.Cells[2].Text;
            txtDescription.Text = ProductGridView.SelectedRow.Cells[3].Text;
            txtQTY.Text = ProductGridView.SelectedRow.Cells[4].Text;
            txtPrice.Text = ProductGridView.SelectedRow.Cells[5].Text;
        }

    }
}