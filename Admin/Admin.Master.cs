using System;
using System.Linq;
using System.Web.UI;
using StayBuddy.Models;

namespace StayBuddy.Admin
{
    public partial class AdminMaster : MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
            }
        }

        protected string Act(params string[] pages)
        {
            string currentPage = System.IO.Path.GetFileNameWithoutExtension(Request.Path);

            return pages.Any(page =>
                page.Equals(currentPage, StringComparison.OrdinalIgnoreCase))
                ? "active"
                : "";
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("Admin");
            Response.Redirect("~/Admin/AdminLogin.aspx");
        }
    }
}
