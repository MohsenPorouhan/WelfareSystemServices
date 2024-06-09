using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Serialization;

/// <summary>
/// Summary description for ResidentialRegisterBLL
/// </summary>
public class ResidentialRegisterBLL
{
    public ResidentialRegisterBLL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int residentialRegisterInsert(string[] fullName, string[] birthDate, string[] nationalNumber, string[] relative, int locationId, string arrivalDate,
        string departureDate, int cityId, int numberOfGuest, int locationCost, int paymentWay)
    {
        var peopleGuestRelative = new PeopleGuestRelative();
        for (int i = 0; i < numberOfGuest; i++)
        {
            peopleGuestRelative.PeopleGuestRelativeList.Add(new PeopleGuestRelativeEntity()
            {
                GuestEntity = new GuestEntity()
                {
                    FirstName = fullName[i + 1],
                    LastName = fullName[i + 1],
                    BirthDate = birthDate[i + 1],
                    NationalNumber = Convert.ToInt32(nationalNumber[i + 1])
                    ,
                    Id = i + 1
                },
                RelativeEntity = new RelativeEntity() { Id = Convert.ToInt32(relative[i + 1]) }
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

            //test.InnerText = sw.ToString();
            //return sw.ToString();
            ResidentialRegisterDAL residentialRegisterDAL = new ResidentialRegisterDAL();
            return residentialRegisterDAL.residentialRegisterInsertDAL(sw.ToString(), locationId, arrivalDate, departureDate, paymentWay, locationCost);
        }
    }
}