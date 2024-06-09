using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResidentialDAL
/// </summary>
public class ResidentialDAL
{
	public ResidentialDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int CheckPossibilityChanges(int residentialRegisterId)
    {
        //List<string> list = new List<string>();
        int rowsAffected = 0;
        int result = 0;
        int resultt = 0;
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Check_Possibility_Changes", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@ResidentialRegisterId",
                    Value = residentialRegisterId
                });
            command.Parameters.Add("@Result", SqlDbType.Int).Direction = ParameterDirection.Output;
            connection.Open();
            //rowsAffected = command.ExecuteNonQuery();
            SqlDataReader rdr = command.ExecuteReader();
            result = Convert.ToInt32(command.Parameters["@Result"].Value);
            //while (rdr.Read())
            //{
            //    resultt=Convert.ToInt32(rdr["Resultt"].ToString());
            //}
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }
        return result;
    }
}