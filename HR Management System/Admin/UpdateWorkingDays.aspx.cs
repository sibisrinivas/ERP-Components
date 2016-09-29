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

public partial class Admin_UpdateWorkingDays : System.Web.UI.Page
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
        WorkingBAL objBAL = new WorkingBAL ();
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
            Response.Redirect("WorkingDays.aspx?Id=" + dgEmployee.DataKeys[e.Item.ItemIndex]);
        }
        else if (e.CommandName == "Delete")
        {
            WorkingBAL objBAL = new WorkingBAL();
            CreateWorking objBO = new CreateWorking();
            try
            {
                objBO.WorkingID = int.Parse(dgEmployee.DataKeys[e.Item.ItemIndex].ToString());
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
