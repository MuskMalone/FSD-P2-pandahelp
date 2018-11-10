using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FSD_P2_pandahelp.App_Code;

namespace FSD_P2_pandahelp
{
    public partial class GuestMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Read inputs from textboxes
            string Email = txtEmail.Text.ToLower(); //Textbox: txtLoginID
            string password = txtPassword.Text; //Textbox: txtPassword
            //Read selection of radio buttons
            Student objStudent = new Student();
            objStudent.Email = Email;
            if (objStudent.isEmailExist() == true)
            {
                if (objStudent.GetPass() == 1)
                {
                    if (password == objStudent.password)
                    {
                        objStudent.GetDetails();
                        Session["student"] = objStudent;
                        Response.Redirect("~/Listing_Pages/ListingDetails.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Incorrect Password";
                    }
                }
            }
            else
            {
                lblMessage.Text = "Invalid Email";
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (ddlSearch.SelectedValue == "Student Name")
            {
                Student student = new Student();
                student.Name = Search.Text;
                Session["OfflineStudent"] = student;
            }
            else { 
            Listing list = new Listing();
            list.module = Search.Text;
            Session["OfflineList"] = list;
            }

            Response.Redirect("~/Guest Page/Login.aspx");

        }

        
    }
}