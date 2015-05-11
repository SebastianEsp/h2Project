using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlService sqlService = new SqlService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loggedIn"]!=null)
        {
            login_Label.InnerText = "Logout";
            login_Button.Visible = false;
            signup_Button.Visible = false;
            username_TextBox.Visible = false;
            password_TextBox.Visible = false;
        }
    }

    protected void signup_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }

    protected void login_Button_Click(object sender, EventArgs e)
    {
        string salt = sqlService.getSalt(username_TextBox.Text);
        string pass = salt + password_TextBox.Text;
        string hashedPass = Crypto.Hash(pass);

        if (hashedPass == sqlService.getPassword(username_TextBox.Text))
        {
            error_Label.Visible = false;
            Session["loggedIn"] = username_TextBox.Text;
            Response.Redirect("default.aspx");
        }
        else
        {
            error_Label.Visible = true;
        }
    }
}