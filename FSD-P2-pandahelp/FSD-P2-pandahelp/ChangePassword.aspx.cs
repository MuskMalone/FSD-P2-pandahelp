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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        //Need Update
        protected void changePassForm_ChangedPassword(object sender, LoginCancelEventArgs e)
        {
            if (!changePassForm.CurrentPassword.Equals(changePassForm.NewPassword, StringComparison.CurrentCultureIgnoreCase))
            {
                int rowsAffected = 0;
                string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
                string query = "UPDATE UserProfile SET UserPassword = @NewPassword WHERE UserProfile = @username AND UserPassword = @CurrentPassword WHERE UserID = userID";

                using (SqlConnection conn = new SqlConnection(strConn))
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Parameters.AddWithValue("@Username", this.Page.User.Identity.Name);
                            cmd.Parameters.AddWithValue("@CurrentPassword", changePassForm.CurrentPassword);
                            cmd.Parameters.AddWithValue("@NewPassword", changePassForm.NewPassword);
                            cmd.Connection = conn;
                            conn.Open();
                            rowsAffected = cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }

                    if (rowsAffected > 0)
                    {
                        lblMessage.ForeColor = Color.Green;
                        lblMessage.Text = "Password has been changed successfully.";
                    }

                    else
                    {
                        lblMessage.ForeColor = Color.Red;
                        lblMessage.Text = "Password does not match with our database records.";
                    }
                }
            }

            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "Old Password and New Password must not be equal.";
            }

            e.Cancel = true;
        }
    }
}