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
/// Summary description for CreateWorking
/// </summary>
public class CreateWorking
{
	public CreateWorking()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    # region properties
    private int _NID;

    public int WorkingID
    {
        get { return _NID; }
        set { _NID = value; }
    }
	
    private string _NMonth;

    public string Month
    {
        get { return _NMonth; }
        set { _NMonth = value; }
    }
    private int _NYear;

    public int Year
    {
        get { return _NYear; }
        set { _NYear = value; }
    }
    private int _NWorking;

    public int WorkingDays
    {
        get { return _NWorking; }
        set { _NWorking = value; }
    }
    private int _NHolidays;

    public int Holidays
    {
        get { return _NHolidays; }
        set { _NHolidays = value; }
    }
	  
	
    #endregion properties
}               
