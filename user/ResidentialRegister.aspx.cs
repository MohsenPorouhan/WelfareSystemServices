using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;

public partial class user_ResidentialRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //var guests = new Guests();

        //for (int i = 0; i < 10; i++)
        //{
        //    guests.GuestList.Add(new GuestEntity() { FirstName = "بدراسادات", LastName = "میرممتاز", BirthDate = new DateTime(), NationalNumber = 11122333 });
        //}

        var peopleGuestRelative = new PeopleGuestRelative();
        for (int i = 0; i < 3; i++)
        {
            peopleGuestRelative.PeopleGuestRelativeList.Add(new PeopleGuestRelativeEntity()
            {
                GuestEntity = new GuestEntity() { FirstName = "بدراسادات", LastName = "میرممتاز", BirthDate = new DateTime().ToString(), NationalNumber = 11122333, Id = i + 1 },
                RelativeEntity = new RelativeEntity() { Id = i + 1 }
            });
        }
        using (var sw = new Utf8StringWriter())
        using (var xw = XmlWriter.Create(sw, new XmlWriterSettings { Indent = true }))
        {

            //xw.WriteStartDocument(true); // that bool parameter is called "standalone"
            xw.WriteProcessingInstruction("xml", "version=\"1.0\" standalone=\"yes\"");

            //var namespaces = new XmlSerializerNamespaces();
            //namespaces.Add(string.Empty, string.Empty);

            var xmlSerializer = new XmlSerializer(typeof(PeopleGuestRelative));
            xmlSerializer.Serialize(xw, peopleGuestRelative);

            //MemoryStream ms = new MemoryStream();
            //new XmlSerializer(typeof(GuestEntity)).Serialize(xw, guest);

            //ms.Position = 0;

            //StreamReader r = new StreamReader(ms);
            //string res = r.ReadToEnd();

            //test.InnerText = sw.ToString();
        }

    }

    [WebMethod]
    public static List<LocationEntity> locationList()
    {
        LocationBLL lb = new LocationBLL();
        return lb.locationList();
    }

    [WebMethod]
    public static List<CityEntity> cityList(int locationId)
    {
        CityBLL cityBLL = new CityBLL();
        return cityBLL.cityList(locationId);
    }

    [WebMethod]
    public static List<RelativeEntity> relativeList()
    {
        RelativeBLL relativeBLL = new RelativeBLL();
        return relativeBLL.relativeList();
    }
    [WebMethod]
    public static List<string> costAndPayment(int locationId, string arrivalDate, string departureDate)
    {
        CostPayment costPayment = new CostPayment();
        return costPayment.costPayment(locationId, arrivalDate, departureDate, HttpContext.Current.User.Identity.Name);
    }
    [WebMethod]
    public static int locationRegister(string[] fullName, string[] birthDate, string[] nationalNumber, string[] relative, int locationId, string arrivalDate,
        string departureDate, int cityId, int numberOfGuest, int locationCost, int paymentWay)
    {
        //string[] a = new string[relative.Length];
        //int i = 0;
        //foreach (var item in relative)
        //{
        //    a[i] = item;
        //    i++;
        //}
        ResidentialRegisterBLL residentialRegisterBLL = new ResidentialRegisterBLL();
        return residentialRegisterBLL.residentialRegisterInsert(fullName, birthDate, nationalNumber, relative, locationId, arrivalDate, departureDate,
             cityId, numberOfGuest, locationCost, paymentWay);
    }
    [WebMethod]
    public static List<ViewEntity> usageStatus()
    {
        UsageStatusDAL usageStatus = new UsageStatusDAL();
        return usageStatus.usageStatusList();
    }

    [WebMethod]
    public static int CheckPossibilityChanges(int residentialRegisterId)
    {
        ResidentialDAL rd = new ResidentialDAL();
        return rd.CheckPossibilityChanges(residentialRegisterId);
    }
    
}