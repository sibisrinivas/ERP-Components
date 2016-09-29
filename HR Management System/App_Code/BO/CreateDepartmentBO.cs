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
/// Summary description for CreateDepartment
/// </summary>
public class CreateDepartmentBO
{
	public CreateDepartmentBO()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    #region properties
    private int  _NDeptNo;

    public int DepartmentNo
    {
        get { return _NDeptNo; }
        set { _NDeptNo = value; }
    }
    private string _NDeptName;

    public string DepartmentName
    {
        get { return _NDeptName; }
        set { _NDeptName = value; }
    }
    private string _NLOC;

    public string Location
    {
        get { return _NLOC; }
        set { _NLOC = value; }
    }
    
    #endregion properties

}
