<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="FSD_P2_pandahelp.Menu" %>

<nav class="navbar navbar-expand-md bg-light navbar-light">
    <a class="navbar-brand" href="Main.aspx"
        style="font-size:32px; font-weight:bold; color:#3399FF;">
        pandahelp
    </a>

    <button class="navbar-toggler" type="button"
        data-toggle="collapse" data-target="#staffNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="staffNavbar">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="AddStaff.aspx">Add Staff</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ViewStaff.aspx">View Staff</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ViewBranch.aspx">View Branch</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="RentalCalculator.aspx">Rental Calculator</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="FineCalculator.aspx">Fine Calculator</a>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <asp:Button ID="btnLogOut" runat="server" Text="Log Out"
                    CssClass="btn btn-link nav-link" />
            </li>
        </ul>
    </div>
</nav>