using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.DropDownList;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {

            SqlConnection con = new SqlConnection ("Data Source=(local)\\SQLEXPRESS;Initial Catalog=erp;Integrated Security=True");
            con.Open();

            SqlCommand cmd;
            SqlCommand cmd1;

            cmd = new SqlCommand("insert into cemp (emp_name, emp_id, designation, company_name,department_name, exp, salary) values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox4.Text + "','" + TextBox13.Text + "','" + DropDownList1.SelectedItem.Value + "'," + TextBox3.Text + ", " + TextBox6.Text + ")", con);

            cmd.ExecuteNonQuery();

            cmd1 = new SqlCommand("insert into masteremp (emp_name, emp_id, address1, address2, contact, email,dob,blood, designation, department, experience, salary) values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Value + "'," + TextBox3.Text + ", " + TextBox6.Text + ")", con);

            cmd1.ExecuteNonQuery();


            System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Details added successfully')</SCRIPT>");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            // TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";

        }

        catch (Exception ex)
        {
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        // TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = ""; 
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        
        
    }
}