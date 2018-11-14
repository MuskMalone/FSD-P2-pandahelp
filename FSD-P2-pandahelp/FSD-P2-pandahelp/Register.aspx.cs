using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FSD_P2_pandahelp
{
    public partial class Register : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtContactEmail.Text = "";
            txtContactHp.Text = "";
            txtCOS.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            txtProfilePic.Text = "";
            txtSkillset.Text = "";
            txtUserID.Text = "";
            txtUserPassword.Text = "";
            txtYear.Text = "";
            txtSDescription.Text = "";
           
        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection sqlConnection1 =
    new System.Data.SqlClient.SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;                             
                        Initial Catalog=PandaHelp;                      
                        Integrated Security=SSPI;");

            System.Data.SqlClient.SqlCommand UserProfilecmd = new System.Data.SqlClient.SqlCommand();
            UserProfilecmd.CommandType = System.Data.CommandType.Text;
            UserProfilecmd.CommandText = "INSERT UserProfile (UserID,Name,Year,COS,ContactHP,ContactEmail,SDescription,Email,Skillset,ProfilePic,Point,Userpassword) " +
            "VALUES (" + "'" + txtUserID.Text + "','" + txtName.Text + "','" + Convert.ToInt32(txtYear.Text) + "','" + txtCOS.Text + "','" + txtContactHp.Text + "','" + txtContactEmail.Text + "','" + txtSDescription.Text + "','" + txtEmail.Text + "','" + txtSkillset.Text + "','" + txtProfilePic.Text + "','10','" + txtUserPassword.Text + "')";
            UserProfilecmd.Connection = sqlConnection1;

            sqlConnection1.Open();
            UserProfilecmd.ExecuteNonQuery();
            sqlConnection1.Close();
        }
    }
}