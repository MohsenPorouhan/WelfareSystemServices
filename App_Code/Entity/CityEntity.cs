using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CityEntity
/// </summary>
public class CityEntity
{
    private int cityId;
    private string cityName;
    private ProvinceEntity province;

    public ProvinceEntity Province
    {
        get { return province; }
        set { province = value; }
    }

    public string CityName
    {
        get { return cityName; }
        set { cityName = value; }
    }

    public int CityId
    {
        get { return cityId; }
        set { cityId = value; }
    }
	public CityEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}