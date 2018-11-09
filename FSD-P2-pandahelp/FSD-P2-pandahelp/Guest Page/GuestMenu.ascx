<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GuestMenu.ascx.cs" Inherits="FSD_P2_pandahelp.GuestMenu" %>
<nav class="navbar navbar-expand-md bg-light navbar-light">
    &nbsp;&nbsp; 
    <a class="navbar-brand" href="StudentHome.aspx"
        style="font-size:32px; font-weight:bold; color:#3399FF;">
        ABC e-Portfolio
    </a>
   
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#staffNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="staffNavbar">
        <ul class="navbar-nav mr-auto">
             <li class="nav-item">
                  <br />
                <asp:TextBox ID="Search" runat="server" BackColor="#FFFFCC" ></asp:TextBox>
            </li>
            <li class="nav-item">
                 <br />
               <asp:Button ID="btnSeacrh" runat="server" Text="search" BackColor="#3398FF" Font-Bold="True" ForeColor="White" Height="30px" Width="80px" OnClick="btnSearch_Click" />
                 &nbsp;&nbsp;
            </li>
            <li class="nav-item" >
               
                <table>
                    <tr>
                        <td class="auto-style9">School email:<br /><asp:TextBox ID="txtEmail" runat="server" BackColor="#FFFFCC" TextMode="Email" ToolTip="e-mail address"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Password:<br /><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="#FFFFCC"></asp:TextBox></td>
                    </tr>
                 </table>
            </li>

            <li class="nav-item">
                <br />&nbsp;&nbsp; <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#3399FF" Font-Bold="True" ForeColor="White" Height="30px" Width="80px" OnClick="btnLogin_Click" />
            </li>

            <li class="nav-item">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></td>
            </li>
           
           
        </ul>
    </div>
    </nav>