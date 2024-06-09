using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PeopleGuestRelative
/// </summary>
public class PeopleGuestRelative
{
	public PeopleGuestRelative()
	{
        PeopleGuestRelativeList = new List<PeopleGuestRelativeEntity>();
	}

    public List<PeopleGuestRelativeEntity> PeopleGuestRelativeList { get; set; }
}