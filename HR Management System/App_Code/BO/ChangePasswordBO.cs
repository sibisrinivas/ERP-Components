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
/// Summary description for ChangePasswordBO
/// </summary>
public class ChangePasswordBO
{
	public ChangePasswordBO()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    #region properties

    private string _NUser;

    public string UseName
    {
        get { return _NUser; }
        set { _NUser = value; }
    }
    private string _NPass;

    public string Password
    {
        get { return _NPass; }
        set { _NPass = value; }
    }
    private string _NNew;

    public string New
    {
        get { return _NNew; }
        set { _NNew = value; }
    }

    private string _NConfirm;

    public string Confrim
    {
        get { return _NConfirm; }
        set { _NConfirm = value; }
    }
    
	
    #endregion properties
}
