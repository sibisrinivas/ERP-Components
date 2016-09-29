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
/// Summary description for DepartmentBAL
/// </summary>
public class DepartmentBAL
{
	public DepartmentBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int EmployeeIns(CreateDepartmentBO  objBO)
    {

        CreateDepartmentDAL objDAL = new CreateDepartmentDAL ();

        try
        {
            return objDAL.DeptInsert(objBO);
        }
        catch
        {
            throw;
        }
        
    }
    public DataSet GetDetails()
    {
        CreateDepartmentDAL objDAL = new CreateDepartmentDAL();
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
    public DataSet GetDetailsById(CreateDepartmentBO objBO)
    {
        CreateDepartmentDAL objDAL = new CreateDepartmentDAL();
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
    public int UpdateEmpAccount(CreateDepartmentBO objBO)
    {
        CreateDepartmentDAL objDAL = new CreateDepartmentDAL();
        try
        {
            return objDAL.Deptupdate(objBO);
        }
        catch
        {
            throw;
        }
    }
    public int DeleteEmpAccount(CreateDepartmentBO objBO)
    {
        CreateDepartmentDAL objDAL = new CreateDepartmentDAL();
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
