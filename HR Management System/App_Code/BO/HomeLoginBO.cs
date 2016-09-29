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
/// Summary description for HomeLogin
/// </summary>
public class HomeLogin
{
	public HomeLogin()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    #region properties
    private string _User;

    public string UserName
    {
        get { return _User; }
        set { _User = value; }
    }
	
    private string _Password;

    public string Password
    {
        get { return _Password; }
        set { _Password = value; }
    }

    #endregion properties

}
