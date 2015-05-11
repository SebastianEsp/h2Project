<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="wrapper col1">
        <div id="topbar" class="clear">
            <ul id="topnav">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="pages/style-demo.html">Style Demo</a></li>
                <li><a href="pages/full-width.html">Full Width</a></li>
                <li><a href="#">dropdown</a>
                <ul>
                    <li><a href="#">Link 1</a></li>
                    <li><a href="#">Link 2</a></li>
                    <li><a href="#">Link 3</a></li>
                </ul>
                </li>
                <li><a href="pages/portfolio.html">Portfolio</a></li>
                <li class="last"><a href="pages/gallery.html">Gallery</a></li>
            </ul>    
            <ul id="topnav" class="right">
                <li><a href="#">Login</a>
                    <ul>
                    </ul>
                </li>
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
    <!-- ####################################################################################################### -->
    <div class="smallWrapper col1">
        <div class="clear">
            <form method="post">
                <div">
                    <h1>Signup</h1>
                    <asp:Label ID="email_Label" runat="server" Text="E-mail Address"></asp:Label><br /><br />
                    <asp:TextBox ID="email_TextBox" runat="server"></asp:TextBox><br /><br />
                    <asp:Label ID="username_Label" runat="server" Text="Username"></asp:Label><br /><br />
                    <asp:TextBox ID="username_Textbox" runat="server"></asp:TextBox><br /><br />
                    <asp:Label ID="firstname_Label" runat="server" Text="First name"></asp:Label><br /><br />
                    <asp:TextBox ID="firstname_TextBox" runat="server"></asp:TextBox><br /><br />
                    <asp:Label ID="lastname_Label" runat="server" Text="Last name"></asp:Label><br /><br />
                    <asp:TextBox ID="lastname_TextBox" runat="server"></asp:TextBox><br /><br />
                    <asp:Label ID="password_Label" runat="server" Text="Password"></asp:Label><br /><br />
                    <asp:TextBox ID="password_TextBox" runat="server"></asp:TextBox><br /><br />
                    <asp:Label ID="checkPassword_Label" runat="server" Text="Re-enter Password"></asp:Label><br /><br />
                    <asp:TextBox ID="checkPassword_TextBox" runat="server"></asp:TextBox><br /><br />
                    <asp:Label ID="dateOfBirth_Label" runat="server" Text="Date of birth"></asp:Label><br /><br />
                    <asp:DropDownList ID="year_Dropdown" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="month_Dropdown" runat="server" AutoPostBack="true" OnSelectedIndexChanged="month_Dropdown_SelectedIndexChanged"></asp:DropDownList>
                    <asp:DropDownList ID="day_Dropdown" runat="server"></asp:DropDownList><br /><br />
                    <asp:Button ID="createUser_Button" runat="server" Text="Create user" OnClick="createUser_Button_Click"/><br /><br />
                    <asp:Label ID="error_Label" Text="The passwords must match" Visible="false" runat="server"></asp:Label>
                </div>
        </form>
        </div>
    </div>
    <div id="copyright" class="clear">
        <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
        <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    </div>    
</asp:Content>

