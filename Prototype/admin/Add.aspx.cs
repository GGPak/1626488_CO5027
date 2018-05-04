using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.admin
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/index.aspx");
        }

        protected void lnkbtnSave_Click(object sender, EventArgs e)
        {
            FileUpload fle = (FileUpload)FormView1.FindControl("FileUpload1") as FileUpload;
            if (fle.HasFile)
            {
                fle.SaveAs(Server.MapPath("~/admin/ProductImages/" + fle.FileName + ".jpg"));
                Label li = (Label)FormView1.FindControl("lblResult") as Label;
                li.Text = "~/admin/ProductImages/" + fle.FileName + ".jpg";
            }

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}