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
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { Bind(); }
        protected void btnApply_Click(object sender, EventArgs e) { Bind(); }
        void Bind()
        {
            var l = Store.Stays.AsEnumerable();
            if (txtLocation.Text.Trim() != "") l = l.Where(s => s.Address.IndexOf(txtLocation.Text.Trim(), StringComparison.OrdinalIgnoreCase) >= 0);
            int max; if (int.TryParse(txtPrice.Text, out max)) l = l.Where(s => s.Price <= max);
            if (rblMeals.SelectedValue != "") l = l.Where(s => s.Meals.IndexOf(rblMeals.SelectedValue, StringComparison.OrdinalIgnoreCase) >= 0);
            var types = chkTypes.Items.Cast<ListItem>().Where(i => i.Selected).Select(i => i.Value).ToList();
            if (types.Count > 0) l = l.Where(s => types.Any(t => (s.Occupancy + " " + s.Rooms + " " + s.Gender).IndexOf(t, StringComparison.OrdinalIgnoreCase) >= 0));
            var list = l.ToList();
            litCount.Text = list.Count.ToString(); rptStays.DataSource = list; rptStays.DataBind();
        }
    }
}