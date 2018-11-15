<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="FSD_P2_pandahelp.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ChangePassword ID="changePassForm" runat="server" CancelDestinationPageUrl="~/ChangePassword.aspx" ContinueDestinationPageUrl="~/ProfilePage.aspx">
    </asp:ChangePassword>
    <br/>
    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>
