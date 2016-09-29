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
/// Summary description for CreateEmployee
/// </summary>
public class CreateEmployeeDAL
{
    string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();


    public CreateEmployeeDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataSet CheckLogin(CreateEmployeeBO objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();

        SqlCommand SqlCmd = new SqlCommand("sp_tblEmployee", connection);
        SqlCmd.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlCmd.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "G";

        SqlParameter p2 = SqlCmd.Parameters.Add("@UserName", SqlDbType.VarChar, 50);
        p2.Direction = ParameterDirection.Input;
        p2.Value = objBO.UserName;

        SqlDataAdapter SqlDa = new SqlDataAdapter(SqlCmd);
        DataSet ds = new DataSet();
        SqlDa.Fill(ds);
        return ds;

    }
    public int EmployeeInsert(CreateEmployeeBO objEmp)
    {
        //string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        SqlCommand insertcmd = new SqlCommand("sp_tblEmployee", connection);
        insertcmd.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = insertcmd.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "I";
        insertcmd.Parameters.AddWithValue("@UserName", objEmp.UserName);
        insertcmd.Parameters.AddWithValue("@Password", objEmp.Password);
        insertcmd.Parameters.AddWithValue("@UserType", objEmp.UserType);
        insertcmd.Parameters.AddWithValue("@FirstName", objEmp.FirstName);
        insertcmd.Parameters.AddWithValue("@MiddleName", objEmp.MiddleName);
        insertcmd.Parameters.AddWithValue("@LastName", objEmp.LastName);
        insertcmd.Parameters.AddWithValue("@FatherName", objEmp.FatherName);
        insertcmd.Parameters.AddWithValue("@DOB", objEmp.DateofBirth);
        insertcmd.Parameters.AddWithValue("@DOJ", objEmp.DateOfJoining);
        insertcmd.Parameters.AddWithValue("@SkillSet", objEmp.Skill);
        insertcmd.Parameters.AddWithValue("@DeptNo", objEmp.Department);
        insertcmd.Parameters.AddWithValue("@JobTitle", objEmp.JobTitle);
        insertcmd.Parameters.AddWithValue("@Basic", objEmp.Basic);
        insertcmd.Parameters.AddWithValue("@CurrentAddress", objEmp.CurrentAddress);
        insertcmd.Parameters.AddWithValue("@PermanentAddress", objEmp.PermanentAddress);
        insertcmd.Parameters.AddWithValue("@City", objEmp.City);
        insertcmd.Parameters.AddWithValue("@State", objEmp.State);
        insertcmd.Parameters.AddWithValue("@Country", objEmp.Country);
        insertcmd.Parameters.AddWithValue("@PinCode", objEmp.Pincode);
        insertcmd.Parameters.AddWithValue("@Gender", objEmp.Gender);
        insertcmd.Parameters.AddWithValue("@MartialStatus", objEmp.MartialStatus);
        insertcmd.Parameters.AddWithValue("@Spouse", objEmp.SpouseName);
        insertcmd.Parameters.AddWithValue("@EmailID", objEmp.EMaiLID);
        insertcmd.Parameters.AddWithValue("@Phone", objEmp.PhoneNo);
        insertcmd.Parameters.AddWithValue("@Company", objEmp.CompanyName);
        insertcmd.Parameters.AddWithValue("@AccountNo", objEmp.AccountNo);

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

        SqlDataAdapter SqlDa = new SqlDataAdapter("sp_tblEmployee", connection);
        DataSet ds = new DataSet();
        SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlDa.SelectCommand.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "A";

        SqlDa.Fill(ds);
        return ds;
    }
    public DataSet GetDetailsById(CreateEmployeeBO objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();

        SqlDataAdapter SqlDa = new SqlDataAdapter("sp_tblEmployee", connection);
        DataSet ds = new DataSet();
        SqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = SqlDa.SelectCommand.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "B";

        SqlParameter p2 = SqlDa.SelectCommand.Parameters.Add("@EmpNo", SqlDbType.Int, 4);
        p2.Direction = ParameterDirection.Input;
        p2.Value = objBO.EmployeeNo;

        SqlDa.Fill(ds);
        return ds;
    }
    public int Employeeupdate(CreateEmployeeBO objBO)
    {
        // string strconnection = ConfigurationManager.ConnectionStrings["TestConn"].ToString();
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        SqlCommand updatecmd = new SqlCommand("sp_tblEmployee", connection);
        updatecmd.CommandType = CommandType.StoredProcedure;

        SqlParameter p1 = updatecmd.Parameters.Add("@Type", SqlDbType.Char, 1);
        p1.Direction = ParameterDirection.Input;
        p1.Value = "U";

        updatecmd.Parameters.AddWithValue("@EmpNo", objBO.EmployeeNo);
        updatecmd.Parameters.AddWithValue("@UserName", objBO.UserName);
        updatecmd.Parameters.AddWithValue("@Password", objBO.Password);
        updatecmd.Parameters.AddWithValue("@UserType", objBO.UserType);
        updatecmd.Parameters.AddWithValue("@FirstName", objBO.FirstName);
        updatecmd.Parameters.AddWithValue("@MiddleName", objBO.MiddleName);
        updatecmd.Parameters.AddWithValue("@LastName", objBO.LastName);
        updatecmd.Parameters.AddWithValue("@FatherName", objBO.FatherName);
        updatecmd.Parameters.AddWithValue("@DOB", objBO.DateofBirth);
        updatecmd.Parameters.AddWithValue("@DOJ", objBO.DateOfJoining);
        updatecmd.Parameters.AddWithValue("@SkillSet", objBO.Skill);
        updatecmd.Parameters.AddWithValue("@DeptNo", objBO.Department);
        updatecmd.Parameters.AddWithValue("@JobTitle", objBO.JobTitle);
        updatecmd.Parameters.AddWithValue("@Basic", objBO.Basic);
        updatecmd.Parameters.AddWithValue("@CurrentAddress", objBO.CurrentAddress);
        updatecmd.Parameters.AddWithValue("@PermanentAddress", objBO.PermanentAddress);
        updatecmd.Parameters.AddWithValue("@City", objBO.City);
        updatecmd.Parameters.AddWithValue("@State", objBO.State);
        updatecmd.Parameters.AddWithValue("@Country", objBO.Country);
        updatecmd.Parameters.AddWithValue("@PinCode", objBO.Pincode);
        updatecmd.Parameters.AddWithValue("@Gender", objBO.Gender);
        updatecmd.Parameters.AddWithValue("@MartialStatus", objBO.MartialStatus);
        updatecmd.Parameters.AddWithValue("@Spouse", objBO.SpouseName);
        updatecmd.Parameters.AddWithValue("@EmailID", objBO.EMaiLID);
        updatecmd.Parameters.AddWithValue("@Phone", objBO.PhoneNo);
        updatecmd.Parameters.AddWithValue("@Company", objBO.CompanyName);
        updatecmd.Parameters.AddWithValue("@AccountNo", objBO.AccountNo);

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
    public int DeleteEmpAccount(CreateEmployeeBO objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        try
        {

            SqlCommand SqlDeleteCmd = new SqlCommand("sp_tblEmployee", connection);

            SqlDeleteCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = SqlDeleteCmd.Parameters.Add("@Type", SqlDbType.Char, 1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = "D";

            SqlParameter p2 = SqlDeleteCmd.Parameters.Add("@EmpNo", SqlDbType.Int, 4);
            p2.Direction = ParameterDirection.Input;
            p2.Value = objBO.EmployeeNo;

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
    public int UpdatePassword(CreateEmployeeBO objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        try
        {
            SqlCommand SqlUpdateCmd = new SqlCommand("sp_tblEmployee", connection);

            SqlUpdateCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = SqlUpdateCmd.Parameters.Add("@Type", SqlDbType.Char, 1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = "Z";

            SqlParameter p2 = SqlUpdateCmd.Parameters.Add("@Password", SqlDbType.VarChar, 50);
            p2.Direction = ParameterDirection.Input;
            p2.Value = objBO.Password;

            SqlParameter p3 = SqlUpdateCmd.Parameters.Add("@EmpNo", SqlDbType.Int, 4);
            p3.Direction = ParameterDirection.Input;
            p3.Value = objBO.EmployeeNo;

            return SqlUpdateCmd.ExecuteNonQuery();
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
    public int UpdateSkill(CreateEmployeeBO objBO)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        try
        {
            SqlCommand SqlUpdateCmd = new SqlCommand("sp_tblEmployee", connection);

            SqlUpdateCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = SqlUpdateCmd.Parameters.Add("@Type", SqlDbType.Char, 1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = "x";

            SqlParameter p2 = SqlUpdateCmd.Parameters.Add("@SkillSet", SqlDbType.VarChar, 50);
            p2.Direction = ParameterDirection.Input;
            p2.Value = objBO.Skill;

            SqlParameter p3 = SqlUpdateCmd.Parameters.Add("@EmpNo", SqlDbType.Int, 4);
            p3.Direction = ParameterDirection.Input;
            p3.Value = objBO.EmployeeNo;

            return SqlUpdateCmd.ExecuteNonQuery();
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


    public DataSet getdates()
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("select * from tblAttendance", connection);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ds.Clear();
            adp.Fill(ds, "tblAttendance");
            return ds;
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

    public DataSet getreport(int empno, string date)
    {
        SqlConnection connection = new SqlConnection(strconnection);
        connection.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("select * from tblAttendance where EmpNo='" + empno + "' and CreateDate='" + date + "'", connection);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ds.Clear();
            adp.Fill(ds, "tblAttendance");
            return ds;
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
