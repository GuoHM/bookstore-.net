using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class EditDeleteBooks : System.Web.UI.Page
    {
        static string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = TextBox1.Text;
            name = user + " " + "Title";
            BindGrid();
            GridView1.Visible = true;



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string user = TextBox2.Text;
            name = user + " " + "Category";
            BindGrid();
            GridView1.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string user = TextBox3.Text;
            name = user + " " + "Author";
            BindGrid();
            GridView1.Visible = true;
        }

        private void BindGrid()
        {
            GridView1.DataSource = BusinessLogic.ListBooksBy(name);
            GridView1.DataBind();

        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int orderId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            BusinessLogic.DeleteOrder(orderId);
            BindGrid();

        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void OnRowCancellingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int bookId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string p = (row.FindControl("TextBox7") as TextBox).Text;
            string Q = (row.FindControl("TextBox6") as TextBox).Text;
            int qun = Int16.Parse(Q);
            decimal pr = decimal.Parse(p);
            BusinessLogic.UpdateOrders(bookId, qun, pr);
            GridView1.EditIndex = -1;
            BindGrid();
        }
    }
}