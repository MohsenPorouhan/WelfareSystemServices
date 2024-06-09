﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResidentialRegisterDAL
/// </summary>
public class ResidentialRegisterDAL
{
    public ResidentialRegisterDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public int residentialRegisterInsertDAL(string xml, int locationId, string dateOfArrival, string dateOfDeparture, int paymentWay, int locationCost)
    {
        //List<string> list = new List<string>();
        int rowsAffected = 0;
        int result = 0;
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Location_Register", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@LocationId",
                    Value = locationId
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@DateOfArrival",
                    Value = dateOfArrival
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@DateOfDeparture",
                    Value = dateOfDeparture
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@EmployeeNumber",
                    Value = HttpContext.Current.User.Identity.Name
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@ListOfGuest",
                    Value = xml
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@PaymentWay",
                    Value = paymentWay
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@LocationCost",
                    Value = locationCost
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