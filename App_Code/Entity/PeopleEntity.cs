using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PeopleEntity
/// </summary>
public class PeopleEntity
{
    private int Id;
    private string FirstName;
    private string LastName;
    private string PhoneNumber;
    private JobEntity jobEntity;
    private DepartmentEntity departmentEntity;
    private Marital_Status maritalStatus;
    private string address;
    private string telephone;
    private string localTelephone;
    private CertificateEntity certificateEntity;
    private ChilderenEntity childerenEntiy;

    public ChilderenEntity ChilderenEntiy
    {
        get { return childerenEntiy; }
        set { childerenEntiy = value; }
    }

    public CertificateEntity CertificateEntity
    {
        get { return certificateEntity; }
        set { certificateEntity = value; }
    }

    public string LocalTelephone
    {
        get { return localTelephone; }
        set { localTelephone = value; }
    }

    public string Telephone
    {
        get { return telephone; }
        set { telephone = value; }
    }

    public string Address
    {
        get { return address; }
        set { address = value; }
    }

    public Marital_Status MaritalStatus
    {
        get { return maritalStatus; }
        set { maritalStatus = value; }
    }

    public DepartmentEntity DepartmentEntity
    {
        get { return departmentEntity; }
        set { departmentEntity = value; }
    }
    public JobEntity jobEntity1
    {
        get { return jobEntity; }
        set { jobEntity = value; }
    }

    public int Id1
    {
        get { return Id; }
        set { Id = value; }
    }

    public string FirstName1
    {
        get { return FirstName; }
        set { FirstName = value; }
    }

    public string LastName1
    {
        get { return LastName; }
        set { LastName = value; }
    }

    public string PhoneNumber1
    {
        get { return PhoneNumber; }
        set { PhoneNumber = value; }
    }

	public PeopleEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}