<%@ Page Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ChatBoxs.aspx.cs" Inherits="FSD_P2_pandahelp.ChatBoxs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
     <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
         <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
         <ContentTemplate>
             <asp:DataList ID="ChatBox" runat="server">
                 <ItemTemplate>  
                     <div class="lv-item media">     
                     <div class="media-body"> 
                       <div class="ms-item"> 
                          
                          <asp:Label ID="Message" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                         </div>
                         </div>
                       </div>
                   </ItemTemplate>
             </asp:DataList>
             <br />
             <br />
         </ContentTemplate>
     </asp:UpdatePanel>
    <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
&nbsp;
    
     <button ID="btnSend" runat="server" class="btn btn-outline-primary" OnClick="btnSend_Click1">Send</button>
    
    <br />
</asp:Content>
