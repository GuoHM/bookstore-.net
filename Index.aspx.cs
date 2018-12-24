using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;
using System.Web.Script.Serialization;

namespace WebApplication2
{
    public partial class Index : System.Web.UI.Page
    {
        public string jsonval = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ShopBooksEntities obj = new ShopBooksEntities();
            List<Book> qry = (from x in obj.Books select x).ToList<Book>();         
            var jsonSerialiser = new JavaScriptSerializer();
            var json = jsonSerialiser.Serialize(qry);
            jsonval = json;
        }
    }
}