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
            txtSelfDesc.Height = 200;
            txtSelfDesc.Width = 500;
		}

        protected void txtPersonalEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtSelfDesc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {

        }
    }
}