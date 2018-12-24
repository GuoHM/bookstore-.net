using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
           
            string searchText = txtSearch.Text;
            ShopBooks context = new ShopBooks();
            var q = from x in context.Books
                    where x.BookTitle.Contains(searchText) || x.Author.Contains(searchText) || x.Category.Contains(searchText)
                    select x;
            Repeater1.DataSource = q.ToList();
            Repeater1.DataBind();
        }

       
    }
}