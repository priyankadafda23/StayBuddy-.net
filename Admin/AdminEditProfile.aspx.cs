using System;
using System.Web.UI;
using StayBuddy.Models;

namespace StayBuddy.Admin
{
    public partial class AdminEditProfile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            var admin = Store.CurrentAdmin;

            if (admin == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
                return;
            }

            txtName.Text = admin.Name;
            txtEmail.Text = admin.Email;
            txtMobile.Text = admin.Mobile;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var admin = Store.CurrentAdmin;

            if (admin == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
                return;
            }

            admin.Name = txtName.Text.Trim();
            admin.Email = txtEmail.Text.Trim();
            admin.Mobile = txtMobile.Text.Trim();

            lblMsg.Text = "Profile updated successfully.";
        }
    }
}
