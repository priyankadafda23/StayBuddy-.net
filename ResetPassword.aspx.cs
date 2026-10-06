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
    public partial class ResetPassword : System.Web.UI.Page
    {
        bool IsAdmin { get { return Request.QueryString["admin"] == "1"; } }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsAdmin) lnkBack.NavigateUrl = "~/Admin/AdminLogin.aspx";
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            if (txtNew.Text.Length < 6) { lblMsg.Text = "New password must be at least 6 characters."; return; }
            AppUser u = IsAdmin ? (Store.Admin.Password == txtCurrent.Text ? Store.Admin : null)
                                : (Store.CurrentUser != null && Store.CurrentUser.Password == txtCurrent.Text ? Store.CurrentUser : Store.Users.FirstOrDefault(x => x.Password == txtCurrent.Text));
            if (u == null) { lblMsg.Text = "Current password is incorrect."; return; }
            u.Password = txtNew.Text; lblMsg.CssClass = "msg ok"; lblMsg.Text = "Password updated. You can log in now.";
        }
    }
}