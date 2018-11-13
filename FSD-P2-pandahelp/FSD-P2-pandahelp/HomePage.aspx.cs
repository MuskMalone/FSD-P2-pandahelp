using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FSD_P2_pandahelp
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                BindData();
            }
        }

        protected void SortListings(object sender, GridViewSortEventArgs e)

        {

            string sortExpression = e.SortExpression;

            string direction = string.Empty;

            if (SortDirection == SortDirection.Ascending)

            {

                SortDirection = SortDirection.Descending;

                direction = "DESC";

            }

            else

            {

                SortDirection = SortDirection.Ascending;

                direction = " ASC";

            }

            DataTable table = this.GetData();

            table.DefaultView.Sort = sortExpression + direction;

            gvListing.DataSource = table;

            gvListing.DataBind();

        }



        private void BindData()

        {

            // specify the data source for the GridView

            gvListing.DataSource = this.GetData();

            // bind the data now

            gvListing.DataBind();

        }

        public SortDirection SortDirection

        {

            get

            {

                if (ViewState["SortDirection"] == null)

                {

                    ViewState["SortDirection"] = SortDirection.Ascending;

                }

                return (SortDirection)ViewState["SortDirection"];

            }

            set

            {

                ViewState["SortDirection"] = value;

            }

        }



        private DataTable GetData()

        {
            string strConn = ConfigurationManager.ConnectionStrings["PandaHelp"].ConnectionString;
            DataTable table = new DataTable();

            // get the connection

            using (SqlConnection conn = new SqlConnection(strConn))

            {

                // write the sql statement to execute

                string sql = "SELECT * FROM Listing ORDER By DateCreated";

                // instantiate the command object to fire

                using (SqlCommand cmd = new SqlCommand(sql, conn))

                {

                    // get the adapter object and attach the command object to it

                    using (SqlDataAdapter daListing = new SqlDataAdapter(cmd))

                    {

                        // fire Fill method to fetch the data and fill into DataTable

                        daListing.Fill(table);

                    }

                }

            }

            return table;
        }

        protected void gvListing_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}