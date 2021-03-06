﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using FSD_P2_pandahelp.App_Code;

namespace FSD_P2_pandahelp
{
    public partial class ChatBoxs : System.Web.UI.Page
    {
        Chats c = new Chats();
        Student objStudent;
        

        protected void Page_Load(object sender, EventArgs e)
        {
           
            /*get_User();
            Load_Frends();*/
            InitialiseChat();
            LoadChatbox();
            Load_Frends();


        }
        void InitialiseChat()
        {
            Listing objListing = (Listing)Session["Listing"];
            objStudent = (Student)Session["student"];
            c.ListingID = objListing.listingID;
            c.TuteeID = objListing.userProfileID;
            c.TutorID = objStudent.userprofileID;
            c.getDetails();
        }
        
        public void LoadChatbox()
         {
            string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                           ("select * from Message where ChatID=@chat ORDER BY MessageID;", conn);
            cmd.Parameters.AddWithValue("@chat", c.ChatID);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            conn.Open();
            da.Fill(ds);
            conn.Close();
            //DataList2.DataSource = ds;
            //DataList2.DataBind();
            ChatBox.DataSource = ds;
            ChatBox.DataBind();
             
             //ScriptManager.RegisterStartupScript(this.Page, typeof(Panel), "PanelChatContent", ";ScrollToBottom();", true);
         }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            LoadChatbox(); //refresh the ChatBox everysecond
        }
        public string formattedDate(object value)
        {
           return DateTime.Parse(value.ToString()).ToString("HH:mm");
        }
       public string Formatimg(object value)
        {
            return ("~/Images/" + value.ToString());
        }



        public void Load_Frends()
        {
            string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                           (" select Name,ProfilePic,u.UserProfileID from UserProfile u inner join Chat c on u.UserProfileID = c.UserProfileID2 where c.UserProfileID1 !=@id;", conn);
            SqlCommand cmd2 = new SqlCommand
                          (" select Name,ProfilePic,u.UserProfileID from UserProfile u inner join Chat c on u.UserProfileID = c.UserProfileID1 where c.UserProfileID2 !=@id;", conn);
            cmd.Parameters.AddWithValue("@id", c.TutorID);
            cmd2.Parameters.AddWithValue("@id", c.TutorID);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataSet ds = new DataSet();
            conn.Open();
            da.Fill(ds,"Chattitle");
            da2.Fill(ds, "Recipent");
            conn.Close();
            DataTable dtblFinal = new DataTable();

            foreach (DataTable table in ds.Tables)
            {
                dtblFinal.Merge(table, false, MissingSchemaAction.Add);
            }
            //DataList2.DataSource = ds;
            //DataList2.DataBind();
            Inbox.DataSource = dtblFinal;
            Inbox.DataBind();
        }
        protected void btnSend_Click1(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                txtMessage.Text = "?";
            }
            else { 
                string Message = txtMessage.Text;
                string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
                SqlConnection conn = new SqlConnection(strConn);
                SqlCommand cmd = new SqlCommand
                               ("insert into Message(ChatID,Message,SentID) values(@ChatID,@Message,@ID)", conn);
                cmd.Parameters.AddWithValue("@ChatID", c.ChatID);
                cmd.Parameters.AddWithValue("@Message", Message);
                cmd.Parameters.AddWithValue("@ID", objStudent.userprofileID);
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                conn.Close();
                if (i >= 1)
                {
                    txtMessage.Text = "";
                   
                }
            }
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            c = new Chats();
            c.TutorID = objStudent.userprofileID;
            c.TuteeID = Convert.ToInt32(e.Item.DataItem("UserProfileID"));
            LoadChatbox();
        }

        
    }
}