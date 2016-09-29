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

public partial class HR_PaySlips : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CreateEmployeeDAL emp = new CreateEmployeeDAL();
            ddlEmp.DataSource = emp.GetDetails();
            DataSet ds = new DataSet();
            ds = emp.GetDetails();
            for (int Emp = 0; Emp < ds.Tables[0].Rows.Count; Emp++)
            {
                ddlEmp.Items.Add("HRMS-0" + ds.Tables[0].Rows[Emp]["EmpNo"].ToString());
            }
        }
    }
    string EId;
    //double sal;
    protected void ddlEmp_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlEmp.SelectedIndex != 0)
        {
            string E = ddlEmp.SelectedItem.Text;
            string[] EmpSplit = new string[7];
            char[] split ={ '0' };
            EmpSplit = E.Split(split);
            EId = EmpSplit[1];
            Session["ID"] = EId.ToString();
            string sqlstr = "select FirstName+'.'+MiddleName+' '+LastName as EmpName,JobTitle,Basic from tblEmployee where EmpNo=" + EId;
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConn"].ToString());
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlstr, cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lblName.Text = ds.Tables[0].Rows[0]["EmpName"].ToString();
            lblDesignation.Text = ds.Tables[0].Rows[0]["JobTitle"].ToString();
            lblConsole.Text = ds.Tables[0].Rows[0]["Basic"].ToString();
            da.Dispose();
            cn.Close();
            ddlMonth.Enabled = true;
            lblConsole.Visible = false;
            //lblLOP.Visible = false;
            ddlMonth.SelectedIndex = 0;
            lblPayDays.Text = "";
            lblDA.Text = "";
            lblHRA.Text = "";
            lblConvay.Text = "";
            lblMA.Text = "";
            lblOthers1.Text = "";
            lblEPF.Text = "";
            lblESI.Text = "";
            lblProfTax.Text = "";
            lblTotalDeductions.Text = "";
            lblLOP.Text = "";
            lblTotalSalary.Text = "";
            lblNetSal.Text = "";

        }
        else
        {
            lblName.Text = "";
            lblDesignation.Text = "";
            ddlMonth.SelectedIndex = 0;
            ddlMonth.Enabled = false;
            lblPayDays.Text = "";
            lblConsole.Visible = false;
            //lblLOP.Visible = false;
            lblDA.Text = "";
            lblHRA.Text = "";
            lblConvay.Text = "";
            lblMA.Text = "";
            lblOthers1.Text = "";
            lblEPF.Text = "";
            lblESI.Text = "";
            lblProfTax.Text = "";
            lblTotalDeductions.Text = "";
            lblLOP.Text = "";
            lblTotalSalary.Text = "";
            lblNetSal.Text = "";
            //Page.RegisterStartupScript("SS", "<scrip> alert('Select EmpId');</script>");
        }

    }
    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlMonth.SelectedIndex != 0)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConn"].ToString());
            cn.Open();
            string str = "select count(Status)as Days from tblAttendance  where EmpNo=" + Session["ID"].ToString() + " and CreateDate like '%/" + ddlMonth.SelectedIndex + "/%'";
            SqlDataAdapter da = new SqlDataAdapter(str, cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lblPayDays.Text = ds.Tables[0].Rows[0]["Days"].ToString();
            lblConsole.Visible = true;
            //lblLOP.Visible = true;
            lblDA.Text = "00.00";
            lblHRA.Text = "00.00";
            lblConvay.Text = "00.00";
            lblMA.Text = "00.00";
            lblOthers1.Text = "00.00";
            lblEPF.Text = "00.00";
            lblESI.Text = "00.00";
            double tax = 200;
            lblProfTax.Text = tax.ToString();
            int dt = 30 - int.Parse(lblPayDays.Text);
            double salary = dt * double.Parse(lblConsole.Text) / 30;
            string s = salary.ToString();
            string[] s1 = new string[3];
            char[] ch ={ '.' };
            s1 = s.Split(ch);
            lblLOP.Text = s1[0].ToString() + ".00";
            string ss = (salary + tax).ToString();
            string[] ss1 = new string[3];
            char[] ch1 ={ '.' };
            ss1 = ss.Split(ch1);
            lblTotalDeductions.Text = ss1[0].ToString() + ".00";
            lblTotalSalary.Text = (double.Parse(lblConsole.Text) - double.Parse(lblTotalDeductions.Text)).ToString() + ".00";
            lblNetSal.Text = lblTotalSalary.Text + "/-";
        }
        else
        {
            lblPayDays.Text = "";
            lblConsole.Visible = false;
            lblDA.Text = "";
            lblHRA.Text = "";
            lblConvay.Text = "";
            lblMA.Text = "";
            lblOthers1.Text = "";
            lblEPF.Text = "";
            lblESI.Text = "";
            lblProfTax.Text = "";
            lblTotalDeductions.Text = "";
            lblLOP.Text = "";
            lblTotalSalary.Text = "";
            lblNetSal.Text = ""; 
        }
    }
}
