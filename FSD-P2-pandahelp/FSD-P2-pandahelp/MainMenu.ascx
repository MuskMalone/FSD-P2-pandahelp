<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.ascx.cs" Inherits="FSD_P2_pandahelp.MainMenu" %>

<style type="text/css">
    .auto-style1 {
        width: 17px;
        height: 18px;
        }
</style>

<nav class="navbar navbar-expand-md bg-light navbar-light">
    <nav class="navbar navbar-default" role="search">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" style="font-weight:bold; color:#FFDAB9;" href="MainPage.aspx"><img src="Images/pandahelp.jpg" alt="Site Logo" style="height:60px; width: 60px" />pandahelp</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                <form class="navbar-form navbar-left" role="search"> 
                    <span class="input-group-addon searchbar-input-addon">
                        <i class="fa fa-caret-down searchbar-select-icon"></i>
                            <select class="searchbar-select form-control" name="context">
                                <option selected="" value="LISTINGS">Listings</option>
                                <option value="USERS">Users</option>
                            </select>
                    </span>
<!-- navbar-form to include form, nafbar-left to align left -->
                    <input type="text" class="form-control" placeholder="Search for listings or users">
                        <button type="submit" class="btn btn-default"><img src="Images/search.png" style="height:20px; width: 20px" /></button>
                </form>
            </div>
        
        </div><!-- container-fluid -->
    </nav>

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
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <asp:Button ID="btnLogIn" runat="server" Text="Log In"
                    CssClass="btn btn-link nav-link" OnClick="btnLogIn_Click" Height="30px" Width="68px" />
            </li>
        </ul>
    </div>
</nav>