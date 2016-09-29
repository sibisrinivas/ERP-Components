using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Data.Odbc;
using System.Data.OleDb;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=SANGEETHA-PC\\SQLEXPRESS;Initial Catalog=erp;Integrated Security=True");
        con.Open();

        SqlCommand cmd;
        cmd = new SqlCommand("Select * from Login where Username='"+TextBox1.Text+"'and Password='"+TextBox2.Text+"'", con);
        SqlDataReader reader;
        reader = cmd.ExecuteReader();
                 if (reader.Read() == true)
                 {
                     Response.Redirect("Company.aspx");
                 }
                 else
                 {
                     reader.Close();
                 }
       
               con.Close();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
    {

    }
}