<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FSD_P2_pandahelp.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            text-align: center;
            width: 170px;
        }
        .auto-style5 {
            text-align: center;
            width: 16px;
        }
        .auto-style6 {
            width: 16px;
        }
        .auto-style7 {
            height: 32px;
            width: 16px;
        }
        .auto-style8 {
            width: 135px;
        }
        .auto-style9 {
            height: 32px;
            width: 135px;
        }
        .auto-style10 {
            width: 575px;
        }
        .auto-style11 {
            height: 32px;
            width: 575px;
        }
        .auto-style12 {
            width: 170px;
        }
        .auto-style13 {
            height: 32px;
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="text-center" colspan="2"><strong>
                <br />
                Registration</strong></td>
            <td class="auto-style5">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">User ID</td>
            <td class="auto-style8">Name</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">
    <asp:TextBox ID="txtUserID" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID="txtName" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">Year in-take</td>
            <td class="auto-style9">Course</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
    <asp:TextBox ID="txtYear" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style9">
    <asp:TextBox ID="txtCOS" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style11">Contact Hp</td>
            <td class="auto-style9">Contact Email</td>
            <td class="auto-style7"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
    <asp:TextBox ID="txtContactHp" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style9">
    <asp:TextBox ID="txtContactEmail" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">Description</td>
            <td class="auto-style9">Email</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
    <asp:TextBox ID="txtSDescription" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style9">
    <asp:TextBox ID="txtEmail" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">Skillset</td>
            <td class="auto-style9">Profile Picture</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
    <asp:TextBox ID="txtSkillset" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style9">
    <asp:TextBox ID="txtProfilePic" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">Password</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
    <asp:TextBox ID="txtUserPassword" runat="server" placeholder=""></asp:TextBox>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style11">
                <br />
<asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click1" />
&nbsp;<asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
    <br />
<br />
</asp:Content>
