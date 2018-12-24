using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class BookDescription : System.Web.UI.Page
    {
        public string jsonval = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            int bookid = Convert.ToInt32(Request.QueryString["bookid"]);
            ShopBooksEntities obj = new ShopBooksEntities();

            //var qry = (from x in obj.BookDescriptions where x.BookId == bookid select new { x.BookId, x.BookDescription1, x.Book.Price, x.Book.ISBN, x.Book.BookTitle }).ToList();
            
            //var jsonSerialiser = new JavaScriptSerializer();
            //var json = jsonSerialiser.Serialize(qry);
            //jsonval = json;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }
    }
}