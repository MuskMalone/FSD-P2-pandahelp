<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.ascx.cs" Inherits="FSD_P2_pandahelp.MainMenu" %>

<nav class="navbar navbar-expand-md bg-light navbar-light">
    <a class="navbar-brand" href="MainPage.aspx"
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
            
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <asp:Button ID="btnLogIn" runat="server" Text="Log In"
                    CssClass="btn btn-link nav-link" OnClick="btnLogIn_Click" Height="30px" Width="68px" />
            </li>
            <li class="nav-item">
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up"
                    CssClass="btn btn-link nav-link" OnClick="btnSignUp_Click" Height="30px" />
            </li>
        </ul>
    </div>
</nav>