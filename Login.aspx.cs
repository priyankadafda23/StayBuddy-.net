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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var u = Store.Users.FirstOrDefault(x => x.Email.Equals(txtEmail.Text.Trim(), StringComparison.OrdinalIgnoreCase) && x.Password == txtPassword.Text);
            if (u == null) { lblMsg.Text = "Invalid email or password."; return; }
            Session["User"] = u; Response.Redirect("~/Default.aspx");
        }
    }
}