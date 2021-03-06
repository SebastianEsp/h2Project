﻿using System;
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
        string StreamLink = "";              
        if (Session["loggedIn"] != null)
        {
            ViewState["Visible"] = false;
            //login_box_li.Visible = false;
            //login_box_ul.Visible = false;
            logud.Visible = true;
            
        }
        else
        {
            ViewState["Visible"] = true;
            //login_box_li.Visible = true;
            //login_box_ul.Visible = true;
            logud.Visible = false;
        }
    }
    protected void FilterMovieList_Load(object sender, EventArgs e)
    {
        string Filter = Request["__EVENTARGUMENT"];
        if (Filter != null)
        {
            List<Movie.Movieitem> MovieList = Movie.GetMoviesByGenre(Filter);
            Movie_LV.DataSource = MovieList;
            Movie_LV.DataBind();
        }
        else
        {
            List<Movie.Movieitem> MovieList = Movie.GetAllMovies();
            Movie_LV.DataSource = MovieList;
            Movie_LV.DataBind();            
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
            Session["role"] = sqlService.getRole(username_TextBox.Text);
            Response.Redirect("default.aspx");
        }
        else
        {
            error_Label.Visible = true;
        }
    }
    protected void SessionLogud(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect((Session["Role"].ToString() == "1") ? "UserSettings.aspx" : "admin.aspx");
    }
}