using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlService sqlService = new SqlService();

    protected void Page_Load(object sender, EventArgs e)
    {
        password_TextBox.Attributes["type"] = "password";
        checkPassword_TextBox.Attributes["type"] = "password";

        if (!Page.IsPostBack)
        {
            //Populates year_Dropdown with the years from 1900 to the current year.
            int thisYear = Convert.ToInt32(DateTime.Now.Year);

            for (int i = thisYear; i >= 1900; i--)
            {
                year_Dropdown.Items.Add(new ListItem(i.ToString(), i.ToString()));

            }
            ListItem lsitem = new ListItem("Select Year", "0");
            year_Dropdown.Items.Insert(0, lsitem);

            //Populates month_Dropdown with the name of each month form january to december.
            DateTime month = Convert.ToDateTime("2000/1/1");

            for (int i = 0; i < 12; i++)
            {
                
                DateTime NextMont = month.AddMonths(i);
                ListItem monthlist = new ListItem();
                monthlist.Text = NextMont.ToString("MMMM");
                monthlist.Value = NextMont.Month.ToString();
                month_Dropdown.Items.Add(monthlist);
            }
            ListItem monthList = new ListItem("Month", "0");
            month_Dropdown.Items.Insert(0, monthList);

            //Adds day field to the top of day_Dropdown
            ListItem dayList = new ListItem("Day", "0");
            day_Dropdown.Items.Insert(0, dayList);

        }
    }

    protected void createUser_Button_Click(object sender, EventArgs e)
    {
        if (password_TextBox.Text == checkPassword_TextBox.Text)
        {
            error_Label.Visible = false;

            string salt = Crypto.Salt();
            string pass = salt + password_TextBox.Text;
            string hashedPass = Crypto.Hash(pass);
            DateTime date = new DateTime(Int32.Parse(year_Dropdown.SelectedValue), Int32.Parse(month_Dropdown.SelectedValue), Int32.Parse(day_Dropdown.SelectedValue));
            sqlService.createUser(username_Textbox.Text, firstname_TextBox.Text, lastname_TextBox.Text, hashedPass, salt, date, 1, email_TextBox.Text);   
        }
        else
        {
            error_Label.Visible = true;
        }
    }

    //When the month_Dropdown is changed update the number of days in day_Dropdown is updated to the correct number
    protected void month_Dropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedMonth = Int32.Parse(month_Dropdown.SelectedValue);

        int daysInSelectedMonth = DateTime.DaysInMonth(DateTime.Now.Year, selectedMonth);

        for (int i = 1; i < daysInSelectedMonth+1; i++)
        {
            day_Dropdown.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }
}