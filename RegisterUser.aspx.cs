using System;

namespace StayBuddy_.net
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (string.IsNullOrEmpty(fullName) ||
                string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(mobile) ||
                string.IsNullOrEmpty(password) ||
                string.IsNullOrEmpty(confirmPassword))
            {
                Response.Write("<script>alert('Please fill all fields.');</script>");
                return;
            }

            if (password != confirmPassword)
            {
                Response.Write("<script>alert('Passwords do not match.');</script>");
                return;
            }

            Response.Write("<script>alert('Registration successful!');</script>");
        }
    }
}