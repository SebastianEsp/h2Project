using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Movie
/// </summary>
public class Movie
{
    public Movie()
    {
        //
        // TODO: Add constructor logic here
        //  
    }

    static SqlConnection dbcon = new SqlConnection(ConnectionString.getString());

    public class Movieitem
    {
        public int id { get; set; }
        public string title { get; set; }
        public string yearOfRelease { get; set; }
        public string shortDescription { get; set; }
        public string longDescription { get; set; }
        public string producer { get; set; }
        public string cover { get; set; }
        public string Stream { get; set; }
        public int last { get; set; }

    }

    public static List<Movieitem> GetAllMovies()
    {
        List<Movieitem> data = new List<Movieitem>();

        using (SqlCommand cmd = new SqlCommand("select * from Movie", dbcon))
        {
            if (dbcon.ConnectionString == "")
            {
                dbcon.Close();
                dbcon = new SqlConnection("Server=tcp:vmhaxugqeo.database.windows.net,1433;Database=Movies;User ID=dbAdmin@vmhaxugqeo;Password=Qwert12345;Trusted_Connection=False;Encrypt=True;");
                return data;
            }
            try
            {
                dbcon.Open();
            }
            catch
            {
                return data;
            }
            SqlDataReader reader = cmd.ExecuteReader();

            int count = 1; //used to set every 6 record as last, in view.
            while (reader.Read())
            {
                if (count != 6)
                {
                    data.Add(new Movieitem
                    {
                        id = Convert.ToInt32(reader["id"].ToString()),
                        title = reader["title"].ToString(),
                        yearOfRelease = reader["yearOfRelease"].ToString(),
                        shortDescription = reader["shortDescription"].ToString(),
                        longDescription = reader["longDescription"].ToString(),
                        producer = reader["producer"].ToString(),
                        cover = reader["cover"].ToString(),
                        Stream = reader["Stream"].ToString(),
                        last = 0
                    });
                    count++;
                }
                else
                {
                    data.Add(new Movieitem
                    {
                        id = Convert.ToInt32(reader["id"].ToString()),
                        title = reader["title"].ToString(),
                        yearOfRelease = reader["yearOfRelease"].ToString(),
                        shortDescription = reader["shortDescription"].ToString(),
                        longDescription = reader["longDescription"].ToString(),
                        producer = reader["producer"].ToString(),
                        cover = reader["cover"].ToString(),
                        Stream = reader["Stream"].ToString(),
                        last = 1
                    });
                    count = 1;
                }               

            }

        }
        dbcon.Close();
        return data;
    }

    public static List<Movieitem> GetMoviesByGenre(string Genre)
    {
        List<Movieitem> data = new List<Movieitem>();
        
        using (SqlCommand cmd = new SqlCommand("Select * from Movie where genre = '" + Genre + "'", dbcon))
        {
            dbcon.Open();
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                int count = 1; //used to set every 6 record as last, in view.
                while (reader.Read())
                {
                    if (count != 6)
                    {
                        data.Add(new Movieitem
                        {
                            id = Convert.ToInt32(reader["id"].ToString()),
                            title = reader["title"].ToString(),
                            yearOfRelease = reader["yearOfRelease"].ToString(),
                            shortDescription = reader["shortDescription"].ToString(),
                            longDescription = reader["longDescription"].ToString(),
                            producer = reader["producer"].ToString(),
                            cover = reader["cover"].ToString(),
                            Stream = reader["Stream"].ToString(),
                            last = 0
                        });
                        count++;
                    }
                    else
                    {
                        data.Add(new Movieitem
                        {
                            id = Convert.ToInt32(reader["id"].ToString()),
                            title = reader["title"].ToString(),
                            yearOfRelease = reader["yearOfRelease"].ToString(),
                            shortDescription = reader["shortDescription"].ToString(),
                            longDescription = reader["longDescription"].ToString(),
                            producer = reader["producer"].ToString(),
                            cover = reader["cover"].ToString(),
                            Stream = reader["Stream"].ToString(),
                            last = 1
                        });
                        count = 1;
                    }
                }
            }

        }
        dbcon.Close();
        return data;
    }
}