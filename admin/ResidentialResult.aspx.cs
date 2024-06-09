using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ResidentialResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static List<ViewEntity> resultStatus()
    {
        ResultDAL result = new ResultDAL();
        return result.RequestStatus();
    }

    [WebMethod]
    public static int requestStatus(int requestStatusId,int residentialRegisterId)
    {
        RequestStatusUpdateDAL rsud = new RequestStatusUpdateDAL();
        return rsud.requestStatusUpdat(requestStatusId, residentialRegisterId);
    }
}