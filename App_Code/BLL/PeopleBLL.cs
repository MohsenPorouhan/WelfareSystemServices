using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PeopleEntity
/// </summary>
public class PeopleBLL
{
	public PeopleBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public PeopleEntity peopleInfo(int employeeNumber)
    {
        PeopleDAL peopleDAL = new PeopleDAL();
        PeopleEntity pe = peopleDAL.peopleInformationById(employeeNumber);
        return pe;
    }
}