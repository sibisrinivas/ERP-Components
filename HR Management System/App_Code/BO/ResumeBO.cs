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
/// Summary description for ResumeBO
/// </summary>
public class ResumeBO
{
	public ResumeBO()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    #region properties
    private int _RID;

    public int ResumeID
    {
        get { return _RID; }
        set { _RID = value; }
    }
    private string _RFName;

    public string FirstName
    {
        get { return _RFName; }
        set { _RFName = value; }
    }
    private string _RMName;

    public string MiddleName
    {
        get { return _RMName; }
        set { _RMName = value; }
    }
    private string _RLName;

    public string LastName
    {
        get { return _RLName; }
        set { _RLName = value; }
    }
    private string _RDOB;

    public string DateOfBirth
    {
        get { return _RDOB; }
        set { _RDOB = value; }
    }
    private string _RGender;

    public string Gender
    {
        get { return _RGender; }
        set { _RGender = value; }
    }
    private string _RCurrent;

    public string CurrentAddress
    {
        get { return _RCurrent; }
        set { _RCurrent = value; }
    }
    private string _RPermanent;

    public string PermanentAddress
    {
        get { return _RPermanent; }
        set { _RPermanent = value; }
    }
    private string _NCity;

    public string City
    {
        get { return _NCity; }
        set { _NCity = value; }
    }
	
    private string _RPin;

    public string PinCode
    {
        get { return _RPin; }
        set { _RPin = value; }
    }
    private string _RState;

    public string State
    {
        get { return _RState; }
        set { _RState = value; }
    }
    private string _RCountry;

    public string Country
    {
        get { return _RCountry; }
        set { _RCountry = value; }
    }
    private string _REmail;

    public string Email
    {
        get { return _REmail; }
        set { _REmail = value; }
    }
    private string _RPhone;

    public string PhoneNo
    {
        get { return _RPhone; }
        set { _RPhone = value; }
    }
    private int _RYear;
        
    public int Years
    {
        get { return _RYear; }
        set { _RYear = value; }
    }
    private int _RMonth ;

    public int Months
    {
        get { return _RMonth; }
        set { _RMonth = value; }
    }
    private string _RFunction;

    public string FunctionalArea
    {
        get { return _RFunction; }
        set { _RFunction = value; }
    }
    private string _RIndus;

    public string Industry
    {
        get { return _RIndus; }
        set { _RIndus = value; }
    }
    private string _RKey;

    public string KeySkills
    {
        get { return _RKey; }
        set { _RKey = value; }
    }
    private string _RHeadline;

    public string ResumeHEadLine
    {
        get { return _RHeadline; }
        set { _RHeadline = value; }
    }
    private string _RQualification;

    public string Qualification
    {
        get { return _RQualification; }
        set { _RQualification = value; }
    }
    private string _RSpecialization;

    public string Specialization
    {
        get { return _RSpecialization; }
        set { _RSpecialization = value; }
    }
    private int _RPercentage;

    public int Percentage
    {
        get { return _RPercentage; }
        set { _RPercentage = value; }
    }
    private string _RAttach;

    public string AttachResume
    {
        get { return _RAttach; }
        set { _RAttach = value; }
    }	
	
    #endregion  properties

}
