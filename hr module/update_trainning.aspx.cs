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
            
            cmd = new SqlCommand("UPDATE department SET total_emp = " + TextBox7.Text + ", vacant=" + TextBox8.Text + ", trainning=" + TextBox9.Text + ", temp_emp=" + TextBox10.Text + ", contract_emp=" + TextBox11.Text + " where (department_id=" + TextBox1.Text + " ) AND (department_name='" + TextBox2.Text + "')", con);
            
            
            
            
            

            cmd.ExecuteNonQuery();

            
            System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Details Updated successfully')</SCRIPT>");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            
        

        }

        catch (Exception ex)
        {
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
            
        
        
    }
}