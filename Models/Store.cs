using System;
using System.Collections.Generic;
using System.Web;
namespace StayBuddy.Models
{
	public class Stay { 
		public int Id { get; set; } 
		public string Name { get; set; } 
		public string Address { get; set; } 
		public string Category { get; set; } 
		public string Gender { get; set; } 
		public string Occupancy { get; set; } 
		public string Rooms { get; set; } 
		public string Meals { get; set; } 
		public int Price { get; set; } 
		public string Contact { get; set; } 
		public string Image { get; set; } 
	}
	public class AppUser { 
		public string Name { get; set; } 
		public string Email { get; set; } 
		public string Mobile { get; set; } 
		public string Password { get; set; } 
		public string Status { get; set; } 
	}
	public static class Store
	{
        const string Img = "~/Content/images/";
		public static readonly List<Stay> Stays = new List<Stay> {
			new Stay{
				Id=1,
				Name="Divine Girls Hostel and PG",
				Address="Pushkardham, Street No. 12, Kalavad Road, Rajkot",
				Category="PG",
				Gender="Female Only",
				Occupancy="Double and Triple Sharing",
				Rooms="Both AC and Non-AC rooms",
				Meals="Meals included 3 times a day",
				Price=6500,
				Contact="+91 80798 54854",
				Image=Img+"girls_hostel/Divine_Girls_Hostel_and_PG.jpg"
            },
			new Stay{
				Id=2,
				Name="Kashmira's Girls PG",
				Address="Tagor Nagar Street 3, Kotecha Chowk, Kalavad Road, Rajkot",
				Category="PG",
				Gender="Female Only",
				Occupancy="Double and Triple Sharing",
				Rooms="Both AC and Non-AC rooms",
				Meals="Meals included 3 times a day",
				Price=7000,
				Contact="+91 63099 03766",
				Image=Img+"girls_pg/Kashmiras_Girls_PG_Kalavad_Road.jpg"
            },
			new Stay{
				Id=3,
				Name="Vaidik Boys Hostel",
				Address="University Road, Kotecha Chowk, Rajkot",
				Category="Hostel",
				Gender="Male Only",
				Occupancy="Single, Double, Triple",
				Rooms="Both AC and Non-AC rooms",
				Meals="Meals included 2 times a day",
				Price=5500,
				Contact="+91 99108 51855",
				Image=Img+"boys_hostel/Vaidik_Boys_Hostel_University_Road.jpg"
            },
			new Stay{
				Id=4,
				Name="The Penthouse Boys PG",
				Address="Hemal Society, Amin Marg, Rajkot",
				Category="Room",
				Gender="Male Only",
				Occupancy="Single, Double and Triple Sharing",
				Rooms="Both AC and Non-AC rooms",
				Meals="No meals",
				Price=8000,
				Contact="+91 84803 42602",
				Image=Img+"boys_pg/The_Penthouse_PG_Amin_Marg.jpg"
            },
			new Stay{
				Id=5,
				Name="Raadhe Meera Girls PG",
				Address="Gondal Road, Hanuman Madhi, Rajkot",
				Category="PG",
				Gender="Female Only",
				Occupancy="Single, Double, Triple and Multi Sharing",
				Rooms="Only Non-AC rooms",
				Meals="Meals included 3 times a day",
				Price=6000,
				Contact="+91 93727 72791",
				Image=Img+"girls_pg/Raadhe_Meera_Girls_PG_Bhakti_Nagar.jpg"
            } 
		};
		public static readonly List<AppUser> Users = new List<AppUser> {
			new AppUser{
				Name="Darshan Parmar",
				Email="demo@staybuddy.com",
				Mobile="+91 93127 46912",
				Password="Demo@123",
				Status="ACTIVE STUDENT"
			},
			new AppUser{
				Name="Rahul Trivedi",
				Email="trahu.t@vsak.com",
				Mobile="+91 9847667393",
				Password="Pass@123",
				Status="ACTIVE STUDENT"
			},
			new AppUser{
				Name="Sunil Shah",
				Email="ijanesuld@gmail.com",
				Mobile="+91 9662187693",
				Password="Pass@123",
				Status="ACTIVE STUDENT"
			},
			new AppUser{
				Name="Rohit Verma",
				Email="rohit007@gmail.com",
				Mobile="+91 9864567391",
				Password="Pass@123",
				Status="ACTIVE STUDENT"
			},
			new AppUser{
				Name="Riya Bhatt",
				Email="bhatriya123@gmail.com",
				Mobile="+91 9864117293",
				Password="Pass@123",
				Status="ACTIVE STUDENT"
			} 
		};
		public static readonly AppUser Admin = new AppUser {
			Name = "Darshan Parmar", 
			Email = "admin@staybuddy.com", 
			Mobile = "+91 93127 46912", 
			Password = "Admin@123" 
		};
		public static AppUser CurrentUser {
			get {
				return HttpContext.Current.Session["User"] as AppUser; 
			} 
		}
		public static AppUser CurrentAdmin {
			get { 
				return HttpContext.Current.Session["Admin"] as AppUser; 
			} 
		}
		public static HashSet<int> Saved {
			get { 
				var s = HttpContext.Current.Session; 
				var h = s["Saved"] as HashSet<int>;
				if (h == null) {
					h = new HashSet<int> {
						2, 5 
					}; 
					s["Saved"] = h; 
				} 
				return h; 
			} 
		}
		static string E(string x) {
			return HttpUtility.HtmlEncode(x); 
		}
		public static string Card(Stay s)
		{
			var url = HttpContext.Current.Request.Url; 
			var q = HttpUtility.ParseQueryString(url.Query); 
			q.Remove("toggle"); q["toggle"] = s.Id.ToString();
			bool on = Saved.Contains(s.Id);
			return "<div class=\"card\"><div class=\"img\" style=\"background-image:url('" + VirtualPathUtility.ToAbsolute(s.Image) + "')\"><span class=\"tag\">" + E(s.Category) + "</span><span class=\"tag g\">" + E(s.Gender) + "</span>"
				 + "<a class=\"heart" + (on ? " on" : "") + "\" href=\"" + url.AbsolutePath + "?" + q + "\" style=\"text-align:center;line-height:26px\">" + (on ? "&#9829;" : "&#9825;") + "</a></div>"
				 + "<div class=\"cb\"><h4>" + E(s.Name) + "</h4><small class=\"muted\">" + E(s.Address) + "</small><ul><li>&#128100; " + E(s.Occupancy) + "</li><li>&#127869; " + E(s.Meals) + "</li><li>&#9679; " + E(s.Rooms) + "</li></ul><small class=\"muted\">Contact Owner</small><br/><b>" + E(s.Contact) + "</b></div></div>";
		}
	}
}