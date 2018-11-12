<%@ Page Title="" Language="C#" MasterPageFile="~/Guest Page/Guest.Master" AutoEventWireup="true" CodeBehind="GuestViewlisting.aspx.cs" Inherits="FSD_P2_pandahelp.Guest_Page.GuestViewlisting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style1 {
            width: 222px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div align="center">
        <table class="auto-style1">
        <tr>
            <td>Title</td>
            <td>
                <asp:Label ID="lblTitle" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Module</td>
            <td>
                <asp:Label ID="lblModule" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Student(s)</td>
            <td class="auto-style5">
                <asp:Label ID="lblStudents" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Description</td>
            <td class="auto-style4">
                <asp:Label ID="lblDesc" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"colspan="2">
                &nbsp;</td>

        </tr>
        </table>
</div>
                <asp:Label ID="username" runat="server"></asp:Label>
    <asp:Label ID="payment" runat="server"></asp:Label>
                <asp:Label ID="title" runat="server"></asp:Label>
</asp:Content>
