using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CityBLL
/// </summary>
public class CityBLL
{
    public CityBLL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<CityEntity> cityList(int locationId)
    {
        CityDAL cityDAL = new CityDAL();
        return cityDAL.cityList(locationId);
    }
}