using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FSD_P2_pandahelp.App_Code
{
    public class Student
    {
        public int userprofileID { get; set; }
        public string userID { get; set; }
        public string Name { get; set; }
        public int year{ get; set; }
        public string course { get; set; }
        public string PhoneNo { get; set; }
        public string CEmail { get; set; }
        public string description { get; set; }
        public string Email { get; set; }
        public string photo { get; set; }
        public int point { get; set; }
        public string password { get; set; }

        

        public void SentList()
        {

        }
        public void AccpetList()
        {

        }
        public void DeclineList()
        {

        }
        // Login //
        public void GetDetails()
        {
            string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("Select * from UserProfile Where Email = @id", conn);
            cmd.Parameters.AddWithValue("@id", Email);
            SqlDataAdapter pw = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            pw.Fill(result, "details");
            conn.Close();
            userprofileID = Convert.ToInt32(result.Tables[0].Rows[0]["UserProfileID"]);
            userID = result.Tables[0].Rows[0]["UserID"].ToString();
            Name = result.Tables[0].Rows[0]["Name"].ToString();
            year = Convert.ToInt32(result.Tables[0].Rows[0]["Year"]);
            course = result.Tables[0].Rows[0]["COS"].ToString();
            PhoneNo = result.Tables[0].Rows[0]["ContactHP"].ToString();
            CEmail = result.Tables[0].Rows[0]["ContactEmail"].ToString();
            description = result.Tables[0].Rows[0]["SDescription"].ToString();
            photo = result.Tables[0].Rows[0]["ProfilePic"].ToString();
            point = Convert.ToInt32(result.Tables[0].Rows[0]["Point"]);

    }
    public bool isEmailExist()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                            ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                           ("SELECT * FROM UserProfile WHERE Email=@typedemail", conn);

            cmd.Parameters.AddWithValue("@typedemail", Email);

            SqlDataAdapter daEmail = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();

            conn.Open();
            daEmail.Fill(result, "EmailDetails");
            conn.Close();

            if (result.Tables["EmailDetails"].Rows.Count > 0)
                return true;
            else
                return false;
           
        }
        public int GetPass()
        {
            string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("Select UserPassword from UserProfile Where Email = @id", conn);
            cmd.Parameters.AddWithValue("@id", Email);
            SqlDataAdapter pw = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            pw.Fill(result, "pwd");
            string checker = (string)cmd.ExecuteScalar();
            conn.Close();
            if (result.Tables["pwd"].Rows.Count > 0)
            {
                password = checker;
                return 1;
            }
            else
            {
                return 0;
            }
           
        }
        //  //
    }
}