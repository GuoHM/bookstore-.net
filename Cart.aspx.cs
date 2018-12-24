using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class Cart : System.Web.UI.Page
    {
        string userid; //should be retrive from the session

        int bookid;

        protected void Page_Load(object sender, EventArgs e)
        {
            //userid = finduserid();

            userid = "23234454@ff.com";
            int bookid = Convert.ToInt32(Request.QueryString["bookid"]);


            if (!IsPostBack)
            {
                //using (ShopBooks entities = new ShopBooks())
                //{
                //    CartDetails cart = new CartDetails();
                //    Books book = entities.Books.Where(x => x.BookID == bookid).First();
                //    cart.BookID = bookid;
                //    cart.UserID = userid;
                //    entities.CartDetails.Add(cart);
                //    entities.SaveChanges();

                //    var q = entities.CartDetails.Where(x => x.UserID == userid);

                //    GridView1.DataSource = q.ToList();
                //    GridView1.DataBind();
                //}


            }
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int bookid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[1]);
            //using (ShopBooks entities = new ShopBooks())
            //{
            //    CartDetails cd = entities.CartDetails.Where(p => p.BookID == bookid).First<CartDetails>();
            //    entities.CartDetails.Remove(cd);
            //    entities.SaveChanges();

            //    var q = entities.CartDetails.Where(x => x.UserID == userid).Select(y => new { y.Quantity});

            //    GridView1.DataSource = q.ToList();
            //    GridView1.DataBind();
            //}


        }

    }
}