using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;



public partial class Dead_Stocks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection("Data Source=(local)\\SQLEXPRESS;Initial Catalog=erp;Integrated Security=True");
            con.Open();

            SqlCommand cmd;
            cmd = new SqlCommand("insert into new_event (event_name, event_code, venue, department, no_of_emp, budget, closing_budget) values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Value + "'," + TextBox3.Text + ", " + TextBox6.Text + "," + TextBox7.Text + ")", con);
           cmd.ExecuteNonQuery();
           System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Details added successfully')</SCRIPT>");

           con.Close();
           TextBox1.Text = "";
           TextBox2.Text = "";
           TextBox3.Text = "";
           TextBox4.Text = "";
          // TextBox5.Text = "";
           TextBox6.Text = "";
           TextBox7.Text = "";
           //TextBox8.Text = "";


        }

        catch (Exception ex)
        {
        }
    }
}