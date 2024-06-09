using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_CreateUpdateResidential : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static List<LocationEntity> locationList()
    {
        LocationDAL ld = new LocationDAL();
        return ld.locationList();
    }

    [WebMethod]
    public static LocationEntity locationInfo(int locationId)
    {
        LocationDAL ld = new LocationDAL();
        return ld.locationInfoById(locationId);
    }

    [WebMethod]
    public static List<CityEntity> cityListt()
    {
        CityDAL cd = new CityDAL();
        return cd.cityList(0);
    }
    [WebMethod]
    public static List<ProvinceEntity> provinceList()
    {
        ProvinceDAL pd = new ProvinceDAL();
        return pd.provinceList();
    }

    [WebMethod]
    public static int insertUpdate(int locationId, string ResidentialName, int cityId, int locationStatusId, int rentCost)
    {
        LocationBLL lb = new LocationBLL();
        return lb.locationInsertUpdate(locationId,ResidentialName,cityId,locationStatusId,rentCost);
    }
}