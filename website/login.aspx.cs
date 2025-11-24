using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if ((username == "user" && password == "123") || (username == "admin" && password == "admin"))
            {
                Session["User"] = username;
                Response.Redirect("Defaultt.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password!";
            }
        }
    }
}