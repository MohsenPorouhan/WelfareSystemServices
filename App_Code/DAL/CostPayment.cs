using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CostPayment
/// </summary>
public class CostPayment
{
	public CostPayment()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public List<string> costPayment(int locationId,string arrivalDate,string departureDate,string employeeNumber)
    {
        List<string> list = new List<string>();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Cost_and_Payment", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Employee_Number",
                    Value = employeeNumber
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Location_Id",
                    Value = locationId
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Arrival_Date",
                    Value = arrivalDate
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Departure_Date",
                    Value = departureDate
                });
            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                list.Add(rdr["PeopleID"].ToString());
                list.Add(rdr["Total_Cost"].ToString());
                list.Add(rdr["Contract_Id"].ToString());
                list.Add(rdr["TYPE"].ToString());
                list.Add(rdr["LOCATION_STATUS_ID"].ToString());

            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return list;
    }
}