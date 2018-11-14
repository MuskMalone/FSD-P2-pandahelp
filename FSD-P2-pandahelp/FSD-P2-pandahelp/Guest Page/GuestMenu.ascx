<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GuestMenu.ascx.cs" Inherits="FSD_P2_pandahelp.GuestMenu" %>

    
<nav class="navbar navbar-expand-md bg-light navbar-light">
    &nbsp;&nbsp; 
    <div class="navbar-header">
        <a class="navbar-brand" style="font-weight:bold; color:#FFDAB9;" href="MainPage.aspx"><img src="/Images/pandahelp.png" alt="Site Logo" style="height:60px; width: 60px" />pandahelp</a>
    </div>
   
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
               <asp:Button ID="btnSearch" runat="server" Text="search" BackColor="#FFDAB9" Font-Bold="True" ForeColor="#999999" Height="25px" Width="80px" OnClick="btnSearch_Click" Font-Size ="Small"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </li>
            <div class="collapse navbar-collapse" id="Navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="HomePage.aspx">Home</a>
                    </li>
                    <span class="divider">|</span>
                    <li class="nav-item">
                        <a class="nav-link" href="Listing_Pages/ViewListings.aspx">Listings</a>
                    </li>
                    <span class="divider">|</span>
                    <li class="nav-item">
                        <a class="nav-link" href="Modules.aspx">Modules</a>
                    </li>
                </ul>
            </div>
            <li class="nav-item" >
                <table>
                    <tr>
                        <td class="auto-style9" ><small>School email:</small><br /><asp:TextBox ID="txtStudentID" runat="server" BackColor="White" Height="20px" Font-Size ="Small"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><small>Password:</small><br /><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="20px" Font-Size ="Small" BackColor="White"></asp:TextBox></td>
                    </tr>
                 </table>
            </li>

            <li class="nav-item">
                <br />&nbsp;&nbsp; <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#FFDAB9" Font-Bold="True" ForeColor="#999999" Height="25px" Width="80px" Font-Size ="Small" OnClick="btnLogin_Click" />
            </li>

            <li class="nav-item">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </li>
        </ul>
    </div>
</nav>