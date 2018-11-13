<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FSD_P2_pandahelp.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="text-center">
    <asp:GridView ID="gvListing" runat="server" AllowSorting="true" OnSorting="SortListings" HorizontalAlign="Center" RowStyle-CssClass="hoverRow" CellPadding="4" ForeColor="#333333" GridLines="None" Width="970px" AutoGenerateColumns="False" OnSelectedIndexChanged="gvListing_SelectedIndexChanged">
        <Columns>
            <asp:HyperLinkField HeaderText="Title" DataTextField="title" DataNavigateUrlFields="ListingID,UserProfileID" DataNavigateUrlFormatString="ListingDetails.aspx?listingid={0}&amp;userprofileid={1}" >
            <ControlStyle ForeColor="Black" />
            <ItemStyle ForeColor="Black" />
            </asp:HyperLinkField>
            <asp:HyperLinkField HeaderText="Module" DataTextField="ModuleName" DataNavigateUrlFields="ModuleNo" DataNavigateUrlFormatString="ModuleSort.aspx?moduleno={0}" >
            <ControlStyle ForeColor="Black" />
            </asp:HyperLinkField>
            <asp:BoundField HeaderText="DatePosted" DataField="DateCreated" >
            <ControlStyle Width="50px" />
            </asp:BoundField>
        </Columns>
        <EmptyDataTemplate>
            <div class="text-center">
                No listings at the moment!
            </div>
        </EmptyDataTemplate>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#ff766d" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
<RowStyle CssClass="hoverRow"></RowStyle>
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#ff766d" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
    </tr>
</table>
</asp:Content>
