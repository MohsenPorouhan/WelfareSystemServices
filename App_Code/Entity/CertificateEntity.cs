using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Certificate
/// </summary>
public class CertificateEntity
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
    
	public CertificateEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}