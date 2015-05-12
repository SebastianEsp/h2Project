<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="wrapper col1">
        <div id="topbar" class="clear">
            <ul id="topnav">                
                <li><a href="Default.aspx">Home</a></li>
                <li><a onclick="__doPostBack('<%= FilterMovieList.ClientID %>', 'Action');">Action</a></li>
                <li><a onclick="__doPostBack('<%= FilterMovieList.ClientID %>', 'Adventure');">Adventure</a></li>                                                    
            </ul>
            <ul id="topnav" class="right">               
                <li id="login_box_li"><asp:LinkButton id="LinkButton1" Text="Settings" OnClick="LinkButton1_Click" runat="server"/></li>
                <li id="login_box_ul"><a onclick="LoginClick('login_box')">Login</a> 
                    <ul id="login_box">
                        <li><asp:Textbox CssClass="input" ID="username_TextBox" placeholder="Username" runat="server"/></li>
                        <li><asp:TextBox CssClass="input" ID="password_TextBox" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox></li>
                        <li><asp:Button CssClass="button" ID="login_Button" Text="Login" runat="server" OnClick="login_Button_Click"/></li>
                        <li><asp:Button CssClass="button" ID="signup_Button" Text="Signup" runat="server" OnClick="signup_Button_Click"/></li>
                        <li><asp:Label ID="error_Label" Visible="false" runat="server" Text="The username or password does not match"></asp:Label></li>
                    </ul>
                </li>
                <li id="logud" runat="server"><asp:LinkButton id="myLink" Text="Logud" OnClick="SessionLogud" runat="server"/></li>
            </ul>            
            <%--<form action="#" method="post" id="search">
                <fieldset>
                    <legend>Site Search</legend>
                    <input type="text" value="Search Our Website&hellip;" onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
                    <input type="image" id="go" src="layout/images/search.gif" alt="Search" />
                </fieldset>
            </form>--%>

        </div>
    </div>   
    
    <%--<div class="wrapper col1">
        <div id="featured_slide" class="featured_slide">
            
            <div id="slider">
                <ul id="categories">
                    <li class="category">
                        <h2>Wedding Photos</h2>
                        <a href="#"><img src="images/demo/150x110.gif" alt="" /></a>
                        <p>Metuervestas mus lacinia hendrerit accumsan pretium ligula estibulum ipsum tor lobortortis. Feugiatdui et semper pellentum id in et phase llentum hac tellus dui condimentegettur eget.</p>
                        <p class="readmore"><a href="#">Read More &raquo;</a></p>
                    </li>                                             

                </ul>
                <a class="prev disabled"></a> <a class="next disabled"></a>
                <div style="clear:both"></div>
            </div>
            
        </div>
    </div>--%>
    <div class="wrapper col1">
        <div id="container" class="clear">                
            <div id="tabs-1" class="gallery clear ui-tabs-panel ui-widget-content ui-corner-bottom" aria-labelledby="ui-id-1" role="tabpanel" aria-hidden="false" style="display: block;">
                <ul>                        
                <asp:UpdatePanel runat="server" id="FilterMovieList" updatemode="Conditional" OnLoad="FilterMovieList_Load">     
                                           
                    <ContentTemplate>
                        <asp:ListView ID="Movie_LV" runat="server">
                            
                        <LayoutTemplate>
                            <ul>
                                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                            </ul>
                        </LayoutTemplate>
                        <ItemTemplate>
                                   
                            <li runat="server" Visible='<%# Convert.ToInt32(Eval("last")) == 0 %>'><a href="<%# Eval("Stream")%>"><img src="<%#Eval("cover") %>" alt="Picture couldn't load." /></a></li>
                            <li runat="server" Visible='<%# Convert.ToInt32(Eval("last")) == 1 %>' class="last"><a href="<%# Eval("Stream")%>" title="<%#Eval("title") %>"><img src="<%#Eval("cover") %>" alt="Picture couldn't load." /></a></li>                                
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <div>
                                Sorry no movies found.
                            </div>
                        </EmptyDataTemplate>
                                
                        
                    </asp:ListView> 
                    </ContentTemplate>                         
                </asp:UpdatePanel>                   
                </ul>
            </div> 
        </div>
    </div>
    <div id="copyright" class="clear">
        <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
        <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    </div>
    
</asp:Content>