using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            ImageEdit.ImageUrl = "~/admin/ProductImages/" + filename;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/List.aspx");
        }
    }
}