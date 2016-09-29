using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


public partial class HR_AttendanceSheet : System.Web.UI.Page
{
    int p=0;
    int mon;
    DataSet ds = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    string str = "";
    Table tbl = new Table();
    string dates="";
    string[] create;
    protected void Page_Load(object sender, EventArgs e)
    {
        appenddate();
        if (!IsPostBack)
        {
        }
    }
    public void appenddate()
    {
        str = ddlmonth.SelectedItem.Text + "/" + ddlyear.SelectedItem.Text;
        CreateEmployeeDAL emp = new CreateEmployeeDAL();
        ds = emp.GetDetails();
        tbl.Controls.Clear();
        TableRow tr = new TableRow();
        tbl.Rows.Add(tr);
        tr.Controls.Clear();
        TableCell td2 = new TableCell();
        tr.Cells.Add(td2);

        if (ddlmonth.SelectedIndex == 0 || ddlmonth.SelectedIndex == 2 || ddlmonth.SelectedIndex == 4 || ddlmonth.SelectedIndex == 6 || ddlmonth.SelectedIndex == 7 || ddlmonth.SelectedIndex == 9 || ddlmonth.SelectedIndex == 11)
        {
            mon = 31;
        }
        else if (ddlmonth.SelectedIndex == 1)
        {
            mon = 28;
        }
        else
        {
            mon = 30;
        }


        for (int i = 0; i <= mon; i++)
        {
            TableCell td = new TableCell();
            td.Width = 100;
            Label lbl = new Label();
            if (i == 0)
            {
                td.Controls.Clear();
                dates = "";
            }
            else
            {
                
                lbl.ID = "Labels" + i;
                lbl.Text = i + "/" + str;
                td.Controls.Add(lbl);
                tr.Cells.Add(td);
                

                if (i == 31)
                {
                    dates = dates + lbl.Text;
                }
                else
                {
                    dates = dates + lbl.Text + "@";
                }
            }
        }

        
            create = dates.Split('@');


            for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
            {
                TableRow tr1 = new TableRow();
                tbl.Rows.Add(tr1);
                TableCell td1 = new TableCell();
                tr1.Controls.Add(td1);
                Label lbl1 = new Label();
                lbl1.ID = "Lbl" + j;
                lbl1.Text = ds.Tables[0].Rows[j]["UserName"].ToString();
                string empno = ds.Tables[0].Rows[j]["EmpNo"].ToString();
                td1.Controls.Add(lbl1);
                for (int k = 0; k < create.Length; k++)
                {
                    TableCell td3 = new TableCell();
                    td3.Controls.Clear();
                    tr1.Controls.Add(td3);
                    p = p + j + 1;
                    Label lbl2 = new Label();
                    lbl2.ID = "Lb" + p;
                    CreateEmployeeDAL rpt = new CreateEmployeeDAL();

                    

                    ds2 = rpt.getreport(int.Parse(empno), create[k]);
                    if (ds2.Tables["tblAttendance"].Rows.Count != 0)
                    {
                        lbl2.Text = ds2.Tables["tblAttendance"].Rows[0]["Status"].ToString();
                    }
                    else
                    {
                        lbl2.Text = "--";
                    }
                    td3.Controls.Add(lbl2);
                }
            }


        Panel1.Controls.Add(tbl);
    }

    protected void ddlmonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        appenddate();
    }
    protected void ddlyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        appenddate();
    }
}




//for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
//        {
//            TableRow tr1 = new TableRow();
//            tbl.Rows.Add(tr1);
//            TableCell td1 = new TableCell();
//            Label lbl1 = new Label();
//            lbl1.ID = "Lbl" + j;
//            lbl1.Text = ds.Tables[0].Rows[j]["UserName"].ToString();
//            td1.Controls.Add(lbl1);

        //    for (int l = 0; l <= create.Length; l++)
        //    {
        //        CreateEmployeeDAL empdl = new CreateEmployeeDAL();
        //        ds2 = empdl.getreport(int.Parse(ds.Tables[0].Rows[j]["EmpNo"].ToString()), create[l]);
        //        TableCell td5 = new TableCell();
        //        Label lb = new Label();
        //        lb.ID = "Lb" + l;
        //        if (l == 0)
        //        {
        //            td5.Controls.Clear();
        //        }
        //        else
        //        {
        //           if (ds2.Tables["tblAttendance"].Rows.Count != 0)
        //            {
        //                lb.Text = ds2.Tables["tblAttendance"].Rows[j]["Status"].ToString();
        //            }
        //            else
        //            {
        //                lb.Text = "---";
        //            }
        //            td5.Controls.Add(lb);    
        //        }
        //        tr1.Controls.Add(td5);
        //    }


        //    tr1.Cells.Add(td1);
        //}