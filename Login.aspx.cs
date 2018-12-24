using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string CheckLogin(string name, string password)
        {
            ShopBooksEntities obj = new ShopBooksEntities();

            User u = new User();
            try
            {
                u = obj.Users.Where(x => x.UserID == name && x.Password == password).First();
            }
            catch (System.InvalidOperationException)
            {
                return null;
            }

            //if ((u.Role).ToUpper() == "OWNER")
            //{
            //    return "Owner_" + u.UserID;
            //}
            //else
                return u.UserID;

        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = txtUserID.Value;
            string password = txtPassword.Value;
            Session["login"] = CheckLogin(user, password);
            if (Session["login"] == null)
            {
                txtErrorMessage.Text = "Invaild userID or password";
            }
            else
                Response.Redirect("Default.aspx");
        }
    }
}