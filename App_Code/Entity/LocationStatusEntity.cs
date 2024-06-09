using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LocationStatusEntity
/// </summary>
public class LocationStatusEntity
{
    private int id;
    private string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
	public LocationStatusEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}