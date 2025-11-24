using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;

namespace website
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Cart"] != null)
                {
                    var cart = (List<string>)Session["Cart"];

                    // Book data (same as in Defaultt.aspx)
                    var bookPrices = new Dictionary<string, int>()
                    {
                        { "C# Programming", 500 },
                        { "ASP.NET Basics", 500 },
                        { "Database Design", 450 },
                        { "PHP", 600 },
                        { "BASICS OF JAVA", 550 },
                        { "ADVANCED JAVA", 700 },
                        { "PYTHON PROGRAMMING", 400 },
                        { "MYSQL", 300 },
                        { "HTML AND CSS", 350 },
                        { "SOFTWARE DEVELOPMENT", 400 }
                    };

                    DataTable dt = new DataTable();
                    dt.Columns.Add("Title");
                    dt.Columns.Add("Price");

                    int total = 0;
                    foreach (string book in cart)
                    {
                        int price = bookPrices.ContainsKey(book) ? bookPrices[book] : 0;
                        dt.Rows.Add(book, price);
                        total += price;
                    }

                    gvCheckout.DataSource = dt;
                    gvCheckout.DataBind();

                    lblTotal.Text = "Total Amount: ₹ " + total.ToString();
                }
                else
                {
                    lblTotal.Text = "Your cart is empty!";
                }

                // Clear cart after displaying
                Session["Cart"] = null;
            }
        }
    }
}
