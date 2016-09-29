using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class HR_ViewResume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetDetails();
    }
    private void GetDetails()
    {
        ResumeBAL  objBAL = new  ResumeBAL ();
        try
        {
            DataSet ds = new DataSet();
            ds = objBAL.GetDetails();
            if (ds != null)
            {
                gdvResume.DataSource = ds;
                gdvResume.DataBind();
            }
            else
            {
                gdvResume.DataSource = null;
                gdvResume.DataBind();
            }
        }
        catch
        {
            gdvResume.DataSource = null;
            gdvResume.DataBind();
        }
    }
    
}
