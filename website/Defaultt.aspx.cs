using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class Defaultt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("Id");
                dt.Columns.Add("Title");
                dt.Columns.Add("Price");

                dt.Rows.Add("1", "C# Programming", "500");
                dt.Rows.Add("2", "ASP.NET Basics", "500");
                dt.Rows.Add("3", "Database Design", "450");
                dt.Rows.Add("4", "PHP", "600");
                dt.Rows.Add("5", "BASICS OF JAVA", "550");
                dt.Rows.Add("6", "ADVANCED JAVA", "700");
                dt.Rows.Add("7", "PYTHON PROGRAMMING", "400");
                dt.Rows.Add("8", "MYSQL", "300");
                dt.Rows.Add("9", "HTML AND CSS", "350");
                dt.Rows.Add("10", "SOFTWARE DEVELOPMENT", "400");

                gvBooks.DataSource = dt;
                gvBooks.DataBind();
            }

            if (Session["User"] != null)
            {
                lblUser.Text = "Welcome, " + Session["User"].ToString();
                btnLogout.Visible = true; 
                lnkLogin.Visible = false; 
            }
            else
            {
                lblUser.Text = "You are not logged in.";
                btnLogout.Visible = true;
                lnkLogin.Visible = true; 
            }
        }

        protected void gvBooks_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                if (Session["User"] == null)
                {
                    Response.Redirect("Login.aspx");
                    return;
                }

                int rowIndex = Convert.ToInt32(e.CommandArgument);
                string bookTitle = gvBooks.Rows[rowIndex].Cells[1].Text;

                if (Session["Cart"] == null)
                    Session["Cart"] = new List<string>();

                var cart = (List<string>)Session["Cart"];
                cart.Add(bookTitle);

                Response.Write("<script>alert('Book added to cart!');</script>");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();  
            Session.Abandon(); 
            Response.Redirect("Login.aspx");
        }
    }
}
