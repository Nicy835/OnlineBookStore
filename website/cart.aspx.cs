using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCart();
            }
        }

        private void LoadCart()
        {
            if (Session["Cart"] != null)
            {
                var cart = (List<string>)Session["Cart"];
                if (cart.Count > 0)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("BookTitle");

                    foreach (var item in cart)
                    {
                        dt.Rows.Add(item);
                    }

                    gvCart.DataSource = dt;
                    gvCart.DataBind();
                }
                else
                {
                    lblMessage.Text = "Your cart is empty!";
                }
            }
            else
            {
                lblMessage.Text = "Your cart is empty!";
            }
        }

        protected void blCart_Click(object sender, BulletedListEventArgs e)
        {
            if (Session["Cart"] == null || ((List<string>)Session["Cart"]).Count == 0)
            {
                lblMessage.Text = "Cart is empty. Add some books before checkout.";
                return;
            }

            Response.Redirect("Checkout.aspx"); 

        }
    }
    
}