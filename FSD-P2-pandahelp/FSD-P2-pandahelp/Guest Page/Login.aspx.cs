using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using FSD_P2_pandahelp.App_Code;

namespace FSD_P2_pandahelp.Guest_Page
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            { 
               displayListings();
            }
        }
        private void displayListings()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                            ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand();
            if (Session["OfflineList"] == null)
            {
                if (Session["OfflineStudent"] == null)
                { cmd = new SqlCommand("SELECT ListingID, title, ModuleName, DateCreated,Name FROM listing inner join Module on listing.ModuleNo = Module.ModuleNo inner join UserProfile on UserProfile.UserProfileID= listing.UserProfileID ", conn); }
                else
                {Student list = (Student)Session["OfflineStudent"];
                 cmd = new SqlCommand("SELECT ListingID, title, ModuleName, DateCreated,Name FROM listing inner join Module on listing.ModuleNo = Module.ModuleNo inner join UserProfile on UserProfile.UserProfileID = listing.UserProfileID where Name = @id", conn);
                 cmd.Parameters.AddWithValue("@id", list.Name);
                }
  
            }
            else
            {Listing list = (Listing)Session["OfflineList"];
              cmd = new SqlCommand("SELECT ListingID, title, ModuleName, DateCreated,Name FROM listing inner join Module on listing.ModuleNo = Module.ModuleNo inner join UserProfile on UserProfile.UserProfileID = listing.UserProfileID where ModuleName = @id", conn);
             cmd.Parameters.AddWithValue("@id", list.module);
            }    
            SqlDataAdapter daListing = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daListing.Fill(result, "Listing");
            conn.Close();
            if (result.Tables["Listing"].Rows.Count >0)
            {
                gvListing.DataSource = result.Tables["Listing"];
                gvListing.DataBind();
            }
            else
            {
                lblError.Text = "No data found";
            }
            Session["OfflineList"] = null;
        }

        
    }
}