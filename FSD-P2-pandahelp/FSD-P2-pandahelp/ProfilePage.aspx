<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="FSD_P2_pandahelp.ProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            border: 1px solid #8B8589;
        }
        .auto-style4 {
            width: 201px;
        }
        .auto-style6 {
            width: 110px;
        }
        .auto-style7 {
            width: 110px;
            height: 27px;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            width: 100px;
        }
        .auto-style10 {
            width: 110px;
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="2" class="auto-style3">
        <tr>
            <td class="auto-style9" rowspan="19">
                <asp:Image ID="studImg" runat="server" ImageAlign="Middle" CssClass="img-fluid" />
                <br />
                <asp:FileUpload ID="imgUpload" runat="server" Height="27px" />
                </td>
            <td class="auto-style6">
                Name:</td>
            <td>
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                Year:</td>
            <td class="auto-style4">
                <asp:RadioButtonList ID="rdoYear" runat="server">
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                Course:</td>
            <td class="auto-style4">
                <asp:RadioButtonList ID="rdobtnCourse" runat="server" RepeatDirection="Horizontal">
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                Phone Number:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtHP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                Personal Email:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtPersonalEmail" runat="server" OnTextChanged="txtPersonalEmail_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style6">Self Description:</td>
            <td>
                <asp:TextBox ID="txtSelfDesc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Email:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">SkillSet:</td>
            <td>
                <asp:Label ID="lblSkillSet" runat="server"></asp:Label>
                <br />
                <asp:TextBox ID="txtSkillSet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Points:</td>
            <td>
                <asp:Label ID="lblPoints" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnChangePass" runat="server" OnClick="btnChangePass_Click" Text="Change Password" />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
