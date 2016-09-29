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
/// Summary description for SkillSet
/// </summary>
public class SkillSet
{
	public SkillSet()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    #region properties

    private String _NCurrent;

    public String CurrentSkill
    {
        get { return _NCurrent; }
        set { _NCurrent = value; }
    }
    private string _NAdditional;

    public string AdditionalSkill
    {
        get { return _NAdditional; }
        set { _NAdditional = value; }
    }
    
    #endregion properties
}
