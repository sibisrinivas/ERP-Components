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

public partial class Admin_CreateDepartment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {
                btnNew.Text = "Update";
                GetDetailsById();
            }
        }

    }
    private void GetDetailsById()
    {
       CreateDepartmentBO objBO = new CreateDepartmentBO ();
       DepartmentBAL objBAL = new  DepartmentBAL ();
        try
        {
            DataSet ds = new DataSet();
            objBO.DepartmentNo = int.Parse(Request.QueryString["Id"].ToString());
            ds = objBAL.GetDetailsById(objBO);
            if (ds != null)
            {
                txtDeptName.Text = ds.Tables[0].Rows[0]["DeptName"].ToString();
                txtLOC.Text = ds.Tables[0].Rows[0]["LOC"].ToString();                
            }
        }
        catch
        {
            throw;
        }
    }
    protected void Employeeinsertion(object sender, EventArgs e)
    {
        CreateDepartmentBO objBO = new CreateDepartmentBO();
        DepartmentBAL objBAL = new DepartmentBAL();

        if (Request.QueryString["Id"] != null)
        {

            try
            {
                objBO.DepartmentNo = int.Parse(Request.QueryString["Id"].ToString());
                objBO.DepartmentName = txtDeptName.Text;
                objBO.Location = txtLOC.Text;

                objBAL.UpdateEmpAccount(objBO);
                Server.Transfer("UpdateDepartment.aspx");

            }
            catch
            {
                throw;
            }

        }

        else
        {
            objBO.DepartmentName = txtDeptName.Text;
            objBO.Location = txtLOC.Text;

            objBAL.EmployeeIns(objBO);

            Response.Redirect("UpdateDepartment.aspx");
        }
    }
}
