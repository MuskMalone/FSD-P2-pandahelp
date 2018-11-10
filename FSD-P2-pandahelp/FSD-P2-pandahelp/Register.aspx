<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FSD_P2_pandahelp.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Module<br />
    <asp:TextBox ID="txtModuleName" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    UserProfile<br />
    <asp:TextBox ID="txtUserID" runat="server" placeholder="ModuleName" OnTextChanged="txtUserID_TextChanged"></asp:TextBox>
    <asp:TextBox ID="txtName" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtYear" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtCOS" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtContactHp" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtContactEmail" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtSDescription" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtEmail" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtSkillset" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtProfilePic" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtPoint" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtUserPassword" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    Payment<br />
    <asp:TextBox ID="txtModeofPayment" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtShortDesc" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    Listing<br />
    <asp:TextBox ID="txtModeofPayment0" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtModeofPayment1" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtModeofPayment2" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtModeofPayment3" runat="server" placeholder="ModuleName"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtModeofPayment4" runat="server" placeholder="ModuleName"></asp:TextBox>
    <asp:TextBox ID="txtModeofPayment5" runat="server" placeholder="ModuleName"></asp:TextBox>
<br />
<asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
</asp:Content>
