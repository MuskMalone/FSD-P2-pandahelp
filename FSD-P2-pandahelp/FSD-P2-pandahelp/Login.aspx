<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FSD_P2_pandahelp.Login" %>
 <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" rowspan="3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtEmail" runat="server" BackColor="#FFFFCC" TextMode="Email" ToolTip="e-mail address"></asp:TextBox>
                    <br />
                    Password:<br />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="#FFFFCC"></asp:TextBox>
                    <br />
      
                    <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#3399FF" Font-Bold="True" ForeColor="White" Height="30px" Width="80px" OnClick="btnLogin_Click" />
&nbsp;
&nbsp;<asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
     </form>

