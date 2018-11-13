using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FSD_P2_pandahelp
{
	public partial class ProfilePage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            txtSelfDesc.Height = 50;
            txtSelfDesc.Width = 300;

            if (!Page.IsPostBack)
            {
                string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
                SqlConnection conn = new SqlConnection(strConn);
                SqlCommand cmd = new SqlCommand("SELECT * FROM UserProfile WHERE EmailAddr=@email", conn);
                cmd.Parameters.AddWithValue("@email", Session["username"]);

                SqlDataAdapter daStudent = new SqlDataAdapter(cmd);
                DataSet result = new DataSet();
                conn.Open();
                daStudent.Fill(result, "StudentDetails");
                conn.Close();

                /*DataRow studentRow = result.Tables["StudentDetails"].Rows[0];
                lblName = studentRow.Field<string>(2);
                rdoYear = studentRow.Field<>(3);
                rdobtnCourse.Text = studentRow.Field<string>(4);
                txtHP.Text = studentRow.Field<string>(5);
                txtemail.Text = studentRow.Field<string>(6);
                txtSelfDesc.Text = studentRow.Field<string>(7);
                lblSkillSet = (9);
                imgStud.ImageUrl = "~/StudentsImage/" + studentRow.Field<string>(10);
                lblPoints = (11);*/
            }
		}

        private void displaySkillSet()
        {
            if (!Page.IsPostBack)
            {
                string strConn = ConfigurationManager.ConnectionStrings["Student_EPortfolioConnectionString"].ToString();

                SqlConnection conn = new SqlConnection(strConn);

                SqlCommand cmd = new SqlCommand("SELECT * from SkillSet", conn);

                SqlDataAdapter daSkill = new SqlDataAdapter(cmd);

                DataSet result = new DataSet();
                conn.Open();

                daSkill.Fill(result, "SkillListDetails");

                conn.Close();

                ddlSkillSet.DataSource = result.Tables["SkillListDetails"];
                ddlSkillSet.DataTextField = result.Tables["SkillListDetails"].Columns["SkillSetName"].ToString();
                ddlSkillSet.DataValueField = result.Tables["SkillListDetails"].Columns["SkillSetName"].ToString();

                ddlSkillSet.DataBind();
            }
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