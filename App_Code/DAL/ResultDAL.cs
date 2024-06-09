using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResultDAL
/// </summary>
public class ResultDAL
{
	public ResultDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public List<ViewEntity> RequestStatus()
    {
        List<ViewEntity> resultStatus = new List<ViewEntity>();

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Summary_Of_Status_Request", connection);
            command.CommandType = CommandType.StoredProcedure;

            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                ViewEntity ve = new ViewEntity();
                ve.Member1 = rdr["LOCATION_ID"].ToString();
                ve.Member2 = rdr["LOCATION_NAME"].ToString();
                ve.Member3 = rdr["CITY_NAME"].ToString();
                ve.Member4 = rdr["NumberOfGuest"].ToString();
                ve.Member5 = rdr["DATE_OF_ARRIVAL"].ToString();
                ve.Member6 = rdr["DATE_OF_DEPARTURE"].ToString();
                ve.Member7 = rdr["UsageStatus"].ToString();
                ve.Member8 = rdr["REQUEST_STATUS_ID"].ToString();
                ve.Member9 = rdr["RESIDENTIAL_REGISTER_ID"].ToString();
                ve.Member10 = rdr["FirstName"].ToString();
                ve.Member11 = rdr["LastName"].ToString();
                resultStatus.Add(ve);



            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return resultStatus;
    }
}