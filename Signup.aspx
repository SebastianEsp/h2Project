<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="smallWrapper col1 center">
        <div class="clear">
            
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
                <asp:Button ID="createUser_Button" runat="server" Text="Create user" OnClick="createUser_Button_Click"/> <asp:Button ID="btn_cancel" runat="server" Text="Cancel" OnClick="btn_cancel_Click"/><br /><br />
                <asp:Label ID="error_Label" Text="The passwords must match" Visible="false" runat="server"></asp:Label>
            </div>
       
        </div>
    </div>   
</asp:Content>

