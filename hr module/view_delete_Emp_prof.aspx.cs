using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection("Data Source=(local)\\SQLEXPRESS;Initial Catalog=erp;Integrated Security=True");
            con.Open();

            SqlCommand cmd;
          //  cmd = new SqlCommand("insert into removed_emp (emp_name, emp_id, approved_manager, hrcode) values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox4.Text + "'," + TextBox5.Text + ")", con);

            //cmd.ExecuteNonQuery();



        }

        catch (Exception ex)
        {
        }
    }
}