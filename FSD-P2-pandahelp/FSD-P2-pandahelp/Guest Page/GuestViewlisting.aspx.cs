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
    public partial class GuestViewlisting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void View()
        {
            int ListingID = Convert.ToInt32(Request["ListingID"]);
            Listing list = new Listing();
            list.listingID = ListingID;
            list.getDetails();
            
           
        }
    }
}