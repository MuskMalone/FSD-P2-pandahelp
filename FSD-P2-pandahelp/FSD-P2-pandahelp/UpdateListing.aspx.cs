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

namespace FSD_P2_pandahelp
{
    public partial class UpdateListing : System.Web.UI.Page
    {
        int ResolvedStatus;
        protected void Page_Load(object sender, EventArgs e)
        {
            displayListings();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            
        }

        private void displayListings()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                            ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("select * from listing where resolvedstatus = 'N'", conn);
            SqlDataAdapter daListing = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daListing.Fill(result, "Listing");
            conn.Close();
            gvListing.DataSource = result.Tables["Listing"];
            gvListing.DataBind();
           

        }

        protected void Update_Click(object sender, EventArgs e)
        {

            string strConn = ConfigurationManager.ConnectionStrings
                ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("Update Listing set ResolvedStatus = 'N' where UserID = 'S19E0D'", conn);
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