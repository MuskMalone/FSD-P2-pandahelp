using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FSD_P2_pandahelp.App_Code
{
    public class Listing
    {
        public int listingID { get; set; }
        public string title { get; set; }
        public string desc { get; set; }
        public string module { get; set; }
        public string paymentMode { get; set; }
        public bool solved { get; set; }
        public string student { get; set; }

        public int getDetails()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM listing INNER JOIN " +
                                            "Module ON listing.ModuleNo = Module.ModuleNo" +
                                            "INNER JOIN Payment ON listing.PaymentID = Payment.PaymentID" +
                                            "INNER JOIN UserProfile ON listing.UserProfileID = UserProfile.UserProfileID", conn);
            cmd.Parameters.AddWithValue("@selectedListingID", listingID);
            SqlDataAdapter daListing = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daListing.Fill(result, "ListingDetails");
            conn.Close();
            if (result.Tables["ListingDetails"].Rows.Count > 0)
            {
                DataTable table = result.Tables["ListingDetails"];
                if (!DBNull.Value.Equals(table.Rows[0]["ListingID"]))
                    listingID = Convert.ToInt32(table.Rows[0]["ListingID"]);
                if (!DBNull.Value.Equals(table.Rows[0]["title"]))
                    title = table.Rows[0]["title"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["description"]))
                    desc = table.Rows[0]["description"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["ModuleName"]))
                    module = table.Rows[0]["ModuleName"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["ModeOfPayement"]))
                    paymentMode = table.Rows[0]["ModeOfPayment"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["Name"]))
                    student = table.Rows[0]["Name"].ToString();
                return 0;
            }
            else
            {
                return -2;
            }
        }
    }
}