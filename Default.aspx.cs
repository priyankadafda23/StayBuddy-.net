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
    public partial class Default : System.Web.UI.Page
    {
        protected string Cls(string c) { return Request.QueryString["category"] == c ? "on" : ""; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string c = Request.QueryString["category"];
            rptStays.DataSource = Store.Stays.Where(s => string.IsNullOrEmpty(c) || s.Category == c).ToList();
            rptStays.DataBind();
        }
    }
}