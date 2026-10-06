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
    public partial class AddStay : System.Web.UI.Page
    {
        protected void btnPublish_Click(object sender, EventArgs e)
        {
            int price;
            if (txtName.Text.Trim() == "" || !int.TryParse(txtPrice.Text, out price)) { lblMsg.Text = "Stay name and a valid price are required."; return; }
            string img = "~/Content/images/stay1.jpg";
            if (fileThumb.HasFile)
            {
                string ext = Path.GetExtension(fileThumb.FileName).ToLower();
                if (ext == ".jpg" || ext == ".jpeg" || ext == ".png")
                {
                    Directory.CreateDirectory(Server.MapPath("~/Content/images/uploads"));
                    string fn = Guid.NewGuid().ToString("N") + ext;
                    fileThumb.SaveAs(Server.MapPath("~/Content/images/uploads/" + fn)); img = "~/Content/images/uploads/" + fn;
                }
            }
            int nextId = Store.Stays.Count == 0 ? 1 : Store.Stays.Max(x => x.Id) + 1;

            Store.Stays.Add(new Stay { Id = nextId, Name = txtName.Text.Trim(), Contact = txtContact.Text.Trim(), Address = txtAddress.Text.Trim(), Rooms = ddlRooms.SelectedValue, Occupancy = txtOccupancy.Text.Trim(), Price = price, Gender = rblGender.SelectedValue, Meals = rblMeals.SelectedValue, Category = "PG", Image = img });
            Response.Redirect("~/Admin/ManageStays.aspx");
        }
    }
}
