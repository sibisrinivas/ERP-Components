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
using System.Data.SqlClient;

public partial class Home_LoginPage : System.Web.UI.Page
{
    string str = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        CheckLogin();
    }
    private void CheckLogin()
    {
        CreateEmployeeBO  objBO = new  CreateEmployeeBO ();
        CreateEmployeeBAL objBAL = new CreateEmployeeBAL();
        objBO.UserName = txtLogin.Text.Trim();
        objBO.Password = txtPassword.Text.Trim();
        try
        {
            DataSet ds = new DataSet();
            ds = objBAL.CheckLogin(objBO);
            if (ds != null)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (ds.Tables[0].Rows[i]["UserName"].ToString() == txtLogin.Text.Trim().ToString() && ds.Tables[0].Rows[i]["Password"].ToString() == txtPassword.Text.Trim().ToString())
                    {
                        Session["UserName"] = txtLogin.Text.Trim();
                        Session["Type"] = ds.Tables[0].Rows[i]["UserType"].ToString();
                        Session["EmpNo"] = ds.Tables[0].Rows[i]["EmpNo"].ToString();
                        Session["SkillSet"] = ds.Tables[0].Rows[i]["SkillSet"].ToString();
                        if (Session["Type"].ToString() == "Admin")
                        {
                            str = Session["EmpNo"].ToString();
                           Response.Redirect("~/Admin/WelcomeAdmin.aspx");
                            //Server.Transfer("~/Admin/WelcomeAdmin.aspx");
                        }
                        else if (Session["Type"].ToString() == "HR")
                        {
                            str = Session["EmpNo"].ToString();
                            Response.Redirect("~/HR/WelcomeHR.aspx");
                            //Server.Transfer("~/HR/WelcomeHR.aspx");
                        }
                        else if (Session["Type"].ToString() == "Emp")
                        {
                            str = Session["EmpNo"].ToString();
                            Response.Redirect("~/Employee/EmpWelcome.aspx");
                            //Server.Transfer("~/Employee/EmpWelcome.aspx");
                        }
                    }
                }
                lblError.Text = "Invalid UserName / Password";
            }
            else
            {
                lblError.Text = "Invalid UserName / Password";
            }

        }
        catch (Exception ex)
        {
            Page.RegisterStartupScript("SS", "<script> alert('" + ex.Message.ToString() + "'); </script>");

        }
        finally
        {
            if (str != "")
            {
                string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
                SqlConnection connection = new SqlConnection(strconnection);
                connection.Open();
                SqlCommand cmd = new SqlCommand("select EmpNo,CreateDate from tblAttendance where EmpNo=" + Session["EmpNo"].ToString() + " and CreateDate='" + DateTime.Now.ToString("dd/M/yyyy") + "'", connection);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds1 = new DataSet();
                adp.Fill(ds1, "tblAttendance");
                connection.Close();
                if (ds1.Tables["tblAttendance"].Rows.Count==0)
                {
                    connection.Open();
                    SqlCommand cmdDt = new SqlCommand("insert into tblAttendance(EmpNo,CreateDate,Status) values(" + Session["EmpNo"].ToString() + ",'" + DateTime.Now.ToString("dd/M/yyyy") + "','P')", connection);
                    int Dat = cmdDt.ExecuteNonQuery();
                    if (Dat == 1)
                    {
                        lblError.Text = "Successfully Attended";
                    }
                    connection.Close();
                }
            }
        }
    }
}
