using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LocationDAL
/// </summary>
public class LocationDAL
{
    public LocationDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<LocationEntity> locationList()
    {
        List<LocationEntity> locationList = new List<LocationEntity>();
        LocationEntity locationEntity;

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Location_List", connection);
            command.CommandType = CommandType.StoredProcedure;

            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                locationEntity = new LocationEntity();
                locationEntity.LocationId = Convert.ToInt32(rdr["LOCATION_ID"]);
                locationEntity.LocationName = rdr["LOCATION_NAME"].ToString();
                locationList.Add(locationEntity);

            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return locationList;
    }

    public LocationEntity locationInfoById(int locationId)
    {
        LocationEntity locationEntity = null;
        CityEntity cityEntity;
        LocationStatusEntity lse;
        ProvinceEntity provinceEntity;

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Location_Info", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Location_Id",
                    Value = locationId
                });
            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                locationEntity = new LocationEntity();
                locationEntity.LocationId = Convert.ToInt32(rdr["LOCATION_ID"]);
                locationEntity.LocationName = rdr["LOCATION_NAME"].ToString();
                locationEntity.Cost = Convert.ToInt32(rdr["RENT_COST"]);

                lse = new LocationStatusEntity();
                lse.Id = Convert.ToInt32(rdr["LOCATION_STATUS_ID"]);
                locationEntity.LocationStatusEntity = lse;

                cityEntity = new CityEntity();
                cityEntity.CityId = Convert.ToInt32(rdr["CITY_ID"]);
                cityEntity.CityName = rdr["CITY_NAME"].ToString();

                provinceEntity = new ProvinceEntity();
                provinceEntity.Id = Convert.ToInt32(rdr["PROVINCE_ID"]);
                provinceEntity.Name = rdr["PROVINCE_NAME"].ToString();
                cityEntity.Province = provinceEntity;
                locationEntity.CityEntity = cityEntity;

            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return locationEntity;
    }

    public int locationInsertUpdate(LocationEntity le)
    {
        int rowsAffected = 0;
        int result = 0;
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("insert_Update_Location", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@LocationId",
                    Value = le.LocationId
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@LocationName",
                    Value = le.LocationName
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@CityId",
                    Value = le.CityEntity.CityId
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@LocationStatusId",
                    Value = le.LocationStatusEntity.Id
                });
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@RentCost",
                    Value = le.Cost
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