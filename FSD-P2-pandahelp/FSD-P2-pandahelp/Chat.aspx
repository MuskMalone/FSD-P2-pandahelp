<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="FSD_P2_pandahelp.Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Name:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    Title:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    Message:
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="138px" Width="283px"></asp:TextBox>
    <br />
    <asp:Button ID="btnResolved" runat="server" Text="Resolved" />
    <br />
&nbsp;
</asp:Content>
