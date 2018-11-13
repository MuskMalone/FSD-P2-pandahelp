<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GuestMenu.ascx.cs" Inherits="FSD_P2_pandahelp.GuestMenu" %>
<nav class="navbar navbar-expand-md bg-light navbar-light">
    &nbsp;&nbsp; 
    <a class="navbar-brand" href="Login.aspx"
        style="font-size:32px; font-weight:bold; color:#3399FF;">
        ABC e-Portfolio
    </a>
   
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#staffNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="staffNavbar" >
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">  
                <br />
                 <br />
                <asp:DropDownList ID="ddlSearch" runat="server" >
                    <asp:ListItem>Student Name</asp:ListItem>
                    <asp:ListItem>Module Name</asp:ListItem>
                </asp:DropDownList>
                 &nbsp;&nbsp;
                
            </li>
             <li class="nav-item">
                  <br />
                  <br />
                <asp:TextBox ID="Search" runat="server" BackColor="White" Height="25px" Width="240px" ></asp:TextBox>
            </li>
            <li class="nav-item">
                 <br />
                  <br />
               <asp:Button ID="btnSeacrh" runat="server" Text="search" BackColor="#99FFCC" Font-Bold="True" ForeColor="#999999" Height="25px" Width="80px" OnClick="btnSearch_Click" Font-Size ="Small"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </li>
            <li class="nav-item" >
                <table>
                    <tr>
                        <td class="auto-style9" ><small>School email:</small><br /><asp:TextBox ID="txtStudentID" runat="server" BackColor="White" TextMode="Email" ToolTip="e-mail address" Height="20px" Font-Size ="Small"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revStudentID" runat="server" ControlToValidate="txtStudentID" Display="Dynamic" ErrorMessage="Enter a valid Student ID" ForeColor="Red" ValidationExpression="^[S]\d{8}[A-Z]$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><small>Password:</small><br /><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="20px" Font-Size ="Small" BackColor="White"></asp:TextBox></td>
                    </tr>
                 </table>
            </li>

            <li class="nav-item">
                <br />&nbsp;&nbsp; <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#99FFCC" Font-Bold="True" ForeColor="#999999" Height="25px" Width="80px" Font-Size ="Small" OnClick="btnLogin_Click" />
            </li>

            <li class="nav-item">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </li>
           
           
        </ul>
    </div>
    </nav>