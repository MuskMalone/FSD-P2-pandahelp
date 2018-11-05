using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FSD_P2_pandahelp.App_Code
{
    public class Student
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public int PhoneNo { get; set; }
        public string description { get; set; }
        public string photo { get; set; }
        public string password { get; set; }
        public string course { get; set; }

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
        public int IdExist()
        {

            string strConn = ConfigurationManager.ConnectionStrings["NPSPortfolio"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("Select * from Student Where StudentID = @id", conn);
            cmd.Parameters.AddWithValue("@id", studID);
            SqlDataAdapter pw = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            pw.Fill(result, "pwd");
            conn.Close();
            if (result.Tables["pwd"].Rows.Count > 0)
            { return 1; }
            else
            { return 0; }
        }
        public void GetDetails()
        {
            string strConn = ConfigurationManager.ConnectionStrings["NPSPortfolio"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("Select * from Student Where EmailAddr = @id", conn);
            cmd.Parameters.AddWithValue("@id", Email);
            SqlDataAdapter pw = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            pw.Fill(result, "details");
            conn.Close();
            studID = Convert.ToInt32(result.Tables[0].Rows[0]["StudentID"]);
            name = result.Tables[0].Rows[0]["Name"].ToString();
            course = result.Tables[0].Rows[0]["Course"].ToString();
            description = result.Tables[0].Rows[0]["Description"].ToString();
            achievement = result.Tables[0].Rows[0]["Achievement"].ToString();
            externallink = result.Tables[0].Rows[0]["ExternalLink"].ToString();
            mentorID = Convert.ToInt32(result.Tables[0].Rows[0]["mentorID"]);
            photo = result.Tables[0].Rows[0]["Photo"].ToString();


        }
        public bool isEmailExist(string email)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                            ["NPSPortfolio"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                           ("SELECT * FROM Student WHERE EmailAddr=@typedemail", conn);

            cmd.Parameters.AddWithValue("@typedemail", email);

            SqlDataAdapter daEmail = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();

            conn.Open();
            daEmail.Fill(result, "EmailDetails");
            conn.Close();

            if (result.Tables["EmailDetails"].Rows.Count > 0)
                return false;
            else
                return true;
        }
        public int GetStudentID()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["NPSPortfolio"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT StudentID FROM Student WHERE Name = @name", conn);
            cmd.Parameters.AddWithValue("@name", name);
            conn.Open();
            int id = (int)cmd.ExecuteScalar();
            conn.Close();
            return id;
        }
        public int GetPass()
        {
            string strConn = ConfigurationManager.ConnectionStrings["NPSPortfolio"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("Select Password from Student Where EmailAddr = @id", conn);
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