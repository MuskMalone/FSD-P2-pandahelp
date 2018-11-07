using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using FSD-P2-pandahelp.App_Code;

namespace FSD_P2_pandahelp.Listing_Pages
{
    public partial class ViewListings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                displayListings();
            }
        }

        private void displayListings()
        {
            Listing objStudent = new Listing();
            objStudent.mentorID = Convert.ToInt32(Session["MentorID"]);
            string strConn = ConfigurationManager.ConnectionStrings
                            ["NPSPortfolio"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Student WHERE MentorID = @mentorID ORDER BY StudentID", conn);
            cmd.Parameters.AddWithValue("@mentorID", objStudent.mentorID);
            SqlDataAdapter daStudent = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daStudent.Fill(result, "Student");
            conn.Close();
            gvPortfolio.DataSource = result.Tables["Student"];
            if (result.Tables["Student"].Rows.Count == 0)
            {
                lblError.Text = "No student portfolios found";
                lblN.Visible = false;
                lblY.Visible = false;
            }
            else
            {
                gvPortfolio.DataBind();
            }
        }
    }
}