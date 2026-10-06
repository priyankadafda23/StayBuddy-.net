using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using StayBuddy.Models;

namespace StayBuddy.Admin
{
    public partial class ManageStays : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStays();
            }
        }

        protected void Filter_Changed(object sender, EventArgs e)
        {
            BindStays();
        }

        private void BindStays()
        {
            var stays = Store.Stays.AsEnumerable();
            string search = txtFilter.Text.Trim();

            if (search != "")
            {
                stays = stays.Where(stay =>
                    stay.Name.IndexOf(search, StringComparison.OrdinalIgnoreCase) >= 0);
            }

            if (ddlCategory.SelectedValue != "")
            {
                stays = stays.Where(stay =>
                    stay.Category == ddlCategory.SelectedValue);
            }

            rptStays.DataSource = stays.ToList();
            rptStays.DataBind();
        }

        protected void rptStays_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "del")
            {
                int id = int.Parse((string)e.CommandArgument);
                Store.Stays.RemoveAll(stay => stay.Id == id);
                BindStays();
            }
        }
    }
}
