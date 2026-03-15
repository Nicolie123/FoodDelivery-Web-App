using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodDeliveryAssignment.Admin
{
    public partial class adminManageOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = "Administrator ";
            lblLogin.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            lblMessage.Text = "Record has been updated!";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblOID.Text = GridView1.SelectedRow.Cells[1].Text;
            lblUID.Text = GridView1.SelectedRow.Cells[2].Text;
            lblRID.Text = GridView1.SelectedRow.Cells[3].Text;
            DropDownList1.Text = GridView1.SelectedRow.Cells[4].Text;
            lblDT.Text = GridView1.SelectedRow.Cells[5].Text;
        }
    }
}