using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_CreateRelative : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static List<RelativeEntity> relativeListt()
    {
        RelativeDAL rl = new RelativeDAL();
        return rl.relativeList();
    }

    [WebMethod]
    public static int insert(string name)
    {
        RelativeDAL rd = new RelativeDAL();
        return rd.relativeUpdate(name);
    }
}