<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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

