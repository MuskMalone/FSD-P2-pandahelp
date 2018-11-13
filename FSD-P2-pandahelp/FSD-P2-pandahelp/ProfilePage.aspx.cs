using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FSD_P2_pandahelp
{
	public partial class ProfilePage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            txtSelfDesc.Height = 50;
            txtSelfDesc.Width = 300;
		}

        protected void txtPersonalEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtSelfDesc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            /*int errorCode1 =;

            if (errorCode1 == 0)
            {
                lblMessage.Text = "Your profile has been updated!";
            }
            else if (errorCode1 == -2)
            {
                lblMessage.Text = "Unable to update profile!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }*/
        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
    }
}