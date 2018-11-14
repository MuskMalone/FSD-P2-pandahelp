using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using FSD_P2_pandahelp.App_Code;

namespace FSD_P2_pandahelp
{
	public partial class ProfilePage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            txtSelfDesc.Height = 50;
            txtSelfDesc.Width = 300;
            Student objStudent = (Student)Session["student"];
            //NEED UPDATE
            /*if (!Page.IsPostBack)
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

                DataRow studentRow = result.Tables["StudentDetails"].Rows[0];
                lblName = studentRow.Field<string>(2);
                rdoYear = studentRow.Field<int>(3);
                rdobtnCourse.Text = studentRow.Field<string>(4);
                txtHP.Text = studentRow.Field<string>(5);
                txtEmail.Text = studentRow.Field<string>(6);
                txtSelfDesc.Text = studentRow.Field<string>(7);
                ddlSkillSet = studentRow.Field<string>(9);
                imgStud.ImageUrl = "~/Images/" + studentRow.Field<string>(10);
                lblPoints = studentRow.Field<string>(11);
            }*/
        }

        private void displaySkillSet()
        {
            if (!Page.IsPostBack)
            {
                string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ToString();
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

        private void posterPhoto()
        {
            string uploadedFile = "";

            if (imgUpload.HasFile == true)
            {
                string savePath;
                string fileText = Path.GetExtension(imgUpload.FileName);

                uploadedFile = lblImgName + fileText;
                savePath = MapPath("~/Images/" + uploadedFile);

                try
                {
                    imgUpload.SaveAs(savePath);
                    lblMsg.Text = "Upload successful!";
                    imgStud.ImageUrl = "~/Images/" + uploadedFile;
                }

                catch (IOException)
                {
                    lblMsg.Text = "Unable to upload!";
                }

                catch (Exception ex)
                {
                    lblMsg.Text = ex.Message;
                }
            }
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