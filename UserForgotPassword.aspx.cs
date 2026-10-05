using System;

namespace StayBuddy_.net
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            string currentPassword = CurrentPassword.Text;
            string newPassword = NewPassword.Text;


            // Check empty fields

            if (string.IsNullOrWhiteSpace(currentPassword) ||
                string.IsNullOrWhiteSpace(newPassword))
            {
                Response.Write(
                    "<script>alert('Please fill all fields.');</script>"
                );

                return;
            }


            // Basic password length validation

            if (newPassword.Length < 6)
            {
                Response.Write(
                    "<script>alert('New password must contain at least 6 characters.');</script>"
                );

                return;
            }


            // Password update will be connected to database later

            Response.Write(
                "<script>alert('Password reset successfully!');</script>"
            );
        }
    }
}