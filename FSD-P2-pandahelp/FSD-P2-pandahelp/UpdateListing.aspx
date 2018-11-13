<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="UpdateListing.aspx.cs" Inherits="FSD_P2_pandahelp.UpdateListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <asp:GridView ID="gvListing" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ListingID" HeaderText="ListingID" />
                <asp:BoundField DataField="title" HeaderText="title" />
                <asp:BoundField DataField="description" HeaderText="description" />
                <asp:BoundField DataField="ModuleNo" HeaderText="ModuleNo" />
                <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" />
                <asp:BoundField DataField="UserProfileID" HeaderText="UserProfileID" />
                <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" />
                <asp:BoundField DataField="ResolvedStatus" HeaderText="ResolvedStatus" />
                <asp:HyperLinkField DataNavigateUrlFields="ListingID" DataNavigateUrlFormatString="~\Chat.aspx?ListingID={0}" NavigateUrl="~/Chat.aspx" Text="Solve" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <br />
    </asp:Content>
