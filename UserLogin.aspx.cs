using System;

namespace StayBuddy_.net
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

            string password = txtPassword.Text;


            // Check empty fields

            if (string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(password))
            {
                Response.Write(
                    "<script>alert('Please enter email and password.');</script>"
                );

                return;
            }


            // Login logic will be connected to database later

            Response.Write(
                "<script>alert('Login successful!');</script>"
            );
        }
    }
}