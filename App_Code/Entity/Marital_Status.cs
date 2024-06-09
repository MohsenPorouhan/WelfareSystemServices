using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Marital_Status
/// </summary>
public class Marital_Status
{
    private int id;
    private string statusName;

    public string StatusName
    {
        get { return statusName; }
        set { statusName = value; }
    }
    public int Id
    {
        get { return id; }
        set { id = value; }
    }

	public Marital_Status()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}