using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SqlService
/// </summary>
public class SqlService
{
    SqlConnection dbCon = new SqlConnection("Server = tcp:vmhaxugqeo.database.windows.net,1433; Database = Movies; User ID = dbAdmin@vmhaxugqeo; Password = Qwert12345; Trusted_Connection = False; Encrypt = True; Connection Timeout = 30;");

    public SqlService()
    {
        
    }

    public string GetAllMovies()
    {
        string placeholder = "";
        SqlCommand cmd = dbCon.CreateCommand();
        cmd.CommandText = @"select * from Movie";
        dbCon.Open();

        SqlDataReader reader = cmd.ExecuteReader();

        while(reader.Read())
        {
            int id = Convert.ToInt32(reader["id"].ToString());
            string title = reader["title"].ToString();

        }

        return placeholder;
    }

    public string LoginUser()
    {
        string placeholder = "";
        SqlCommand test = dbCon.CreateCommand();
        test.CommandText = @"select * from Movie";
        SqlCommand dbset = new SqlCommand(@"Select * from Movie", dbCon);
        
        return placeholder;
    }

}