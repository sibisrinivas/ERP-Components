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
/// Summary description for WorkingBAL
/// </summary>
public class WorkingBAL
{
	public WorkingBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int EmployeeIns(CreateWorking  objBO)
    {

        CreateWorkingDAL  objDAL = new CreateWorkingDAL();

        try
        {
            return objDAL.WorkInsert(objBO);
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
        CreateWorkingDAL objDAL = new CreateWorkingDAL();
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
    public DataSet GetDetailsById(CreateWorking  objBO)
    {
        CreateWorkingDAL objDAL = new CreateWorkingDAL();
        try
        {
            return objDAL.GetDetailsById(objBO);
        }
        catch
        {
            return null;
        }
    }
    //For Updating Employee Account
    public int UpdateEmpAccount(CreateWorking  objBO)
    {
        CreateWorkingDAL objDAL = new CreateWorkingDAL();
        try
        {
            return objDAL.Deptupdate(objBO);
        }
        catch
        {
            throw;
        }
    }
    public int DeleteEmpAccount(CreateWorking objBO)
    {
        CreateWorkingDAL objDAL = new CreateWorkingDAL();
        try
        {
            return objDAL.DeleteDeptAccount(objBO);
        }
        catch
        {
            throw;
        }
    }

}
