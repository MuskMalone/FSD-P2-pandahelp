using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace FSD_P2_pandahelp
{
    public partial class AcceptRejectOffer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("select ListingID,UserProfile.ProfilePic,title,description,ModuleNo,PaymentID,UserProfile.UserProfileID,DateCreated,ResolvedStatus,userprofile.UserProfileID,name,status from listing inner join userprofile on listing.UserProfileID = UserProfile.UserProfileID inner join offer on offer.Offerid = listing.ListingID", conn);
            SqlDataAdapter daListing = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daListing.Fill(result, "Listing");
            conn.Close();
            DLOfferList.DataSource = result.Tables["Listing"];
            DLOfferList.DataBind();

           
        }

        protected void txtDescription_TextChanged(object sender, EventArgs e)
        {
        }

        protected void btnReject_Click(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings
    ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("select ListingID,UserProfile.ProfilePic,title,description,ModuleNo,PaymentID,UserProfile.UserProfileID,DateCreated,ResolvedStatus,userprofile.UserProfileID,name,status from listing inner join userprofile on listing.UserProfileID = UserProfile.UserProfileID inner join offer on offer.Offerid = listing.ListingID", conn);
            SqlDataAdapter daListing = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daListing.Fill(result, "Listing");
            conn.Close();
            DLOfferList.DataSource = result.Tables["Listing"];
            DLOfferList.DataBind();
            Label1.Text = result.Tables["Listing"].Rows.Count.ToString();
        }

        protected void DLOfferList_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}