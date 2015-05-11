using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class Default3 : System.Web.UI.Page
{
    SqlService sqlService = new SqlService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loggedIn"] != null)
        {

        }
    }
    protected void edit_info_Click(object sender, EventArgs e)
    {
        string salt = sqlService.getSalt(Session["loggedIn"].ToString());
        string pass = salt + password_skift1.Text;
        string hashedPass = Crypto.Hash(pass);


        if (email_skift.Text != "")
        {
            sqlService.updateEmail(email_skift.Text, Session["loggedIn"].ToString());
            dine_oplysninger.Text += "Email successfully changed to " + email_skift.Text + Environment.NewLine + Environment.NewLine;
        }
        if (brugernavn_skift.Text != "")
        {
            sqlService.updateUsername(Session["loggedIn"].ToString(), brugernavn_skift.Text);
            dine_oplysninger.Text += "Username Successfully changed to " + brugernavn_skift.Text + Environment.NewLine + Environment.NewLine;
        }
        if (password_navn1.Text != "")
        {
            if (hashedPass == sqlService.getPassword(Session["loggedIn"].ToString()))
            {
                pass = salt + password_skift2.Text;
                hashedPass = Crypto.Hash(pass);
                sqlService.updatePassword(Session["loggedIn"].ToString(), hashedPass);
                dine_oplysninger.Text += "Your password was successfully updated";
            }
        }
    }
}