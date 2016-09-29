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
/// Summary description for CreateDepartmentDAL
/// </summary>
public class CreateDepartmentDAL
{
    string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
    
	public CreateDepartmentDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int DeptInsert(CreateDepartmentBO objBO)
    {
        //string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        SqlCommand insertcmd = new SqlCommand("sp_tblDepartment", connection);
        insertcmd.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = insertcmd.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "I";

        insertcmd.Parameters.AddWithValue("@DeptName", objBO.DepartmentName);
        insertcmd.Parameters.AddWithValue("@LOC", objBO.Location);        
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

        SqlDataAdapter SqlDa = new SqlDataAdapter("sp_tblDepartment", connection);
        DataSet ds = new DataSet();
        SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlDa.SelectCommand.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "A";

        SqlDa.Fill(ds);
        return ds;
    }
    public DataSet GetDetailsById(CreateDepartmentBO objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();

        SqlDataAdapter SqlDa = new SqlDataAdapter("sp_tblDepartment", connection);
        DataSet ds = new DataSet();
        SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlDa.SelectCommand.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "B";

        SqlParameter p2 = SqlDa.SelectCommand.Parameters.Add("@DeptNo", SqlDbType.Int, 4);
        p2.Direction = ParameterDirection.Input;
        p2.Value = objBO.DepartmentNo;

        SqlDa.Fill(ds);
        return ds;
    }
    public int Deptupdate(CreateDepartmentBO objBO)
    {
        // string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        SqlCommand updatecmd = new SqlCommand("sp_tblDepartment", connection);
        updatecmd.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = updatecmd.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "U";

        updatecmd.Parameters.AddWithValue("@DeptNo", objBO.DepartmentNo);
        updatecmd.Parameters.AddWithValue("@DeptName", objBO.DepartmentName);
        updatecmd.Parameters.AddWithValue("@LOC", objBO.Location);
        
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
    public int DeleteDeptAccount(CreateDepartmentBO objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        try
        {

            SqlCommand SqlDeleteCmd = new SqlCommand("sp_tblDepartment", connection);

            SqlDeleteCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = SqlDeleteCmd.Parameters.Add("@Type", SqlDbType.Char, 1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = "D";

            SqlParameter p2 = SqlDeleteCmd.Parameters.Add("@DeptNo", SqlDbType.Int, 4);
            p2.Direction = ParameterDirection.Input;
            p2.Value = objBO.DepartmentNo;

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
