<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ListingDetails.aspx.cs" Inherits="FSD_P2_pandahelp.Listing_Pages.ListingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1157px;
            height: 229px;
        }
        .auto-style2 {
            width: 92px;
        }
        .auto-style4 {
            height: 47px;
        }
        .auto-style5 {
            height: 36px;
        }
        .auto-style6 {
            width: 107px;
        }
        .auto-style7 {
            height: 36px;
            width: 107px;
        }
        .auto-style8 {
            height: 47px;
            width: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table class="auto-style1">
        <tr>
            <td class="auto-style6">Title</td>
            <td>
                <asp:Label ID="lblTitle" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Module</td>
            <td>
                <asp:Label ID="lblModule" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Student</td>
            <td class="auto-style5">
                <asp:Label ID="lblStudent" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Payment</td>
            <td class="auto-style5">
                <asp:Label ID="lblPayment" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Description</td>
            <td class="auto-style4">
                <asp:Label ID="lblDesc" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"colspan="2">
                <asp:Button ID="btnChat" runat="server" Text="Start Chat" Width="162px" BackColor="#FF766D" BorderStyle="None" ClientIDMode="Static" EnableViewState="False" Height="34px" />
            </td>

        </tr>
        </table>

                <asp:Label ID="lblError" runat="server"></asp:Label>
                </asp:Content>
