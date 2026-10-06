using System;
using System.Web.UI;
using StayBuddy.Models;

namespace StayBuddy.Admin
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            litUsers.Text = Store.Users.Count.ToString("00");
            litStays.Text = Store.Stays.Count.ToString("00");
        }
    }
}
