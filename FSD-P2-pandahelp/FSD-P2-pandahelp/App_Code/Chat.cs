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
    public class Chat
    {
        public string TutorName { get; set; }
        public string TuteeName { get; set; }
        public int TutorID { get; set; }
        public int TuteeID { get; set; }
        public int ListingID { get; set; }

        public void getDetails()
        {
        }
    }
}