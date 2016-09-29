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

public partial class blue_login_box_html_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(local)\\ SQLEXPRESS;Initial Catalog=erp;Integrated Security=True");
        con.Open();

        SqlCommand cmd;
        cmd = new SqlCommand("Select * from login where uname='" + TextBox1.Text + "'and pass='" + TextBox2.Text + "'", con);
        SqlDataReader reader;
        reader = cmd.ExecuteReader();
        if (reader.Read() == true)
        {
            Response.Redirect("..\\index.aspx");
        }
        else
        {
            reader.Close();
        }

        con.Close();


    }
}