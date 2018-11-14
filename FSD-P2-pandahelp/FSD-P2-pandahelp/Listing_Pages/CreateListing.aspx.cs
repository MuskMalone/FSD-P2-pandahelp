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

namespace FSD_P2_pandahelp.Listing_Pages
{
    public partial class CreateListing : System.Web.UI.Page
    {
        Student objStudent;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                loadModules();
                loadPayment();
            }
        }

        private void loadModules()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Module", conn);
            SqlDataAdapter daModule = new SqlDataAdapter(cmd);
            DataTable dtModule = new DataTable();
            conn.Open();
            daModule.Fill(dtModule);
            conn.Close();

            ddlModule.DataTextField = "ModuleName";
            ddlModule.DataValueField = "ModuleNo";
            ddlModule.DataSource = dtModule;
            ddlModule.DataBind();
        }

        private void loadPayment()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Payment", conn);
            SqlDataAdapter daPayment = new SqlDataAdapter(cmd);
            DataTable dtPayment = new DataTable();
            conn.Open();
            daPayment.Fill(dtPayment);
            conn.Close();

            ddlPayment.DataTextField = "ModeOfPayment";
            ddlPayment.DataValueField = "PaymentID";
            ddlPayment.DataSource = dtPayment;
            ddlPayment.DataBind();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            objStudent = (Student)Session["student"];
            string strConn = ConfigurationManager.ConnectionStrings
                ["PandaHelp"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("insert into listing (title,description,ModuleNo,PaymentID,UserProfileID) " +
                                            "values (@title,@desc,@module,@payment,@userID)", conn);
            cmd.Parameters.AddWithValue("@title", txtTitle.Text);
            cmd.Parameters.AddWithValue("@desc", txtDesc.Text);
            cmd.Parameters.AddWithValue("@module", Convert.ToInt32(ddlModule.SelectedValue));
            cmd.Parameters.AddWithValue("@payment", Convert.ToInt32(ddlPayment.SelectedValue));
            cmd.Parameters.AddWithValue("@userID", objStudent.userprofileID);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


        }
    }
}