using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LocationBLL
/// </summary>
public class LocationBLL
{
    public LocationBLL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public List<LocationEntity> locationList()
    {
        LocationDAL locatioDAL = new LocationDAL();
        return locatioDAL.locationList();
    }

    public int locationInsertUpdate(int locationId, string ResidentialName, int cityId, int locationStatusId, int rentCost)
    {
        LocationDAL ld = new LocationDAL();
        LocationEntity le = new LocationEntity();
        le.LocationId = locationId;
        le.LocationName = ResidentialName;
        le.Cost = rentCost;
        CityEntity ce = new CityEntity();
        ce.CityId = cityId;
        le.CityEntity = ce;
        LocationStatusEntity lse = new LocationStatusEntity();
        lse.Id = locationStatusId;
        le.LocationStatusEntity = lse;
        return ld.locationInsertUpdate(le);
    }
}