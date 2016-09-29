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
/// Summary description for HomeLoginDAL
/// </summary>
public class HomeLoginDAL
{
	public HomeLoginDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    //protected void btnSubmit_Click(object sender, EventArgs e)
    //{
    //    CheckLogin();
    //}
    //private void CheckLogin()
    //{
    //    CreateDepartmentBO objBO = new CreateDepartmentBO();
    //    objUserManagementBAL objBAL = new UserManagementBAL();

    //    objUserManagementBO.UserName = txtUserName.Text.Trim();
    //    objUserManagementBO.Password = txtPassword.Text.Trim();
    //    try
    //    {
    //        DataSet ds = new DataSet();
    //        ds = objUserManagementBAL.CheckLogin(objUserManagementBO);
    //        if (ds != null)
    //        {
    //            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
    //            {
    //                if (ds.Tables[0].Rows[i][6].ToString() == txtUserName.Text.Trim().ToString() && ds.Tables[0].Rows[i][7].ToString() == txtPassword.Text.Trim().ToString())
    //                {
    //                    Session["UserName"] = txtUserName.Text.Trim();
    //                    Session["Type"] = ds.Tables[0].Rows[i][8].ToString();
    //                    Server.Transfer("Home.aspx");
    //                }
    //            }
    //            lblError.Text = "Invalid UserName/Password";
    //        }
    //        else
    //        {
    //            lblError.Text = "Invalid UserName/Password";
    //        }
    //    }
    //    catch
    //    {

    //    }
    //}
   

}
