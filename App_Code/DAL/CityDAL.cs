using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CityDAL
/// </summary>
public class CityDAL
{
    public CityDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<CityEntity> cityList(int locatioId)
    {
        List<CityEntity> cityList = new List<CityEntity>();
        CityEntity cityEntity;

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("City_list", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Location_Id",
                    Value = locatioId
                });
            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                cityEntity = new CityEntity();
                cityEntity.CityId = Convert.ToInt32(rdr["CITY_ID"]);
                cityEntity.CityName = rdr["CITY_NAME"].ToString();
                cityList.Add(cityEntity);

            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return cityList;
    }
}