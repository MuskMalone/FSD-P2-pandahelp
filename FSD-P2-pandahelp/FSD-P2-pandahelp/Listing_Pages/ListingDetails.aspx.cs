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
    public partial class ListingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["listingid"] != null)
                {
                    Listing objListing = new Listing();
                    objListing.listingID = Convert.ToInt32(Request.QueryString["listingid"]);
                    int errorCode = objListing.getDetails();
                    if (errorCode == 0)
                    {
                        lblTitle.Text = objListing.title;
                        lblModule.Text = objListing.module;
                        lblStudent.Text = objListing.student;
                        lblPayment.Text = objListing.paymentMode;
                        lblDesc.Text = objListing.desc;
                    }
                    else if (errorCode == -2)
                    {
                        lblError.Text = "no listing details";
                    }
                }
            }

        }
    }
}