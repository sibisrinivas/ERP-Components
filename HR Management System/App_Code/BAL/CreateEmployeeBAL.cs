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
/// Summary description for CreateEmployeeBAL
/// </summary>
public class CreateEmployeeBAL
{
	public CreateEmployeeBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet CheckLogin(CreateEmployeeBO  objBO)
    {
        CreateEmployeeDAL objDAL = new  CreateEmployeeDAL ();
        try
        {
            return objDAL.CheckLogin(objBO);
        }
        catch
        {
            return null;
        }
    }
    public int EmployeeIns(CreateEmployeeBO objBO)
    {
        CreateEmployeeDAL objDAL = new CreateEmployeeDAL();
        try
        {
            return objDAL.EmployeeInsert(objBO);
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
        CreateEmployeeDAL objDAL = new CreateEmployeeDAL();
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
    public DataSet GetDetailsById(CreateEmployeeBO objBO)
    {
        CreateEmployeeDAL objDAL = new CreateEmployeeDAL();
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
    public int UpdateEmpAccount(CreateEmployeeBO objBO)
    {
        CreateEmployeeDAL objDAL = new CreateEmployeeDAL();
        try
        {
            return objDAL.Employeeupdate(objBO);
        }
        catch
        {
            throw;
        }
    }
    public int DeleteEmpAccount(CreateEmployeeBO objBO)
    {
        CreateEmployeeDAL objDAL = new CreateEmployeeDAL();
        try
        {
            return objDAL.DeleteEmpAccount(objBO);
        }
        catch
        {
            throw;
        }
    }
    public int UpdatePassword(CreateEmployeeBO objBO)
    {
        try
        {
            CreateEmployeeDAL objDAL = new  CreateEmployeeDAL();

            return objDAL.UpdatePassword(objBO);
        }
        catch
        {
            throw;
        }
    }
    public int UpdateSkill(CreateEmployeeBO objBO)
    {
        try
        {
            CreateEmployeeDAL objDAL = new CreateEmployeeDAL();

            return objDAL.UpdateSkill(objBO);
        }
        catch
        {
            throw;
        }
    }



}
