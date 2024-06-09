using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NotificationDAL
/// </summary>
public class NotificationDAL
{
    public NotificationDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<ViewEntity> notification()
    {
        List<ViewEntity> list = new List<ViewEntity>();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Notification", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Employee_Number",
                    Value = HttpContext.Current.User.Identity.Name.ToString()
                });
            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                ViewEntity ve = new ViewEntity();
                ve.Member1 = rdr["Request_Status_Last_Changed_Date"].ToString();
                ve.Member2 = rdr["RESIDENTIAL_REGISTER_ID"].ToString();
                ve.Member3 = rdr["LOCATION_NAME"].ToString();
                ve.Member4 = rdr["CITY_NAME"].ToString();
                ve.Member5 = rdr["STATUS"].ToString();
                list.Add(ve);
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