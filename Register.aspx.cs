using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ShopBooksEntities obj = new ShopBooksEntities();
            User u = new User();
            u.UserID = TextBoxEmail.Text;
            u.Password = TextBoxReEnter.Text;
            u.Role = "customer";
           
            obj.Users.Add(u);
            if (RegularExpressionValidator1.IsValid && RegularExpressionValidator2.IsValid && CompareValidator1.IsValid)
            {
                User u0 = new User();
                try
                {
                    u0 = obj.Users.Where(x => x.UserID == u.UserID && x.Password == u.Password).ToList().First();
                    Label1.Visible = true;
                    Label1.Text = "This email have already been registered, please just log in";
                }
                catch (System.InvalidOperationException)
                {
                    obj.SaveChanges();
                    Label1.Visible = true;
                    Label1.Text = "Sign Up Successfully";
                }

            }
        }
    }
}
