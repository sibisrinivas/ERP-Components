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

public partial class Admin_EmpCreate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetDepartmentDetails();

            if (Request.QueryString["Id"] != null)
            {
                btnNew.Text = "Update";
                GetDetailsById();
            }
        }
    }
    private void GetDepartmentDetails()
    {
        DepartmentBAL objBAL = new DepartmentBAL();
        try
        {
            DataSet ds = new DataSet();
            ds = objBAL.GetDetails();
            if (ds != null)
            {
                ddlDept.DataSource = ds;
                ddlDept.DataTextField = "DeptName";
                ddlDept.DataValueField = "DeptName";
                ddlDept.DataBind();
            }
        }
        catch
        {
            throw;
        }
    }
    private void GetDetailsById()
    {       
         CreateEmployeeBO objBO = new CreateEmployeeBO();
         CreateEmployeeBAL objBAL = new CreateEmployeeBAL();

        try
        {
            DataSet ds = new DataSet();
            objBO.EmployeeNo = int.Parse(Request.QueryString["Id"].ToString());
            ds = objBAL.GetDetailsById(objBO);
            if (ds != null)
            {

                txtUserName.Text = ds.Tables[0].Rows[0]["UserName"].ToString();
                txtPasssword.Text = ds.Tables[0].Rows[0]["Password"].ToString();
                rblType.Items.FindByValue(ds.Tables[0].Rows[0]["UserType"].ToString()).Selected = true;                
                txtFirstName.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
                txtMName.Text = ds.Tables[0].Rows[0]["MiddleName"].ToString();
                txtLName.Text = ds.Tables[0].Rows[0]["LastName"].ToString();
                txtFName.Text = ds.Tables[0].Rows[0]["FatherName"].ToString();
                txtDOB.Text = ds.Tables[0].Rows[0]["DOB"].ToString();
                txtDOJ.Text = ds.Tables[0].Rows[0]["DOJ"].ToString();
                txtSkills.Text = ds.Tables[0].Rows[0]["SkillSet"].ToString();
                ddlDept.SelectedItem.Text = ds.Tables[0].Rows[0]["DeptNo"].ToString();
                txtJobTitle.Text = ds.Tables[0].Rows[0]["JobTitle"].ToString();
                txtBasic.Text = ds.Tables[0].Rows[0]["Basic"].ToString();
                txtCurrentAdd.Text = ds.Tables[0].Rows[0]["CAddress"].ToString();
                txtPermanentAdd.Text = ds.Tables[0].Rows[0]["PAddress"].ToString();
                txtCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
                txtState.Text = ds.Tables[0].Rows[0]["State"].ToString();
                txtCountry.Text = ds.Tables[0].Rows[0]["Country"].ToString();
                txtPin.Text = ds.Tables[0].Rows[0]["PinCode"].ToString();
                ddlGender.SelectedItem.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
                ddlMartial.SelectedItem.Text = ds.Tables[0].Rows[0]["MartialStatus"].ToString();
                txtSpouse.Text = ds.Tables[0].Rows[0]["Spouse"].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();
                txtPhone.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
                txtCompany.Text = ds.Tables[0].Rows[0]["Company"].ToString();
                txtAccount.Text = ds.Tables[0].Rows[0]["AccountNo"].ToString();
                
            }
        }
        catch
        {
            throw;
        }
    }
    protected void Employeeinsertion(object sender, EventArgs e)
    {
        CreateEmployeeBAL objBAL = new CreateEmployeeBAL();
        CreateEmployeeBO objBO = new CreateEmployeeBO();

        if (Request.QueryString["Id"] != null)
        {

            try
            {
               
                objBO.EmployeeNo = int.Parse(Request.QueryString["Id"].ToString());
                objBO.UserName = txtUserName.Text;
                objBO.Password = txtPasssword.Text;
                objBO.UserType = rblType.Text;
                objBO.FirstName = txtFirstName.Text;
                objBO.MiddleName = txtMName.Text;
                objBO.LastName = txtLName.Text;
                objBO.FatherName = txtFName.Text;
                objBO.DateofBirth = txtDOB.Text;
                objBO.DateOfJoining = txtDOJ.Text;
                objBO.Skill = txtSkills.Text;
                objBO.Department = ddlDept.SelectedItem.Text;
                objBO.JobTitle = txtJobTitle.Text;
                objBO.Basic = float.Parse(txtBasic.Text);
                objBO.CurrentAddress = txtCurrentAdd.Text;
                objBO.PermanentAddress = txtPermanentAdd.Text;
                objBO.City = txtCity.Text;
                objBO.State = txtCountry.Text;
                objBO.Country = txtPin.Text;
                objBO.Pincode = txtPin.Text;
                objBO.Gender = ddlGender.SelectedValue;
                objBO.MartialStatus = ddlMartial.SelectedValue;
                objBO.SpouseName = txtSpouse.Text;
                objBO.EMaiLID = txtEmail.Text;
                objBO.PhoneNo = txtPhone.Text;
                objBO.CompanyName = txtCompany.Text;
                objBO.AccountNo = txtAccount.Text;

                objBAL.UpdateEmpAccount(objBO);
                Server.Transfer("UpdateEmployee.aspx");

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

                objBO.UserName = txtUserName.Text;
                objBO.Password = txtPasssword.Text;
                objBO.UserType = rblType.Text;
                objBO.FirstName = txtFirstName.Text;
                objBO.MiddleName = txtMName.Text;
                objBO.LastName = txtLName.Text;
                objBO.FatherName = txtFName.Text;
                objBO.DateofBirth = txtDOB.Text;
                objBO.DateOfJoining = txtDOJ.Text;
                objBO.Skill = txtSkills.Text;
                objBO.Department = ddlDept.SelectedItem.Text;
                objBO.JobTitle = txtJobTitle.Text;
                objBO.Basic = float.Parse(txtBasic.Text);
                objBO.CurrentAddress = txtCurrentAdd.Text;
                objBO.PermanentAddress = txtPermanentAdd.Text;
                objBO.City = txtCity.Text;
                objBO.State = txtCountry.Text;
                objBO.Country = txtPin.Text;
                objBO.Pincode = txtPin.Text;
                objBO.Gender = ddlGender.SelectedValue;
                objBO.MartialStatus = ddlMartial.SelectedValue;
                objBO.SpouseName = txtSpouse.Text;
                objBO.EMaiLID = txtEmail.Text;
                objBO.PhoneNo = txtPhone.Text;
                objBO.CompanyName = txtCompany.Text;
                objBO.AccountNo = txtAccount.Text;

                objBAL.EmployeeIns(objBO);
                Response.Redirect("UpdateEmployee.aspx");
            }
            catch
            {
                throw;
            }
        }

    }
    
}
