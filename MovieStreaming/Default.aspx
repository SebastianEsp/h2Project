<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ul id="login_box">
        <li><asp:Textbox CssClass="input" ID="username_TextBox" placeholder="Username" runat="server"/></li>
        <li><asp:TextBox CssClass="input" ID="password_TextBox" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox></li>
        <li><asp:Button CssClass="button" ID="login_Button" Text="Login" runat="server" OnClick="login_Button_Click"/></li>
        <li><asp:Button CssClass="button" ID="signup_Button" Text="Signup" runat="server" OnClick="signup_Button_Click"/></li>
        <li><asp:Label ID="error_Label" Visible="false" runat="server" Text="The username or password does not match"></asp:Label></li>
    </ul>
    <a onclick="__doPostBack('FilterMovieList', 'Action');">Action</a>
    <asp:UpdatePanel runat="server" id="FilterMovieList" updatemode="Conditional" OnLoad="FilterMovieList_Load">                        
                        <ContentTemplate>
                            <asp:ListView ID="Movie_LV" runat="server">
                            
                            <LayoutTemplate>
                                <ul>
                                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                </ul>
                            </LayoutTemplate>
                            <ItemTemplate>  
                                    
                                <li runat="server" Visible='<%# Convert.ToInt32(Eval("last")) == 0 %>'><a href="#" title="<%#Eval("title") %>"><img src="<%#Eval("cover") %>" alt="Picture couldn't load." /></a></li>
                                <li runat="server" Visible='<%# Convert.ToInt32(Eval("last")) == 1 %>' class="last"><a href="#" title="<%#Eval("title") %>"><img src="<%#Eval("cover") %>" alt="Picture couldn't load." /></a></li>                                
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <div>
                                    Sorry no movies found.
                                </div>
                            </EmptyDataTemplate>
                                
                        
                        </asp:ListView> 
                        </ContentTemplate>                         
                    </asp:UpdatePanel> 
</asp:Content>

