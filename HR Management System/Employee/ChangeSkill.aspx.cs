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

public partial class Admin_ChangeSkill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            txtCurrent.Text = Session["SkillSet"].ToString();
        }
    }    
    private void UpdateSkill()
    {
        try
        {
            CreateEmployeeBO objBO = new CreateEmployeeBO();
            CreateEmployeeBAL objBAL = new CreateEmployeeBAL();

            objBO.EmployeeNo = int.Parse(Session["EmpNo"].ToString());
            objBO.Skill = txtAddtional.Text.Trim();

            objBAL.UpdateSkill(objBO);
        }
        catch
        {
            throw;
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        UpdateSkill();
    }
}
