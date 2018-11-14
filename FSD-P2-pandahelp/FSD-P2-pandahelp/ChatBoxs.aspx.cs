using System;
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
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            /*get_User();
            Load_Frends();*/
            InitialiseChat();
            LoadChatbox();
            
        }
        void InitialiseChat()
        {
            Listing objListing = (Listing)Session["Listing"];
            Student objStudent = (Student)Session["student"];
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
                               ("insert into Message(ChatID,Message) values(@ChatID,@Message)", conn);
                cmd.Parameters.AddWithValue("@ChatID", c.ChatID);
                cmd.Parameters.AddWithValue("@Message", Message);
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                conn.Close();
                if (i >= 1)
                {
                    txtMessage.Text = "";
                   
                }
            }
        }

       
        /* public void get_User()
{
Image1.ImageUrl = "images/" + Session["Image"].ToString();
Label1.Text = Session["Admin"].ToString();
}
protected void Unnamed_ServerClick(object sender, EventArgs e)
{

conn.Open();
string query = "insert into Chatbox values('" + Label1.Text + "','" + Label2.Text + "','" + TextBox1.Text + "','" + date3 + "','" + time + "','" + Image3.ImageUrl.ToString() + "')";
SqlCommand cmd = new SqlCommand(query, conn);
int i = cmd.ExecuteNonQuery();
conn.Close();
if (i >= 1)
{
TextBox1.Text = "";
LoadChatbox();
}
}
public void Load_Frends()
{
conn.Open();
string str = "select DISTINCT Name,Image from [Register] where Name!='" + Label1.Text + "'";
SqlCommand cmd = new SqlCommand(str, conn);
SqlDataAdapter da = new SqlDataAdapter(cmd);
DataSet ds = new DataSet();
da.Fill(ds);
//DataList2.DataSource = ds;
//DataList2.DataBind();
DataList1.DataSource = ds;
DataList1.DataBind();
conn.Close();
}

protected void LinkButton1_Click(object sender, EventArgs e)
{
LinkButton lBtn = sender as LinkButton;
string id = ((LinkButton)sender).CommandArgument.ToString();
//Label1.Text = id;
Label2.Text = lBtn.Text;

DataListItem item = (DataListItem)lBtn.NamingContainer;
Image NameLabel = (Image)item.FindControl("Image2");
string url = NameLabel.ImageUrl.ToString();
Image3.ImageUrl = url;
LoadChatbox();
}

*/
    }
}