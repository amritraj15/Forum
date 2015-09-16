using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DBAccess
/// </summary>
public class DBAccess
{
    public static void SaveData(string qur)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand(qur, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static DataSet FetchData(string qur)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCon"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(qur, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
}