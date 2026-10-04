using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StayBuddy_.net
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void forgotPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserForgotPassword.aspx");
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterUser.aspx");
        }
    }
}