using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StayBuddy.Models;

namespace StayBuddy.Admin
{
    public partial class AdminProfileMaster : System.Web.UI.MasterPage
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var u = Store.CurrentAdmin;
            if (u == null) return;
            lblName.Text = u.Name; lblEmail.Text = u.Email; lblMobile.Text = u.Mobile;
        }
    }
}
