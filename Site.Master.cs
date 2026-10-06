using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StayBuddy.Models;

namespace StayBuddy
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["User"] == null) Response.Redirect("~/Login.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string t = Request.QueryString["toggle"];
            if (t == null) return;
            int id;
            if (int.TryParse(t, out id)) { if (!Store.Saved.Remove(id)) Store.Saved.Add(id); }
            var q = HttpUtility.ParseQueryString(Request.Url.Query); q.Remove("toggle");
            string qs = q.ToString();
            Response.Redirect(Request.Url.AbsolutePath + (qs.Length > 0 ? "?" + qs : ""));
        }
        protected string Act(params string[] pages)
        {
            string p = System.IO.Path.GetFileNameWithoutExtension(Request.Path);
            return pages.Any(x => x.Equals(p, StringComparison.OrdinalIgnoreCase)) ? "active" : "";
        }
        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon(); Response.Redirect("~/Login.aspx");
        }
    }
}