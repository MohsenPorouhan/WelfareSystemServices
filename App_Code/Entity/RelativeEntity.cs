﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Relative
/// </summary>
public class RelativeEntity
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
    public RelativeEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}