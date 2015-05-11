using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
}