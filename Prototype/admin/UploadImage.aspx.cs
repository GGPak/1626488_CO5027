using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            CurrentImage1.ImageUrl = "~/admin/ProductImages/" + filename;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/admin/ProductImages/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/index.aspx");
        }
    }
}