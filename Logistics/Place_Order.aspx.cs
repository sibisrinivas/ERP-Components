using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;



public partial class Place_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection("Data Source=SANGEETHA-PC\\SQLEXPRESS;Initial Catalog=erp;Integrated Security=True");
            con.Open();

            SqlCommand cmd;
            cmd = new SqlCommand("insert into orders(Distributor_name, Distributor_id, name, id, brand, quantity, delivery_date) values('" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox11.Text + "','" + TextBox9.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox10.Text + "')", con);

            cmd.ExecuteNonQuery();



        }

        catch (Exception ex)
        {
        }
    }

         


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }
}
