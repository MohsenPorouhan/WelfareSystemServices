using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UsageStatusDAL
/// </summary>
public class UsageStatusDAL
{
	public UsageStatusDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public List<ViewEntity> usageStatusList()
    {
        List<ViewEntity> usageStatus = new List<ViewEntity>();

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Summary_Status_Of_Location", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Employee_Number",
                    Value = HttpContext.Current.User.Identity.Name
                });
            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                ViewEntity ve = new ViewEntity();
                ve.Member1= rdr["LOCATION_ID"].ToString();
                ve.Member2=rdr["LOCATION_NAME"].ToString();
                ve.Member3=rdr["CITY_NAME"].ToString();
                ve.Member4=rdr["NumberOfGuest"].ToString();
                ve.Member5=rdr["DATE_OF_ARRIVAL"].ToString();
                ve.Member6=rdr["DATE_OF_DEPARTURE"].ToString();
                ve.Member7 = rdr["UsageStatus"].ToString();
                ve.Member8 = rdr["REQUEST_STATUS_ID"].ToString();
                ve.Member9 = rdr["RESIDENTIAL_REGISTER_ID"].ToString();
                usageStatus.Add(ve);
                
                

            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return usageStatus;
    }
}