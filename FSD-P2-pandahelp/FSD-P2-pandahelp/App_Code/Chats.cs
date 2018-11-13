using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FSD_P2_pandahelp.App_Code
{
    public class Chats
    {
        public int ChatID { get; set; }
        public string TutorName { get; set; }
        public string TuteeName { get; set; }
        public int TutorID { get; set; }
        public int TuteeID { get; set; }
        public int ListingID { get; set; }

        public void getDetails()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                         ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                           ("SELECT * FROM Chat WHERE ListingID=@Listing AND  TutorID=@Tutor AND  TuteeID=@Tutee;", conn);
            cmd.Parameters.AddWithValue("@Listing", ListingID);
            cmd.Parameters.AddWithValue("@Tutor", TutorID);
            cmd.Parameters.AddWithValue("@Tutee", TuteeID);

            SqlDataAdapter daEmail = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();

            conn.Open();
            daEmail.Fill(result, "EmailDetails");
            conn.Close();

            if (result.Tables["EmailDetails"].Rows.Count > 0)
               ChatID = Convert.ToInt32(result.Tables[0].Rows[0]["ChatID"]);
            else { 
                SqlCommand cmd2 = new SqlCommand("INSERT INTO Chat (ListingID,TutorID,TuteeID)" +
                 "OUTPUT INSERTED.ChatID " + "VALUES ( @Listing, @Tutor ,@Tutee)", conn);
                cmd2.Parameters.AddWithValue("@Listing", ListingID);
                cmd2.Parameters.AddWithValue("@Tutor", TutorID);
                cmd2.Parameters.AddWithValue("@Tutee", TuteeID);
                conn.Open();
                ChatID = Convert.ToInt32(cmd2.ExecuteScalar());
                conn.Close();
            }
        }

        

        
    }
}