using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RelativeBLL
/// </summary>
public class RelativeBLL
{
    public RelativeBLL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<RelativeEntity> relativeList()
    {
        RelativeDAL relativeDAL = new RelativeDAL();
        return relativeDAL.relativeList();
    }
}