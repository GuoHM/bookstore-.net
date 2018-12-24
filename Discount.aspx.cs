using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Discount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int bookid = int.Parse(TextBox1.Text);
            DateTime startdate = DateTime.Parse(TextBox2.Text);
            DateTime enddate = DateTime.Parse(TextBox3.Text);
            int discount = int.Parse(TextBox4.Text);
            BusinessLogic.AddDiscount(bookid, startdate, enddate, discount);
            Literal1.Text = "Update successful";
        }


    }
}