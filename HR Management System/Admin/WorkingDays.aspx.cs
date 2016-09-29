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

public partial class Admin_WorkingDays : System.Web.UI.Page
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
        //ddlBranchName.Items.Clear();
        //ddlGroupName.Items.Clear();

        CreateWorking objBO = new  CreateWorking();
        WorkingBAL objBAL = new WorkingBAL();
        try
        {
            DataSet ds = new DataSet();
            objBO.WorkingID  = int.Parse(Request.QueryString["Id"].ToString());
            ds = objBAL.GetDetailsById(objBO);
            if (ds != null)
            {
                txtMonth.Text = ds.Tables[0].Rows[0]["WMonth"].ToString();
                txtYear.Text = ds.Tables[0].Rows[0]["WYear"].ToString();               
                txtWorkday.Text = ds.Tables[0].Rows[0]["WorkingDays"].ToString();
                txtHoliday.Text = ds.Tables[0].Rows[0]["Holidays"].ToString();
            }
        }
        catch
        {
            throw;
        }
    }
    protected void Employeeinsertion(object sender, EventArgs e)
    {
        //int intresult = 0;
        CreateWorking objBO = new CreateWorking();
        WorkingBAL objBAL = new WorkingBAL();

        if (Request.QueryString["Id"] != null)
        {

            try
            {
                //intresult = objBAL.EmployeeIns(objBO);
                objBO.WorkingID  = int.Parse(Request.QueryString["Id"].ToString());
                objBO.Year = int.Parse(txtYear.Text);
                objBO.Month = txtMonth.Text;
                objBO.WorkingDays = int.Parse(txtWorkday.Text);
                objBO.Holidays = int.Parse(txtHoliday.Text);


                objBAL.UpdateEmpAccount(objBO);
                Server.Transfer("UpdateWorkingDays.aspx");

            }
            catch
            {
                throw;
            }

        }
        else
        {
            try
            {

                objBO.Year = int.Parse(txtYear.Text);
                objBO.Month = txtMonth.Text;
                objBO.WorkingDays = int.Parse(txtWorkday.Text);
                objBO.Holidays = int.Parse(txtHoliday.Text);


                objBAL.EmployeeIns(objBO);
                Response.Redirect("UpdateWorkingDays.aspx");
            }
            catch
            {
                throw;
            }
        }

    }
}
