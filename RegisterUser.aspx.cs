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
    public partial class Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Trim() == "" || txtEmail.Text.Trim() == "" || txtPassword.Text == "") { lblMsg.Text = "Please fill all fields."; return; }
            if (txtPassword.Text != txtConfirm.Text) { lblMsg.Text = "Passwords do not match."; return; }
            if (Store.Users.Any(x => x.Email.Equals(txtEmail.Text.Trim(), StringComparison.OrdinalIgnoreCase))) { lblMsg.Text = "Email already registered."; return; }
            Store.Users.Add(new AppUser { Name = txtName.Text.Trim(), Email = txtEmail.Text.Trim(), Mobile = txtMobile.Text.Trim(), Password = txtPassword.Text, Status = "ACTIVE STUDENT" });
            Response.Redirect("~/Login.aspx");
        }
    }
}