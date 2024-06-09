using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Province
/// </summary>
public class ProvinceEntity
{
    private int id;
    private string name;

    public string Name
    {
        get { return name; }
        set { name = value; }
    }

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
	public ProvinceEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}