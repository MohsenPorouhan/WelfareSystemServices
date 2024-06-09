using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProvinceDAL
/// </summary>
public class ProvinceDAL
{
	public ProvinceDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public List<ProvinceEntity> provinceList() {
        List<ProvinceEntity> provinceList = new List<ProvinceEntity>();
        ProvinceEntity provinceEntity;

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("ProvinceList", connection);
            command.CommandType = CommandType.StoredProcedure;

            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                provinceEntity = new ProvinceEntity();
                provinceEntity.Id = Convert.ToInt32(rdr["PROVINCE_ID"]);
                provinceEntity.Name = rdr["PROVINCE_NAME"].ToString();
                provinceList.Add(provinceEntity);

            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return provinceList;
    }
}