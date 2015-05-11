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
    SqlConnection dbCon = new SqlConnection(ConnectionString.getString());

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

    public string getPassword(string username)
    {
        dbCon.Open();

        string pass = "";
        SqlCommand getPass = new SqlCommand(@"SELECT password FROM Users WHERE username=@Username", dbCon);
        getPass.Parameters.AddWithValue("@Username", username);

        SqlDataReader reader = getPass.ExecuteReader();
        while (reader.Read())
        {
            pass = reader[0].ToString();
        }

        dbCon.Close();

        return pass;
    }

    public void updatePassword(string username, string password)
    {
        dbCon.Open();
        SqlCommand updatePass = new SqlCommand(@"UPDATE Users SET password=@Password WHERE username=@Username" ,dbCon);
        updatePass.Parameters.AddWithValue("@Password", password);
        updatePass.Parameters.AddWithValue("@Username", username);
        updatePass.ExecuteNonQuery();
        dbCon.Close();
    }

    public void updateEmail(string email, string username)
    {
        dbCon.Open();
        SqlCommand updateEmail = new SqlCommand(@"UPDATE Users SET email=@Email WHERE username=@Username", dbCon);
        updateEmail.Parameters.AddWithValue("@Email", email);
        updateEmail.Parameters.AddWithValue(@"Username", username);
        updateEmail.ExecuteNonQuery();
        dbCon.Close();
    }

    public void updateUsername(string usernameOld, string usernameNew)
    {
        dbCon.Open();
        SqlCommand updateUsername = new SqlCommand(@"UPDATE Users SET username=@UsernameNew WHERE username=@UsernameOld", dbCon);
        updateUsername.Parameters.AddWithValue("@UsernameNew", usernameNew);
        updateUsername.Parameters.AddWithValue(@"UsernameOld", usernameOld);
        updateUsername.ExecuteNonQuery();
        dbCon.Close();
    }

    public string getSalt(string username)
    {
        dbCon.Open();

        string salt = "";
        SqlCommand getSalt = new SqlCommand(@"SELECT Salt FROM Users WHERE username=@Username", dbCon);
        getSalt.Parameters.AddWithValue("@Username", username);
        getSalt.ExecuteNonQuery().ToString();

        SqlDataReader reader = getSalt.ExecuteReader();
        while (reader.Read())
        {
            salt = reader[0].ToString();
        }
        dbCon.Close();

        return salt;
    }

    public void createUser(string username, string firstName, string lastName, string hash, string salt, DateTime date, int role, string email)
    {
        dbCon.Open();

        SqlCommand addUser = new SqlCommand("INSERT INTO Users(username, firstName, lastName, age, role, password, salt, email) Values(@Username, @FirstName, @LastName, @Age, @Role, @Password, @Salt, @Email)", dbCon);
        addUser.Parameters.AddWithValue("@Username", username);
        addUser.Parameters.AddWithValue("@FirstName", firstName);
        addUser.Parameters.AddWithValue("@LastName", lastName);
        addUser.Parameters.AddWithValue("@Password", hash);
        addUser.Parameters.AddWithValue("@Salt", salt);
        addUser.Parameters.AddWithValue("@Age", date);
        addUser.Parameters.AddWithValue("@Role", role);
        addUser.Parameters.AddWithValue("@Email", email);

        addUser.ExecuteNonQuery();

        dbCon.Close();
    }

}