using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PeopleBLL peopleBLL = new PeopleBLL();
        PeopleEntity pe= peopleBLL.peopleInfo(Convert.ToInt32(User.Identity.Name));
        firstName.InnerText = pe.FirstName1;
        lastName.InnerText = pe.LastName1;
        employee_number.InnerText = User.Identity.Name;
        department.InnerText = pe.DepartmentEntity.SubDepartment[0];
        departmentParent.InnerText = pe.DepartmentEntity.SubDepartment[1];
        job.InnerText = pe.jobEntity1.Title1;
        certificate.InnerText = pe.CertificateEntity.Name;
        maritalStatus.InnerText = pe.MaritalStatus.StatusName;
        numberOfChilderen.InnerText =Convert.ToString(pe.ChilderenEntiy.NumberOfChilderen);
        localPhone.InnerText = pe.LocalTelephone;
        phoneNumber.InnerText = pe.PhoneNumber1;
        telphone.InnerText = pe.Telephone;
        address.InnerText = pe.Address;
    }

    [WebMethod]
    public static List<ViewEntity> notification() {
        NotificationDAL nd = new NotificationDAL();
        return nd.notification();
    }
}