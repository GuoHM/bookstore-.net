using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class CartDetails : System.Web.UI.Page
    {
        static string userid;
       static int bookid;


        protected void Page_Load(object sender, EventArgs e)
        {
            //userid = Request.QueryString["userid"];
            //bookid = Convert.ToInt32(Request.QueryString["bookid"]);
            userid = Convert.ToString(Session["login"]);
            bookid = Convert.ToInt32(Request.QueryString["bookid"]);
            
            if (userid == null || userid == "")
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                if (bookid >0)
                {
                    ShopBooksEntities obj = new ShopBooksEntities();
                    CartDetail cart1 = new CartDetail();
                    Book book = obj.Books.Where(x => x.BookID == bookid).First();
                    cart1.BookID = book.BookID;
                    cart1.UserID = userid;
                    cart1.Quantity = 1;
                    obj.CartDetails.Add(cart1);
                    obj.SaveChanges();
                }
                BindGrid();
               
                }

            }

  protected void BindGrid()
        {
            ShopBooksEntities obj = new ShopBooksEntities();          

            var q = obj.CartDetails.Where(x => x.UserID == userid).Select(y => new { y.Quantity, y.BookID, y.UserID, y.Book.BookTitle,y.Book.ISBN,y.Book.Price });

            GridView1.DataSource = q.ToList();
            GridView1.DataBind();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();

            }
        
        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int bookid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            int quantity = int.Parse((row.FindControl("TextBox1") as TextBox).Text);

            ShopBooksEntities obj = new ShopBooksEntities();
            Book bo = obj.Books.Where(x => x.BookID == bookid).First<Book>();
            CartDetail b = obj.CartDetails.Where(x => x.BookID == bookid).First<CartDetail>();
            if (bo.Quantity > quantity)
            {
                b.Quantity = quantity;
                
                obj.SaveChanges();
                lblMsg.Visible = false;
                bo.Quantity = bo.Quantity - quantity;
                obj.SaveChanges();
            }
            else
            {
                lblMsg.Text = "Out of Stock. Please update the quantity.";
                lblMsg.Visible = true;
            }

            GridView1.EditIndex = -1;

            BindGrid();

            }


        

        protected void OnRowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
            
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int bookid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            ShopBooksEntities obj = new ShopBooksEntities();
            CartDetail cart = obj.CartDetails.Where(x => x.BookID == bookid).First<CartDetail>();
            try
            {
                obj.CartDetails.Remove(cart);
                obj.SaveChanges();
            }
            catch(Exception ex)
            {
                lblMsg.Text = "Exception caught" + ex.Message;
            }
            lblMsg.Visible = false;
            BindGrid();
           
            
        }
        int totalcost = 0;
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                totalcost += (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Quantity"))) * (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Price")));

            }

            txtTotal.Text = Convert.ToString(totalcost);
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
         
            ClearCart();
            lblMsg.Text = "Checked out successfully";
            lblMsg.Visible = true;
            //        userid = Request.QueryString["userid"];

            //    ShopBooksEntities obj = new ShopBooksEntities();

            //            TransactionDetail td = new TransactionDetail();
            //            //TransactionDetail td = new TransactionDetail();
            //            List<CartDetail> cdl = obj.CartDetails.Where(x => x.UserID == userid).ToList<CartDetail>();

            //            for (int i = 0; i < cdl.Count; i++)
            //            {
            //                int bookid = cdl[i].BookID;
            //                td.BookID = bookid;
            //                td.Quantity = cdl[i].Quantity;
            //                Book b = obj.Books.Where(x => x.BookID == bookid).First();
            //                td.Price = b.Price;
            //        using (Model1 ent = new Model1())
            //        {
            //            Discount di = ent.Discounts.Where(x => x.BookID == bookid).FirstOrDefault<Discount>();
            //            if (di != null)
            //            {
            //                td.Discount = di.Discount;
            //            }
            //        }
            //                entities.TransactionDetails.Add(td);
            //                entities.SaveChanges();

            //            }



        }
        private void ClearCart()
        {
            string userid = Convert.ToString(Session["login"]);
           
            ShopBooksEntities obj = new ShopBooksEntities();
            var cart = obj.CartDetails.Where(x => x.UserID == userid).ToList<CartDetail>();
            for (int i = 0; i < cart.Count; i++)
            {
                obj.CartDetails.Remove(cart[i]);
                obj.SaveChanges();
            }
            lblMsg.Visible = false;
            btnCheckout.Visible = false;
            txtTotal.Visible = false;
            lblTtotal.Visible = false;
            BindGrid();
        }
    }
}