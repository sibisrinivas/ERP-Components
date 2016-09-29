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
/// Summary description for NewAspriantBO
/// </summary>
public class CreateEmployeeBO
{
    public CreateEmployeeBO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    #region properties

    private int _NEmpNo;

    public int EmployeeNo
    {
        get { return _NEmpNo; }
        set { _NEmpNo = value; }
    }
    private string _NUser;

    public string UserName
    {
        get { return _NUser; }
        set { _NUser = value; }
    }
    private string _NPass;

    public string Password
    {
        get { return _NPass; }
        set { _NPass = value; }
    }
    private string  _NType;

    public string UserType
    {
        get { return _NType; }
        set { _NType = value; }
    }
    private string _NFName;

    public string FirstName
    {
        get { return _NFName; }
        set { _NFName = value; }
    }
    private string _NMName;

    public string MiddleName
    {
        get { return _NMName; }
        set { _NMName = value; }
    }
    private string _NLName;

    public string LastName
    {
        get { return _NLName; }
        set { _NLName = value; }
    }
    private string _NFaName;

    public string FatherName
    {
        get { return _NFaName; }
        set { _NFaName = value; }
    }
	
    private string _NDOB;

    public string DateofBirth
    {
        get { return _NDOB; }
        set { _NDOB = value; }
    }
    private string _NGender;

    public string Gender
    {
        get { return _NGender; }
        set { _NGender = value; }
    }

    private string _NDOJ;

    public string DateOfJoining
    {
        get { return _NDOJ; }
        set { _NDOJ = value; }
    }
    private string _NCurrent;

    public string CurrentAddress
    {
        get { return _NCurrent; }
        set { _NCurrent = value; }
    }
    private string _NPermanent;

    public string PermanentAddress
    {
        get { return _NPermanent; }
        set { _NPermanent = value; }
    }
    private string _NCity;

    public string City
    {
        get { return _NCity; }
        set { _NCity = value; }
    }
    private string _NPin;

    public string Pincode
    {
        get { return _NPin; }
        set { _NPin = value; }
    }
    private string _NState;

    public string State
    {
        get { return _NState; }
        set { _NState = value; }
    }
    private string _NContry;

    public string Country
    {
        get { return _NContry; }
        set { _NContry = value; }
    }
    private string _NSkill;

    public string Skill
    {
        get { return _NSkill; }
        set { _NSkill = value; }
    }
    
    private float  _NBasic;

    public float  Basic
    {
        get { return _NBasic; }
        set { _NBasic = value; }
    }
    private string _NDept;

    public string Department
    {
        get { return _NDept; }
        set { _NDept = value; }
    }
    private string _NJob;

    public string JobTitle
    {
        get { return _NJob; }
        set { _NJob = value; }
    }
    private string _NMartial;

    public string MartialStatus
    {
        get { return _NMartial; }
        set { _NMartial = value; }
    }
    private string _NSpouse;

    public string SpouseName
    {
        get { return _NSpouse; }
        set { _NSpouse = value; }
    }
    private string _NEmail;

    public string EMaiLID
    {
        get { return _NEmail; }
        set { _NEmail = value; }
    }
    private string _NPhone;

    public string PhoneNo
    {
        get { return _NPhone; }
        set { _NPhone = value; }
    }
    private string _NCompany;

    public string CompanyName
    {
        get { return _NCompany; }
        set { _NCompany = value; }
    }
    private string _NAccount;

    public string AccountNo
    {
        get { return _NAccount; }
        set { _NAccount = value; }
    }   
    #endregion properties
}
