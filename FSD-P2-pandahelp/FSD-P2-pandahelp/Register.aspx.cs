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
            System.Data.SqlClient.SqlConnection sqlConnection1 =
                new System.Data.SqlClient.SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;                             
                        Initial Catalog=PandaHelp;                      
                        Integrated Security=SSPI;");

            System.Data.SqlClient.SqlCommand Modulecmd = new System.Data.SqlClient.SqlCommand();
            Modulecmd.CommandType = System.Data.CommandType.Text;
            Modulecmd.CommandText = "INSERT Module (ModuleName) VALUES ('" + txtModuleName.Text +"')";
            Modulecmd.Connection = sqlConnection1;

            System.Data.SqlClient.SqlCommand UserProfilecmd = new System.Data.SqlClient.SqlCommand();
            UserProfilecmd.CommandType = System.Data.CommandType.Text;
            UserProfilecmd.CommandText = "INSERT UserProfile (UserID,Name,Year,COS,ContactHP,ContactEmail,SDescription,Email,Skillset,ProfilePic,Point,Userpassword) " +
            "VALUES ("+"'"  + txtUserID.Text + "','"+txtName.Text+"','"+Convert.ToInt32(txtYear.Text)+"','"+ txtCOS.Text + "','"+ txtContactHp.Text +"','"+txtContactEmail.Text+"','" + txtSDescription.Text + "','" + txtEmail.Text +"','"+txtSkillset.Text+"','" + txtProfilePic.Text + "','"+txtPoint.Text+"','" + txtUserPassword.Text +"')";
            UserProfilecmd.Connection = sqlConnection1;

            System.Data.SqlClient.SqlCommand Paymentcmd = new System.Data.SqlClient.SqlCommand();
            Paymentcmd.CommandType = System.Data.CommandType.Text;
            Paymentcmd.CommandText = "INSERT Payment (ModeOfPayment,ShortDescription,UserProfileID) VALUES ('" + txtModeofPayment.Text +"','" + txtSDescription.Text +"','1')";
            Paymentcmd.Connection = sqlConnection1;

            System.Data.SqlClient.SqlCommand Listingcmd = new System.Data.SqlClient.SqlCommand();
            Listingcmd.CommandType = System.Data.CommandType.Text;
            Listingcmd.CommandText = "INSERT Listing (title,description,ModuleNo,PaymentID,UserProfileID,UserID) VALUES ('" + txtTitle.Text + "','" + txtDesription.Text +"',1,1,1,'S19E0D')";
            Listingcmd.Connection = sqlConnection1;


            sqlConnection1.Open();
            Modulecmd.ExecuteNonQuery();
            UserProfilecmd.ExecuteNonQuery();
            Paymentcmd.ExecuteNonQuery();
            Listingcmd.ExecuteNonQuery();
            sqlConnection1.Close();
        }

        protected void txtUserID_TextChanged(object sender, EventArgs e)
        {

        }
    }
}