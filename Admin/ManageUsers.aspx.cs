using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using StayBuddy.Models;

namespace StayBuddy.Admin
{
    public partial class ManageUsers : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUsers();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindUsers();
        }

        private void BindUsers()
        {
            string search = txtSearch.Text.Trim();

            var users = Store.Users.FindAll(user =>
                search == "" ||
                user.Name.IndexOf(search, StringComparison.OrdinalIgnoreCase) >= 0 ||
                user.Email.IndexOf(search, StringComparison.OrdinalIgnoreCase) >= 0);

            rptUsers.DataSource = users;
            rptUsers.DataBind();
        }

        protected void rptUsers_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "del")
            {
                string email = (string)e.CommandArgument;
                Store.Users.RemoveAll(user => user.Email == email);
                BindUsers();
            }
        }
    }
}
