using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Childeren
/// </summary>
public class ChilderenEntity
{
    private int id;
    private int numberOfChilderen;

    public int NumberOfChilderen
    {
        get { return numberOfChilderen; }
        set { numberOfChilderen = value; }
    }
    public int Id
    {
        get { return id; }
        set { id = value; }
    }

	public ChilderenEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}