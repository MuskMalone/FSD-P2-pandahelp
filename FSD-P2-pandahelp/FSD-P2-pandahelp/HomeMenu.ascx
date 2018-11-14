<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeMenu.ascx.cs" Inherits="FSD_P2_pandahelp.HomeMenu" %>
<style>
.dropbtn {
    background-color: transparent;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ffd1ce;}

.dropdown:hover .dropdown-content {display: block;}

</style>
<nav class="navbar navbar-expand-md bg-light navbar-light">
    <nav class="navbar navbar-default" role="search">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" style="font-weight:bold; color:#FFDAB9;" href="HomePage.aspx"><img src="/Images/pandahelp.jpg" alt="Site Logo" style="height:60px; width: 60px" />pandahelp</a>
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
                        <button type="submit" class="btn btn-default"><img src="/Images/search.png" style="height:20px; width: 20px" /></button>
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
                <a class="nav-link" href="~/Listing_Pages/ViewListings.aspx">Listings</a>
            </li>
            <span class="divider">|</span>
            <li class="nav-item">
                <a class="nav-link" href="Modules.aspx">Modules</a>
            </li>
            <span class="divider">|</span>
            <div class="dropdown">
              <button class="dropbtn">
                  <img src="/Images/user.png" alt="Profile Logo" style="height:25px; width: 25px" />
              </button>
              <div class="dropdown-content">
                <a href="ProfilePage.aspx">Edit Profile</a>
                <a href="ChangePassword.aspx">Change Password</a>
                <a href="Login.aspx">Log out</a>
              </div>
            </div>
            <!--li class="dropdown">
                    <a class="dropdown-toggle" role="button" aria-expanded="false" data-toggled="dropdown"><img src="Images/user.png" alt="Profile Logo" style="height:25px; width: 25px" /></a>
                <ul class="dropdown-menu" role="menu">
                    <li>Profile</li>
                    <li><a href="ProfilePage.aspx">Edit Profile</a></li>
                    <li><a href="ChangePassword.aspx">Change Password</a></li>
                    <li><asp:Button ID="btnLogOut" runat="server" Text="LogOut" CssClass="btn btn-link nav-link" OnClick="btnLogOut_Click"></asp:Button></li>
                </ul>
                </li-->
        </ul>
    </div>
</nav>