using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ResumeDAL
/// </summary>
public class ResumeDAL
{
    string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();   
    
	public ResumeDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ResumeInsert(ResumeBO  objResume)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        SqlCommand insertcmd = new SqlCommand("sp_tblResume", connection);
        insertcmd.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = insertcmd.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "I";
        insertcmd.Parameters.AddWithValue("@FirstName", objResume.FirstName);
        insertcmd.Parameters.AddWithValue("@MiddleName", objResume.MiddleName);
        insertcmd.Parameters.AddWithValue("@LastName", objResume.LastName);
        insertcmd.Parameters.AddWithValue("@DOB", objResume.DateOfBirth);
        insertcmd.Parameters.AddWithValue("@Gender", objResume.Gender);
        insertcmd.Parameters.AddWithValue("@CurrentAddress", objResume.CurrentAddress);
        insertcmd.Parameters.AddWithValue("@Permanentaddress", objResume.PermanentAddress);
        insertcmd.Parameters.AddWithValue("@City", objResume.City);
        insertcmd.Parameters.AddWithValue("@PinCode", objResume.PinCode);
        insertcmd.Parameters.AddWithValue("@State", objResume.State);
        insertcmd.Parameters.AddWithValue("@Country", objResume.Country);
        insertcmd.Parameters.AddWithValue("@Email", objResume.Email);
        insertcmd.Parameters.AddWithValue("@Phone", objResume.PhoneNo);
        insertcmd.Parameters.AddWithValue("@Years", objResume.Years);
        insertcmd.Parameters.AddWithValue("@Months", objResume.Months);
        insertcmd.Parameters.AddWithValue("@FunctionalArea", objResume.FunctionalArea);
        insertcmd.Parameters.AddWithValue("@Industry", objResume.Industry);
        insertcmd.Parameters.AddWithValue("@KeySkills", objResume.KeySkills);
        insertcmd.Parameters.AddWithValue("@ResumeHeadLine", objResume.ResumeHEadLine);
        insertcmd.Parameters.AddWithValue("@Qualification", objResume.Qualification);
        insertcmd.Parameters.AddWithValue("@Specialization", objResume.Specialization);
        insertcmd.Parameters.AddWithValue("@Percentage", objResume.Percentage);
        insertcmd.Parameters.AddWithValue("@Attachment", objResume.AttachResume);

        try
        {
            return insertcmd.ExecuteNonQuery();
        }
        catch
        {
            throw;
        }
        finally
        {
            insertcmd.Dispose();
            connection.Close();
        }
    }
    public DataSet GetDetails()
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();

        SqlDataAdapter SqlDa = new SqlDataAdapter("sp_tblResume", connection);
        DataSet ds = new DataSet();
        SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlDa.SelectCommand.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "A";

        SqlDa.Fill(ds);
        return ds;
    }
    public DataSet GetDetailsById(ResumeBO objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();

        SqlDataAdapter SqlDa = new SqlDataAdapter("sp_tblResume", connection);
        DataSet ds = new DataSet();
        SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlDa.SelectCommand.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "B";

        SqlParameter p2 = SqlDa.SelectCommand.Parameters.Add("@ResumeID", SqlDbType.Int, 4);
        p2.Direction = ParameterDirection.Input;
        p2.Value = objBO.ResumeID;

        SqlDa.Fill(ds);
        return ds;
    }
}
