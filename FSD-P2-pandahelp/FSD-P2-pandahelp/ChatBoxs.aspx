<%@ Page MaintainScrollPositionOnPostback=true Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ChatBoxs.aspx.cs" Inherits="FSD_P2_pandahelp.ChatBoxs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
 
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
     <div class="container-fluid">
         
      <div class="ms-body"> 
          <div class="listview lv-message"> 
             <div class="lv-header-alt clearfix"> 
               <div id="ms-menu-trigger"> 
                 <div class="line-wrap"> 
                   <div class="line top">
                   </div>
                   <div class="line center"></div>
                   <div class="line bottom"></div>
                 </div>
                </div>
                <div class="lvh-label hidden-xs"> 
                    <div class="lv-avatar pull-left">
                        <asp:Image ID="Image3" runat="server" />
                    </div>
                    <span class="c-black">
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label></span> 
                </div>
               </div>
               
               <div class="lv-body" id="dvScroll" style="overflow:scroll; overflow-x: hidden; height:520px;">
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
                         <br /><br />
                    </ContentTemplate>
                    </asp:UpdatePanel>
               </div>
                   
           </div>

     </div>
    <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button1" runat="server" class="btn btn-outline-primary" Text="Send" OnClick="btnSend_Click1" />
         <div class="container-sidebar">
             <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
         </div>
   </div> 
    
</asp:Content>
