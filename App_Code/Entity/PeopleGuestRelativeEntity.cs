using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for PeopleGuestRelative
/// </summary>
public class PeopleGuestRelativeEntity
{
    private int id;
    private PeopleEntity peopleEntity;
    private GuestEntity guestEntity;
    private RelativeEntity relativeEntity;

    public RelativeEntity RelativeEntity
    {
      get { return relativeEntity; }
      set { relativeEntity = value; }
    }

    public GuestEntity GuestEntity
    {
        get { return guestEntity; }
        set { guestEntity = value; }
    }

    [XmlIgnore]
    public PeopleEntity PeopleEntity
    {
        get { return peopleEntity; }
        set { peopleEntity = value; }
    }

    [XmlIgnore]
    public int Id
    {
        get { return id; }
        set { id = value; }
    }

   public PeopleGuestRelativeEntity() 
   {

   }
}