<%@ Page MaintainScrollPositionOnPostback=true Title="" Language="C#" MasterPageFile="~/pandahelp.Master" AutoEventWireup="true" CodeBehind="ChatBoxs.aspx.cs" Inherits="FSD_P2_pandahelp.ChatBoxs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="container-fluid"> 
                 <div class="container ng-scope"> 
                    <div class="card mb-0" id="messages-main" style="box-shadow:0 0 40px 1px #c9cccd;">
                      <div class="ms-menu" style="overflow:scroll; overflow-x: hidden;" id="ms-scrollbar">
                         <hr/> 
                          <div class="listview lv-user m-t-20">
                              <asp:DataList ID="Inbox" runat="server" OnItemDataBound="DataList1_ItemDataBound">
                                     <ItemTemplate>
                                          <div class="lv-item media"> 
                                              <div class="lv-avatar pull-left"> 
                                                   <%--<img src="./images/bhai.jpg" alt=""> --%>
                                                  <asp:Image ID="Image2" runat="server" ImageUrl='<%# Formatimg(Eval("ProfilePic")) %>' />
                                              </div>
                                                <div class="media-body"> 
                                                  <div class="lv-title">
                                         <asp:Label ID="Name" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                          <asp:Label ID="title" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                                          </div>
                                        </div>
                                        </div>     
                                      </ItemTemplate>
                              </asp:DataList>                                                                    
                          </div>
                     </div>
                  
                <div class="ms-body">
                      <div class="listview lv-message">
                         <div class="lv-header-alt clearfix">
                            <div id="ms-menu-trigger">
                               <div class="line-wrap">
                                   <div class="line top"></div>
                                   <div class="line center"></div>
                                   <div class="line bottom"></div>
                               </div>
                           </div>                           
                        </div>
                        <div class="lv-body" id="ms-scrollbar" style="overflow: scroll; overflow-x: hidden; height: 520px;">
                            <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <Triggers><asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" /></Triggers>
                            <ContentTemplate>
                              <asp:DataList ID="ChatBox" runat="server">
                                 <ItemTemplate>
                                      <div class="lv-item media"> 
                                        <div class="media-body">
                                           <div class="ms-item">
                                              <asp:Label ID="Message" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                                           </div>
                                           <small class="ms-date"><asp:Label ID="Date" runat="server" Text='<%# formattedDate(Eval("TimeSent")) %>'></asp:Label></small>
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
                             <asp:Label CssClass="Label3" ID="Label3" runat="server" Text="Label"></asp:Label>
                             </div>
                         </div>                 
                  </div>
                  </div>     
              </div>
          </div>
</asp:Content>