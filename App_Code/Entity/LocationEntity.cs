using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LocationEntity
/// </summary>
public class LocationEntity
{
    private int locationId;
    private string locationName;
    private CityEntity cityEntity;
    private LocationStatusEntity locationStatusEntity;
    private int cost;

    public int Cost
    {
        get { return cost; }
        set { cost = value; }
    }

    public LocationStatusEntity LocationStatusEntity
    {
        get { return locationStatusEntity; }
        set { locationStatusEntity = value; }
    }

    public CityEntity CityEntity
    {
        get { return cityEntity; }
        set { cityEntity = value; }
    }

    public string LocationName
    {
        get { return locationName; }
        set { locationName = value; }
    }

    public int LocationId
    {
        get { return locationId; }
        set { locationId = value; }
    }
	public LocationEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}