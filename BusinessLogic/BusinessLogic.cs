using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.Models;

namespace WebApplication2
{
    public class BusinessLogic
    {
        public static void DeleteOrder(int bookid)
        {
            using (ShopBooks entities = new ShopBooks())
            {

                Discounts disk = entities.Discounts.Where(i => i.BookID == bookid).FirstOrDefault<Discounts>();

                if (disk != null)
                {
                    entities.Discounts.Remove(disk);
                    entities.SaveChanges();
                }
                //CartDetail cart = entities.CartDetails.Where(i => i.BookID == bookid).FirstOrDefault<CartDetail>();


                
                Books book = entities.Books.Where(p => p.BookID == bookid).First<Books>();
                entities.Books.Remove(book);
                entities.SaveChanges();
            }
        }

        public static List<Books> ListBooksBy(string name)
        {
            string[] check = name.Split(' ');
            string text = "";
            for(int i = 0; i <= check.Length - 2; i++)
            {
                if (check.Length >= 3)
                {
                    text += check[i];
                    text += " ";
                }
                else
                {
                    text += check[i];
                    
                }    
            }
            
            if(check[check.Length-1] == "Title")
              
            {
                using (ShopBooks entities = new ShopBooks())
                {
                    if(check.Length >= 3)
                    {
                        return entities.Books.Where(o => o.BookTitle == text).ToList<Books>();
                    }
                    else
                    {
                        return entities.Books.Where(o => o.BookTitle.Contains(text)).ToList<Books>();
                    }
                    

                }
            }
            else if(check[check.Length - 1] == "Category")
            {
                using (ShopBooks entities = new ShopBooks())
                {
                    if (check.Length >= 3)
                    {
                        return entities.Books.Where(o => o.Category == text).ToList<Books>();
                    }
                    else
                    {
                        return entities.Books.Where(o => o.Category.Contains(text)).ToList<Books>();
                    }
                        

                }
            }
            else 
            {
                using (ShopBooks entities = new ShopBooks())
                {
                    if (check.Length >= 3)
                    {
                        return entities.Books.Where(o => o.Author == text).ToList<Books>();
                    }
                    else
                    {
                        return entities.Books.Where(o => o.Author.Contains(text)).ToList<Books>();
                    }

                }
            }
            
        }

        public static void UpdateOrders(int Bookid,int quantity,decimal price)
        {
            using (ShopBooks entities = new ShopBooks())
            {
                Books bk = entities.Books.Where(b => b.BookID == Bookid).First<Books>();
                bk.Quantity =(quantity);
                bk.Price = (price);
                entities.SaveChanges();
            }  
        }
        public static void AddDiscount(int Bookid, DateTime strtdate, DateTime enddate, int discount)
        {
            using (ShopBooks entities = new ShopBooks())
            {
                Discounts disk = new Discounts();
                disk.BookID = Bookid;
                disk.StartDate = strtdate;
                disk.EndDate = enddate;
                disk.Discount = discount;
                entities.Discounts.Add(disk);

                entities.SaveChanges();
            }
        }
    }
}