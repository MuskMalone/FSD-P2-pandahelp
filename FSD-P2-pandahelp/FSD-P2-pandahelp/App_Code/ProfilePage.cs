using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace FSD_P2_pandahelp.App_Code
{
    public class ProfilePage
    {
        public string name { get; set; }
        public string year { get; set; }
        public string course { get; set; }
        public string phoneNo { get; set; }
        public string selfDesc { get; set; }
        public string email { get; set; }
        public string skillSet { get; set; }
        public string points { get; set; }
        
        public int updateProfile()
        {
            string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                ("UPDATE Student SET ContactHP=@contactHP, SDescription=@sDescription, Email=@email, Skillset=@skillSet " +
                "WHERE EmailAddr='" + HttpContext.Current.Session["username"] + "'", conn);

            cmd.Parameters.AddWithValue("@contactHP", phoneNo);
            cmd.Parameters.AddWithValue("@sDescription", selfDesc);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@skillSet", skillSet);

            conn.Open();

            int count = cmd.ExecuteNonQuery();

            conn.Close();

            if (count > 0)
                return 0;
            else
                return -2;
        }
    }
}