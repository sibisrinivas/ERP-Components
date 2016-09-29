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

public partial class New_Aspriant_NewAspriant : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Resumeinsertion(object sender, EventArgs e)
    {

        int intresult = 0;
        ResumeBAL objBAL = new ResumeBAL ();
        ResumeBO objBO = new ResumeBO ();

        objBO.FirstName = txtFName.Text;
        objBO.MiddleName = txtMName.Text; 
        objBO.LastName =txtLName.Text;
        objBO.DateOfBirth = txtDOB.Text;
        objBO.Gender = ddlGender.SelectedValue;
        objBO.CurrentAddress =txtCurrent.Text;
        objBO.PermanentAddress = txtPermanent.Text;
        objBO.City = txtCity.Text;
        objBO.PinCode = txtPin.Text;
        objBO.State = txtState.Text;
        objBO.Country  = txtCountry.Text;
        objBO.Email  = txtEmail.Text ;
        objBO.PhoneNo  = txtPhone.Text;
        objBO.Years = int.Parse(ddlYears.SelectedValue);
        objBO.Months = int.Parse(ddlMonths.SelectedValue);
        objBO.FunctionalArea = ddlFunctional.SelectedValue;
        objBO.Industry = ddlIndustry.SelectedValue;
        objBO.KeySkills = txtKey.Text;
        objBO.ResumeHEadLine = txtResumeHead.Text;
        objBO.Qualification = ddlQualification.SelectedValue;
        objBO.Specialization = txtSpecialization.Text;
        objBO.Percentage = int.Parse(txtPercentage.Text);
        objBO.AttachResume = FULAttach.FileName;
        FULAttach.SaveAs(Server.MapPath("~/Resume/"+ FULAttach.FileName.ToString()));
        try
        {
            intresult = objBAL.ResumeIns(objBO);
            if (intresult > 0)
            {
                Page.RegisterStartupScript("aa", "<script>alert('New Record Inserted Succefully')</script>");

            }
            else
            {
                                
            }
        }
        catch
        {
            throw;
        }
        finally
        {
            
        }

    }

}
