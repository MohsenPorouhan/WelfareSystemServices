using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RelativeDAL
/// </summary>
public class RelativeDAL
{
	public RelativeDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public List<RelativeEntity> relativeList()
    {
        List<RelativeEntity> relativeList = new List<RelativeEntity>();
        RelativeEntity relativeEntity;

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Relative_List", connection);
            command.CommandType = CommandType.StoredProcedure;

            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                relativeEntity = new RelativeEntity();
                relativeEntity.Id = Convert.ToInt32(rdr["RELATIVE_ID"]);
                relativeEntity.Name = rdr["RELATIVE"].ToString();
                relativeList.Add(relativeEntity);

            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return relativeList;
    }

    public int relativeUpdate(string name)
    {
        int rowsAffected = 0;
        int result = 0;
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Relative_insert", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Name",
                    Value = name
                });

            command.Parameters.Add("@Result", SqlDbType.Int).Direction = ParameterDirection.Output;
            connection.Open();
            rowsAffected = command.ExecuteNonQuery();
            result = Convert.ToInt32(command.Parameters["@Result"].Value);

            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return result;
    }
}