using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for Crypto
/// </summary>
public class Crypto
{
    static public string Salt()
        {
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            byte[] buffer = new byte[32];
            rng.GetBytes(buffer);

            return Convert.ToBase64String(buffer);
        }

        static public string Hash(string s)
        {
            byte[] tmpSource;
            byte[] tmpHash;

            tmpSource = ASCIIEncoding.ASCII.GetBytes(s);
            tmpHash = new SHA256CryptoServiceProvider().ComputeHash(tmpSource);

            return System.Text.Encoding.ASCII.GetString(tmpHash);
        }
}