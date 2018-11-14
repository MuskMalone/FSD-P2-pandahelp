<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="CreateListing.aspx.cs" Inherits="FSD_P2_pandahelp.Listing_Pages.CreateListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Title</td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Description</td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Module</td>
            <td>
                <asp:DropDownList ID="ddlModule" runat="server">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Payment</td>
            <td>
                <asp:DropDownList ID="ddlPayment" runat="server">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create Listing" />
            </td>
        </tr>
    </table>
</asp:Content>
