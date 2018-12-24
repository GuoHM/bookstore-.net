using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class AddBooksAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ShopBooks context = new ShopBooks();
            Books bok = new Books();
            bok.BookTitle = txtBookTitle.Text;
            bok.Author = txtAuthor.Text;
            bok.ISBN = txtISBN.Text;
            bok.Price = decimal.Parse(txtPrice.Text);
            bok.Publisher = txtPublisher.Text;
            bok.Category = DropDownCategory.SelectedItem.Text;
            bok.Quantity = int.Parse(txtQuantity.Text);

            context.Books.Add(bok);
            context.SaveChanges();
            Label1.Visible = true;
            Label1.Text = "Book added Successfully!";
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {
                        if (FileUpload1.PostedFile.ContentLength < 102400)
                        {
                            string filename = Path.GetFileName(FileUpload1.FileName);
                            FileUpload1.SaveAs(Server.MapPath("Images/") + filename);
                            lblUpdateStatus.Text = "Upload status: File uploaded!";
                        }
                        else
                            lblUpdateStatus.Text = "Upload status: The file has to be less than 100 kb!";
                    }
                    else
                        lblUpdateStatus.Text = "Upload status: Only JPEG files are accepted!";
                }
                catch (Exception ex)
                {
                    lblUpdateStatus.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}
