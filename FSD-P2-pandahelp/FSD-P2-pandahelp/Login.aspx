<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FSD_P2_pandahelp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
    <div>
    </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style12" rowspan="3">
                    <asp:GridView ID="gvPublicView" runat="server" AutoGenerateColumns="False" Height="322px" Width="871px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="Photo" DataImageUrlFormatString="../img/Students/{0}" HeaderText="Photo">
                                <ControlStyle Height="100px" Width="100px" />
                                <ItemStyle Width="10px" Wrap="True" />
                            </asp:ImageField>
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:HyperLinkField DataNavigateUrlFields="StudentID" DataNavigateUrlFormatString="PublicView.aspx?studentid={0}" ShowHeader="False" Text="View Portfolio" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style11" rowspan="3">&nbsp;</td>
                <td class="auto-style5">
                    <table style="border: 1px solid #000000; margin: auto; width: auto">
            <tr>
                <td style="vertical-align: top; " class="auto-style2">
                    <asp:Image ID="projectLogo" runat="server" ImageUrl="~/img/WEBLOGO.png" Height="155px" Width="191px" />
                </td>
                <td class="auto-style9">Login ID:<br />
                    <asp:TextBox ID="txtLoginID" runat="server" BackColor="#FFFFCC" TextMode="Email" ToolTip="e-mail address"></asp:TextBox>
                    <br />
                    Password:<br />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="#FFFFCC"></asp:TextBox>
                    <br />
                    <asp:RadioButton ID="rdoSystem" runat="server" Checked="True" GroupName="Users" Text="System Admin" />
                    <br />
                    <asp:RadioButton ID="rdoStudent" runat="server" GroupName="Users" Text="Student" />
                    <br />
                    <asp:RadioButton ID="rdoParent" runat="server" GroupName="Users" Text="Parent" />
                    <asp:RadioButton ID="rdoMentor" runat="server" GroupName="Users" Text="Mentor" />
                    <br />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#3399FF" Font-Bold="True" ForeColor="White" Height="30px" Width="80px" OnClick="btnLogin_Click" />
&nbsp;
                    <asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#3399FF" Font-Bold="True" ForeColor="White" Height="31px" Width="88px" OnClick="btnRegister_Click" />
&nbsp;<asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center" class="auto-style10">
                    Welcome to NP</td>
            </tr>
        </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
