<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" EnableEventValidation = "false" AutoEventWireup="true" CodeBehind="AcceptRejectOffer.aspx.cs" Inherits="FSD_P2_pandahelp.AcceptRejectOffer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            margin-right: 740px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 482px;
        }
        .auto-style7 {
            width: 313px;
        }
        .auto-style8 {
            width: 482px;
            text-align: center;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 313px;
            height: 151px;
        }
        .auto-style12 {
            width: 482px;
            height: 151px;
            text-align: left;
        }
        .auto-style13 {
            height: 151px;
        }
        .auto-style14 {
            width: 313px;
            height: 32px;
        }
        .auto-style15 {
            width: 482px;
            height: 32px;
        }
        .auto-style16 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:DataList ID="DLOfferList" runat="server" margin-right="-500px;" CssClass="auto-style3" Width="100%" text="Accept" OnItemCommand="DLOfferList_ItemCommand">
            <HeaderTemplate>
                <div class="auto-style10">
                    <strong><span class="auto-style9">
                    <br />
                    Accept the offer Now!</span></strong></div>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">
                            <br />
                            <br />
                            <br />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Image ID="imgUserProfile" runat="server" ImageUrl=<%# "Images/" + Eval("ProfilePic") %> Width="30%" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style15">Name:<asp:Label ID="lblName0" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                        <td class="auto-style16"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">Module:<asp:Label ID="lblModule0" runat="server" Text='<%# Eval("ModuleNo") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">Description</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtDescription" runat="server" Height="143px" OnTextChanged="txtDescription_TextChanged" Text='<%# Eval("description") %>' Width="451px" BorderStyle="Double" Columns="10" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="auto-style13"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">
                            <br />
                            <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName ="viewdetail" CommandArgument = '<%# Eval("ListingID") %>' OnClick="btnReject_Click" PostBackUrl ='<%# string.Format("AcceptRejectOffer.aspx?ListingID={0}", Eval("ListingID")) %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
