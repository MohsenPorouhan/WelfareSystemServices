using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Guests
/// </summary>
public class Guests
{
    public Guests()
    {
        GuestList = new List<GuestEntity>();

    }
    public List<GuestEntity> GuestList { get; set; }
}