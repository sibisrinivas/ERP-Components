using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for ResumeBAL
/// </summary>
public class ResumeBAL
{
	public ResumeBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ResumeIns(ResumeBO objResume)
    {
        ResumeDAL objDAL = new ResumeDAL();
        try
        {
            return objDAL.ResumeInsert(objResume);
        }
        catch
        {
            throw;
        }
        finally
        {

        }
    }
    public DataSet GetDetails()
    {
        ResumeDAL objDAL = new  ResumeDAL ();
        try
        {
            return objDAL.GetDetails();
        }
        catch
        {
            return null;
        }
    }
    //For Getting Details by EmployeeId
    public DataSet GetDetailsById(ResumeBO objBO)
    {
        ResumeDAL objDAL = new  ResumeDAL();
        try
        {
            return objDAL.GetDetailsById(objBO);
        }
        catch
        {
            return null;
        }
    }
}
