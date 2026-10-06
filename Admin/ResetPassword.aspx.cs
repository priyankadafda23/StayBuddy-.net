using System;
using System.Web.UI;
using StayBuddy.Models;

namespace StayBuddy.Admin
{
    public partial class ResetPassword : Page
    {
        protected void btnReset_Click(object sender, EventArgs e)
        {
            string currentPassword = txtCurrentPassword.Text;
            string newPassword = txtNewPassword.Text;

            if (currentPassword == "" || newPassword == "")
            {
                lblMsg.Text = "Please fill both password fields.";
                return;
            }

            if (currentPassword != Store.Admin.Password)
            {
                lblMsg.Text = "Current password is incorrect.";
                return;
            }

            if (newPassword.Length < 6)
            {
                lblMsg.Text = "New password must contain at least 6 characters.";
                return;
            }

            Store.Admin.Password = newPassword;
            lblMsg.CssClass = "msg ok";
            lblMsg.Text = "Password reset successfully. You can now login.";

            txtCurrentPassword.Text = "";
            txtNewPassword.Text = "";
        }
    }
}
