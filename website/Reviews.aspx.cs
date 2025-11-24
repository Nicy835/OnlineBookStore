using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class Reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Reviews"] != null)
                {
                    blReviews.Items.Clear();
                    foreach (string review in (System.Collections.Generic.List<string>)Session["Reviews"])
                    {
                        blReviews.Items.Add(new ListItem(review));
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string rating = Request.Form["rating"]; 
            string reviewText = txtReview.Text;

            string reviewEntry = $"⭐ {rating}/5 - {reviewText}";

            var reviews = Session["Reviews"] as System.Collections.Generic.List<string>;
            if (reviews == null)
                reviews = new System.Collections.Generic.List<string>();

            reviews.Add(reviewEntry);
            Session["Reviews"] = reviews;

            blReviews.Items.Add(new ListItem(reviewEntry));
            txtReview.Text = "";
        }
    }
}
