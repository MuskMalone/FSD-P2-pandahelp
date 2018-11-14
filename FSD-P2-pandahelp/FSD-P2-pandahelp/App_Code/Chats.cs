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
                           ("SELECT  * FROM PrivateChat inner join ChatPerson on PrivateChat.ChatID = ChatPerson.ChatID WHERE ListingID=@Listing AND UserProfileId=@Id;", conn);
            cmd.Parameters.AddWithValue("@Listing", ListingID);
            cmd.Parameters.AddWithValue("@Id", TutorID);

            SqlDataAdapter daEmail = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();

            conn.Open();
            daEmail.Fill(result, "EmailDetails");
            conn.Close();

            if (result.Tables["EmailDetails"].Rows.Count > 0)
               ChatID = Convert.ToInt32(result.Tables[0].Rows[0]["ChatID"]);
            else { 
                SqlCommand cmd2 = new SqlCommand("INSERT INTO PrivateChat (ListingID)" +
                 "OUTPUT INSERTED.ChatID " + "VALUES ( @Listing)", conn);
                cmd2.Parameters.AddWithValue("@Listing", ListingID);
                conn.Open();
                ChatID = Convert.ToInt32(cmd2.ExecuteScalar());
                cmd2 = new SqlCommand("Insert into ChatPerson values (@Chat,@tutor);" +
                 "Insert into ChatPerson values (@Chat,@tutee); ", conn);
                cmd2.Parameters.AddWithValue("@Chat", ChatID);
                cmd2.Parameters.AddWithValue("@tutor", TutorID);
                cmd2.Parameters.AddWithValue("@tutee", TuteeID);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
        }

        

        
    }
}