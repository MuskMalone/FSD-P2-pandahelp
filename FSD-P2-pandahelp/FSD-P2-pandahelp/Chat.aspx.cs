using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using FSD_P2_pandahelp.App_Code;
namespace FSD_P2_pandahelp
{
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Request.QueryString["ListingID"].ToString();
            int number = Convert.ToInt32(TextBox1.Text);


        }
        private void displayListings()
        {


        }

        protected void btnResolved_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection sqlConnection1 =
new System.Data.SqlClient.SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;                             
                        Initial Catalog=PandaHelp;                      
                        Integrated Security=SSPI;");

            System.Data.SqlClient.SqlCommand Listingcmd = new System.Data.SqlClient.SqlCommand();
            Listingcmd.CommandType = System.Data.CommandType.Text;
            Listingcmd.CommandText = "update listing set resolvedstatus = 'Y' where ListingID =" + Convert.ToInt32(TextBox1.Text) + " ";
            Listingcmd.Connection = sqlConnection1;

            sqlConnection1.Open();
            Listingcmd.ExecuteNonQuery();
            sqlConnection1.Close();

            Response.Redirect("UpdateListing.aspx?");
        }

        protected void btnUResolved_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateListing.aspx?");
        }
    }
}