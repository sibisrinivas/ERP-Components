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

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            txtUserName.Text = Session["UserName"].ToString();
        }
    }
    private void UpdatePassword()
    {
        try
        {
            CreateEmployeeBO objBO = new CreateEmployeeBO();
            CreateEmployeeBAL objBAL = new  CreateEmployeeBAL();           

            objBO.EmployeeNo = int.Parse(Session["EmpNo"].ToString());
            objBO.Password  = txtNew.Text.Trim();
            //txtUserName.Text= Session[

           int i=objBAL.UpdatePassword(objBO);
           if (i > 0)
           {
               Page.RegisterStartupScript("aa", "<script>alert('Password updated Successfully')</script>");
           }
           else
           {
               Page.RegisterStartupScript("aa", "<script>alert('Password updation Failed')</script>");

           }

        }
        catch
        {
            throw;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UpdatePassword();
    }
}
