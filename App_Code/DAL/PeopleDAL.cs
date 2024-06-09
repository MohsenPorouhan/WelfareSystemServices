using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PeopleService
/// </summary>
public class PeopleDAL
{
    public PeopleDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public PeopleEntity peopleInformationById(int employeeNumber)
    {
        PeopleEntity peopleEntity = new PeopleEntity();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);

        try
        {

            SqlCommand command = new SqlCommand("Employee_Information", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@Employee_Number",
                    Value = employeeNumber
                });
            connection.Open();
            SqlDataReader rdr = command.ExecuteReader();
            while (rdr.Read())
            {
                Console.Write(rdr["FirstName"].ToString());
                peopleEntity.FirstName1 = rdr["FirstName"].ToString();
                peopleEntity.LastName1 = rdr["LastName"].ToString();
                peopleEntity.LocalTelephone = rdr["LOCAL_TELEPHONE"].ToString();
                peopleEntity.PhoneNumber1 = rdr["PHONE_NUMBER"].ToString();
                peopleEntity.Telephone = rdr["TELEPHONE"].ToString();
                peopleEntity.Address = rdr["ADDRESS"].ToString();
                peopleEntity.CertificateEntity = new CertificateEntity();
                peopleEntity.CertificateEntity.Name = rdr["CERTIFICATE_NAME"].ToString();
                peopleEntity.ChilderenEntiy = new ChilderenEntity();
                peopleEntity.ChilderenEntiy.NumberOfChilderen = Convert.ToInt32(rdr["NUMBER_OF_CHILDREN"]);
                peopleEntity.MaritalStatus = new Marital_Status();
                peopleEntity.MaritalStatus.StatusName = rdr["MARITAL_STATUS_NAME"].ToString(); ;
                peopleEntity.jobEntity1 = new JobEntity();
                peopleEntity.jobEntity1.Title1 = rdr["JOB_TITLE"].ToString();
                peopleEntity.DepartmentEntity = new DepartmentEntity();
                peopleEntity.DepartmentEntity.SubDepartment.Add(rdr["DEPARTMENT_PARENT"].ToString());
                peopleEntity.DepartmentEntity.SubDepartment.Add(rdr["DEPARTMENT_NAME"].ToString());
            }
            connection.Close();
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }

        return peopleEntity;
    }
}