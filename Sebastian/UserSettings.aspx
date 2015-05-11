<%@ Page Title="ændre dine oplysninger" Language="C#" MasterPageFile="~/ContentMaster.master" AutoEventWireup="true" CodeFile="UserSettings.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderDefault" Runat="Server">
    <link href="layout/styles/style.css" rel="stylesheet" />
    <div class="wrapper col1">
        <div id="topbar" class="clear">
            <ul id="topnav">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="pages/style-demo.html">Style Demo</a></li>
                <li><a href="pages/full-width.html">Full Width</a></li>
                <li><a href="#">test</a>
                <ul>
                    <li><a href="#">Link 1</a></li>
                    <li><a href="#">Link 2</a></li>
                    <li><a href="#">Link 3</a></li>
                </ul>
                </li>
                <li><a href="pages/portfolio.html">Portfolio</a></li>
                <li class="last"><a href="pages/gallery.html">Gallery</a></li>
            </ul>    
            <ul id="Ul1" class="right">
                <li><a href="#">Login</a></li>
            </ul>
        <form action="#" method="post" id="search">
            <fieldset>
            <legend>Site Search</legend>
            <input type="text" value="Search Our Website&hellip;" onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
            <input type="image" id="go" src="layout/images/search.gif" alt="Search" />
            </fieldset>
        </form>

        </div>
    </div>
    
<div id="left">
      <div id="logo">
        <p>Profil Indstillinger</p>
      </div>
      <div id="nav">
        <ul>
         
          <li><a href="http://localhost:1168/h2Project2/Default3.aspx">Vis og ændre dine oplysninger</a></li>
          <li><a href="http://localhost:1168/h2Project2/Default4.aspx">Skriv til andre</a></li>
          <li><a href="">Film preference</a></li>
          <li><a href="">Andet</a></li>
          </ul>
      </div>
    </div>

    <form method="post" runat="server">
    <div id="Rediger">
        
  <div id="Rediger op">

      <br />

     <h3> <asp:Label ID="oplysinger1" runat="server" Text="Skift oplysinger" ForeColor="White"></asp:Label> </h3>
      <br />
      <asp:Label ID="email_navn" runat="server" Text="Email" ForeColor="White"></asp:Label>
        <br />
      <asp:TextBox ID="email_skift" runat="server"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="brugernavn_navn" runat="server" Text="Brugernavn" ForeColor="White"></asp:Label>
      <br />
      <asp:TextBox ID="brugernavn_skift" runat="server"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="password_navn1" runat="server" Text="Nuværende password" ForeColor="White"></asp:Label>
      <br />
      <asp:TextBox ID="password_skift1" TextMode="Password" runat="server"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="password_navn2" runat="server" Text="Nyt password" ForeColor="White"></asp:Label>
      <br />
      <asp:TextBox ID="password_skift2" TextMode="Password" runat="server"></asp:TextBox>
      <br />
      <br />
      <asp:Button ID="edit_info" runat="server" Text="Bekræft" OnClick="edit_info_Click" />
      
      
      
  </div>
        
    </div>
   
     <div id="Oplysinger">
         <div id="Oplysinger op">
             
             <br />
             <h3> <asp:Label ID="oplysinger2" runat="server" Text="Dine oplysinger" ForeColor="White"></asp:Label> </h3>
             <br />
             <br />
             
             
         <asp:textbox ID="dine_oplysninger" runat="server" Wrap="true" TextMode="MultiLine" Height="209px" Width="187px"></asp:textbox>
         </div>
         </div>
    
   </form>
    
</asp:Content>

