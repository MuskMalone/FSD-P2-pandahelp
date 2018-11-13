using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using FSD_P2_pandahelp.App_Code;

namespace FSD_P2_pandahelp.Listing_Pages
{
    public partial class ModuleSort : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["moduleno"] != null)
            {
                if (!this.IsPostBack)
                {
                    displayListings();
                }
            }
        }

        private void displayListings()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                            ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM listing inner join Module on listing.ModuleNo = Module.ModuleNo " +
                                            "WHERE ResolvedStatus = 'N' AND listing.ModuleNo = @selectedModule", conn);
            cmd.Parameters.AddWithValue("@selectedModule", Convert.ToInt32(Request.QueryString["moduleno"]));
            SqlDataAdapter daListing = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daListing.Fill(result, "Listing");
            conn.Close();
            gvListing.DataSource = result.Tables["Listing"];
            gvListing.DataBind();
        }
    }
}