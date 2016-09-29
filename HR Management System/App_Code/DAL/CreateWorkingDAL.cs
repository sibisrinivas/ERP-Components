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
/// Summary description for CreateWorking
/// </summary>
public class CreateWorkingDAL
{
    string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();

	public CreateWorkingDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int WorkInsert(CreateWorking objBO)
    {
        //string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        SqlCommand insertcmd = new SqlCommand("sp_tblWorking", connection);
        insertcmd.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = insertcmd.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "I";

        insertcmd.Parameters.AddWithValue("@WMonth", objBO.Month);
        insertcmd.Parameters.AddWithValue("@WYear", objBO.Year);
        insertcmd.Parameters.AddWithValue("@WorkingDays", objBO.WorkingDays);
        insertcmd.Parameters.AddWithValue("@Holidays", objBO.Holidays);  

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

        SqlDataAdapter SqlDa = new SqlDataAdapter("sp_tblWorking", connection);
        DataSet ds = new DataSet();
        SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlDa.SelectCommand.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "A";

        SqlDa.Fill(ds);
        return ds;
    }
    public DataSet GetDetailsById(CreateWorking  objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();

        SqlDataAdapter SqlDa = new SqlDataAdapter("sp_tblWorking", connection);
        DataSet ds = new DataSet();
        SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlDa.SelectCommand.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "B";

        SqlParameter p2 = SqlDa.SelectCommand.Parameters.Add("@WorkingDaysID", SqlDbType.Int, 4);
        p2.Direction = ParameterDirection.Input;
        p2.Value = objBO.WorkingID;

        SqlDa.Fill(ds);
        return ds;
    }
    public int Deptupdate(CreateWorking  objBO)
    {
        // string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        SqlCommand updatecmd = new SqlCommand("sp_tblWorking", connection);
        updatecmd.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = updatecmd.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "U";

        updatecmd.Parameters.AddWithValue("@WorkingDaysID", objBO.WorkingID);
        updatecmd.Parameters.AddWithValue("@WMonth", objBO.Month);
        updatecmd.Parameters.AddWithValue("@WYear", objBO.Year);
        updatecmd.Parameters.AddWithValue("@WorkingDays", objBO.WorkingDays);
        updatecmd.Parameters.AddWithValue("@Holidays", objBO.Holidays);  


        try
        {
            return updatecmd.ExecuteNonQuery();
        }
        catch
        {
            throw;
        }
        finally
        {
            updatecmd.Dispose();
            connection.Close();
        }
    }
    public int DeleteDeptAccount(CreateWorking objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        try
        {

            SqlCommand SqlDeleteCmd = new SqlCommand("sp_tblWorking", connection);

            SqlDeleteCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = SqlDeleteCmd.Parameters.Add("@Type", SqlDbType.Char, 1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = "D";

            SqlParameter p2 = SqlDeleteCmd.Parameters.Add("@DeptNo", SqlDbType.Int, 4);
            p2.Direction = ParameterDirection.Input;
            p2.Value = objBO.WorkingID;

            return SqlDeleteCmd.ExecuteNonQuery();
            GetDetails();

        }
        catch
        {
            throw;
        }
        finally
        {
            connection.Close();
        }

    }

}
