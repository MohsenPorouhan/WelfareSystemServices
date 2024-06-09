using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for JobEntity
/// </summary>
public class JobEntity
{
    private int Id;
    private string Title;

    public string Title1
    {
        get { return Title; }
        set { Title = value; }
    }
    public int Id1
    {
        get { return Id; }
        set { Id = value; }
    }
    

	public JobEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}