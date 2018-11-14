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
            string userID = txtStudentID.Text.ToLower(); //Textbox: txtLoginID
            string password = txtPassword.Text; //Textbox: txtPassword
            //Read selection of radio buttons
            Student objStudent = new Student();
            objStudent.userID = userID;
            if (objStudent.isIdExist() == true)
            {
                if (objStudent.GetPass() == 1)
                {
                    if (password == objStudent.password)
                    {
                        objStudent.GetDetails();
                        Session["student"] = objStudent;
                        Student objStudents = (Student)Session["student"];
                        Response.Redirect("~/Listing_Pages/ViewListings.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Incorrect Password";
                    }
                }
            }
            else
            {
                lblMessage.Text = "Invalid ID";
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