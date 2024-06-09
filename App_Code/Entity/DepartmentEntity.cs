using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DepartmentEntity
/// </summary>
public class DepartmentEntity
{
    private int Id;
    private string DepartmentName;
    private IList<string> subDepartment = new List<string>();

    public IList<string> SubDepartment
    {
        get { return subDepartment; }
        set { subDepartment = value; }
    }


    public int Id1
    {
        get { return Id; }
        set { Id = value; }
    }

    public string DepartmentName1
    {
        get { return DepartmentName; }
        set { DepartmentName = value; }
    }
	public DepartmentEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}