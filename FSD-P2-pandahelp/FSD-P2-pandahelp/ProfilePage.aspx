<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="FSD_P2_pandahelp.ProfilePage" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 250px;
        }
        .auto-style3 {
            width: 250px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 180px;
        }
        .auto-style6 {
            width: 180px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">Update Profile</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" rowspan="6">
                <asp:Image ID="studImg" runat="server" ImageAlign="Middle" />
                <br />
                <asp:FileUpload ID="imgUpload" runat="server" Height="27px" />
                </td>
            <td class="auto-style5">
                Name:</td>
            <td>
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Personal Email:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPersonalEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txt" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style6"></td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnChangePass" runat="server" OnClick="btnChgnPass_Click" Text="Change Password" />
            </td>
        </tr>
    </table>
</asp:Content>
