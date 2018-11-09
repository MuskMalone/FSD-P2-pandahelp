<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeMenu.ascx.cs" Inherits="FSD_P2_pandahelp.HomeMenu" %>

<nav class="navbar navbar-expand-md bg-light navbar-light">
    <a class="navbar-brand" href="HomePage.aspx"
        style="font-size:32px; font-weight:bold; color:#3399FF;">
        <img src="~/Images/pandahelp.jpg" alt="Site Logo" style="height:25px; width: 25px" />
        pandahelp
    </a>

    <button class="navbar-toggler" type="button"
        data-toggle="collapse" data-target="#Navbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div>

    </div>
    <div class="collapse navbar-collapse" id="Navbar">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="HomePage.aspx">Home</a>
            </li>
            <span class="divider">|</span>
            <li class="nav-item">
                <a class="nav-link" href="Listings.aspx">Listings</a>
            </li>
            <span class="divider">|</span>
            <li class="nav-item">
                <a class="nav-link" href="Modules.aspx">Modules</a>
            </li>
            <span class="divider">|</span>
            <li class="dropdown">
                    <a class="dropdown-toggle" role="button" aria-expanded="false" data-toggled="dropdown"><img src="~/Images/user.png" alt="Profile Logo" style="height:25px; width: 25px" /></a>
                <ul class="dropdown-menu" role="menu">
                    <li>Profile</li>
                    <li><a href="ProfilePage.aspx">Edit Profile</a></li>
                    <li><a href="ChangePassword.aspx">Change Password</a></li>
                    <li><asp:Button ID="btnLogOut" runat="server" Text="LogOut" CssClass="btn btn-link nav-link" OnClick="btnLogOut_Click"></asp:Button></li>
                </ul>
                </li>
        </ul>
    </div>
</nav>