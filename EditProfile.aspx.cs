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
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            var u = Store.CurrentUser; txtName.Text = u.Name; txtEmail.Text = u.Email; txtMobile.Text = u.Mobile;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            var u = Store.CurrentUser; u.Name = txtName.Text.Trim(); u.Email = txtEmail.Text.Trim(); u.Mobile = txtMobile.Text.Trim(); lblMsg.Text = "Profile updated.";
        }
    }
}