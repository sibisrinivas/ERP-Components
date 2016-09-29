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

public partial class Admin_UpdateDepartment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetDetails();
        }
    }
    private void GetDetails()
    {
        DepartmentBAL  objBAL = new DepartmentBAL();
        try
        {
            DataSet ds = new DataSet();
            ds = objBAL.GetDetails();
            if (ds != null)
            {
                dgEmployee.DataSource = ds;
                dgEmployee.DataBind();
            }
            else
            {
                dgEmployee.DataSource = null;
                dgEmployee.DataBind();
            }
        }
        catch
        {
            dgEmployee.DataSource = null;
            dgEmployee.DataBind();
        }
    }

    protected void dgEmployee_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Response.Redirect("CreateDepartment.aspx?Id=" + dgEmployee.DataKeys[e.Item.ItemIndex]);
        }
        else if (e.CommandName == "Delete")
        {
            DepartmentBAL objBAL = new DepartmentBAL ();
            CreateDepartmentBO objBO = new CreateDepartmentBO ();
            try
            {
                objBO.DepartmentNo = int.Parse(dgEmployee.DataKeys[e.Item.ItemIndex].ToString());
                objBAL.DeleteEmpAccount(objBO);
                GetDetails();
            }
            catch
            {
                throw;
            }
        }
    }
   
}