<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="FSD_P2_pandahelp.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ChangePassword ID="changePassForm" runat="server" OnChangingPassword="OnChangingPassword" RenderOuterTable="false" NewPasswordRegularExpression="^[\s\S]{5,}$" NewPasswordRegularExpressionErrorMessage="Password must be of minimum 5 characters." CancelDestinationPageUrl="~/ProfilePage.aspx" OnChangedPassword="changePassForm_ChangedPassword" ContinueDestinationPageUrl="~/ProfilePage.aspx" BackColor="PeachPuff" BorderColor="#8B8589" BorderStyle="Double" BorderWidth="5px" Font-Names="Verdana" Font-Size="10pt">
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:ChangePassword>
    <br/>
    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>
