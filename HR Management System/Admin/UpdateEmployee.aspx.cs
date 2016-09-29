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

public partial class Admin_UpdateEmployee : System.Web.UI.Page
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
        CreateEmployeeBAL objBAL = new CreateEmployeeBAL();
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
            Response.Redirect("CreateEmployee.aspx?Id=" + dgEmployee.DataKeys[e.Item.ItemIndex]);
        }
        else if (e.CommandName == "Delete")
        {
            CreateEmployeeBAL objBAL = new CreateEmployeeBAL();
            CreateEmployeeBO objBO = new CreateEmployeeBO();
            try
            {
                objBO.EmployeeNo = int.Parse(dgEmployee.DataKeys[e.Item.ItemIndex].ToString());
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
