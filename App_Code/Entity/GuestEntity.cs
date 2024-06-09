using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GuestEntity
/// </summary>
public class GuestEntity
{
    private int id;
    private string firstName;
    private string lastName;
    private string birthDate;
    private int nationalNumber;


    public int NationalNumber
    {
        get { return nationalNumber; }
        set { nationalNumber = value; }
    }

    public string BirthDate
    {
        get { return birthDate; }
        set { birthDate = value; }
    }

    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }

    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
	public GuestEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}