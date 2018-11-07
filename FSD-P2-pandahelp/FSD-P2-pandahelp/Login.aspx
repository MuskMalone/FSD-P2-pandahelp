<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FSD_P2_pandahelp.Login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
    <table style="border: 1px solid #000000; margin: auto; width: auto">
        <tr>
            <td class="auto-style9">School email:<br />
                <asp:TextBox ID="txtEmail" runat="server" BackColor="#FFFFCC" TextMode="Email" ToolTip="e-mail address"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td class="auto-style9">Password:<br /><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="#FFFFCC"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style11" rowspan="3"><br />
                   
                    </td>
            <td class="auto-style5">
                    <br />&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td  class="auto-style9"><br />
                    
                    
      
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
    </body>

