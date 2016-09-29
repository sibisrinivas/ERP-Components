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

public partial class HRMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"].ToString() != "HR")
        {
            Response.Redirect("~/Home/LoginPage.aspx");
        }
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}