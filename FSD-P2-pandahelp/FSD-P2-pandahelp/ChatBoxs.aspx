<%@ Page MaintainScrollPositionOnPostback=true Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ChatBoxs.aspx.cs" Inherits="FSD_P2_pandahelp.ChatBoxs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 773px;
        }
          #dvScroll::-webkit-scrollbar-track{background-color:#CCCCCC;}
          #dvScroll::-webkit-scrollbar{width: 7px;background-color: #F5F5F5;}
          #dvScrollr::-webkit-scrollbar-thumb{background-color:#eeeeee;-webkit-box-shadow: inset 0 0 0px rgba(0,0,0,0.3);}
        .ms-new{box-shadow:0 2px 5px rgba(0,0,0,0.16),0 2px 10px rgba(0,0,0,0.12); background-color:#2196f3;}
    </style>
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                         <table class="auto-style2">
                           <tr>   
                               <td>
                                   <div class="card m-b-0" id="messages-main" style="box-shadow:0 0 40px 1px #c9cccd;">
                          <div class="ms-menu" style="overflow:scroll; overflow-x: hidden;" id="ms-scrollbar"> 
                              <div class="listview lv-user m-t-20">
                                 <asp:DataList ID="DataList1" runat="server" OnItemDataBound="DataList1_ItemDataBound">
                                     <ItemTemplate>
                                          
                                      </ItemTemplate>
                                  </asp:DataList>                                                                    
                              </div>
                              </div>
                          </div>
                               </td>
                               <td>

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
                                                   
                                                   <span class="c-black">
                                                       <asp:Label ID="Label2" runat="server" Text=""></asp:Label><span style="margin-left: 8px; position: absolute; margin-top: 12px; width: 8px; height: 8px; line-height: 8px; border-radius: 50%; background-color: #80d3ab;"></span></span>
                                               </div>
                                               <%--<ul class="lv-actions actions list-unstyled list-inline"> <li> <a href="#" > <i class="fa fa-check"></i> </a> </li><li> <a href="#" > <i class="fa fa-clock-o"></i> </a> </li><li> <a data-toggle="dropdown" href="#" > <i class="fa fa-list"></i></a> <ul class="dropdown-menu user-detail" role="menu"> <li> <a href="">Latest</a> </li><li> <a href="">Oldest</a> </li></ul> </li><li> <a data-toggle="dropdown" href="#" data-toggle="tooltip" data-placement="left" title="Tooltip on left"><span class="glyphicon glyphicon-trash"></span></a> <ul class="dropdown-menu user-detail" role="menu"> <li> <a href="">Delete Messages</a> </li></ul> </li></ul>--%>
                                           </div>
                                           <div class="lv-body" id="dvScroll" style="overflow: scroll; overflow-x: hidden; height: 520px;">
                                               <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                                               <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                   <Triggers>
                                                       <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                                   </Triggers>
                                                   <ContentTemplate>
                                                       <asp:DataList ID="ChatBox" runat="server" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                                                           <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                                                           <ItemTemplate>
                                                               <div class="lv-item media">
                                                                   <div class="lv-avatar pull-left"></div>
                                                                   <div class="media-body">
                                                                       <div class="ms-item">
                                                                           <asp:Label ID="Message" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                                                                       </div>
                                                                       <small class="ms-date">
                                                                           <asp:Label ID="Date" runat="server" Text='<%# formattedDate(Eval("TimeSent")) %>'></asp:Label></small>
                                                                   </div>
                                                               </div>
                                                           </ItemTemplate>
                                                       </asp:DataList>
                                                   </ContentTemplate>
                                               </asp:UpdatePanel>
                                           </div>

                                           <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
                                           <asp:Button ID="Button1" runat="server" class="btn btn-outline-primary" Text="Send" OnClick="btnSend_Click1" />
                                           <div class="container-sidebar">
                                               <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                           </div>
                                       </div>
                                   </div>
                               </td> 
                               
                           </tr>
     </table>
</asp:Content>
