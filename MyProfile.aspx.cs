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
    public partial class MyProfile : System.Web.UI.Page
    {
        protected void btnLogout_Click(object sender, EventArgs e) { Session.Abandon(); Response.Redirect("~/Login.aspx"); }
    }
}