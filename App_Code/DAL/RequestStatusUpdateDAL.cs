using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RequestStatusUpdateDAL
/// </summary>
public class RequestStatusUpdateDAL
{
	public RequestStatusUpdateDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int requestStatusUpdat(int requestStatusId, int residentialRegisterId)
    {
        //List<string> list = new List<string>();
        int rowsAffected = 0;
        int result = 0;
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Residential_Update_Request_Status", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@ResidentialRegisterId",
                    Value = residentialRegisterId
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@RequestStatusId",
                    Value = requestStatusId
                });
            command.Parameters.Add("@Result", SqlDbType.Int).Direction = ParameterDirection.Output;
            connection.Open();
            rowsAffected = command.ExecuteNonQuery();
            result = Convert.ToInt32(command.Parameters["@Result"].Value);
            //SqlDataReader rdr = command.ExecuteReader();
            //while (rdr.Read())
            //{
            //    list.Add(rdr["FirstName"].ToString());
            //    list.Add(rdr["LastName"].ToString());
            //    list.Add(rdr["BirthDate"].ToString());
            //    list.Add(rdr["NationalNumber"].ToString());
            //    list.Add(rdr["RelativeId"].ToString());

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