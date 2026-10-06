using System;
using System.Web.UI;
using StayBuddy.Models;

namespace StayBuddy.Admin
{
    public partial class AdminLogin : Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            if (email == "" || password == "")
            {
                lblMsg.Text = "Please enter email and password.";
                return;
            }

            bool validEmail = email.Equals(
                Store.Admin.Email,
                StringComparison.OrdinalIgnoreCase);

            bool validPassword = password == Store.Admin.Password;

            if (validEmail && validPassword)
            {
                Session["Admin"] = Store.Admin;
                Response.Redirect("~/Admin/Dashboard.aspx");
                return;
            }

            lblMsg.Text = "Invalid admin credentials.";
        }
    }
}
