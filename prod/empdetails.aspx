<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"  %>
<%@ Register assembly="obout_Grid_NET" namespace="Obout.Grid" tagprefix="cc1" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register assembly="obout_Interface" namespace="Obout.Interface" tagprefix="cc2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<h2>EMPLOYEE DETAILS</h2>
 </br>
     </br>
     <script language="C#" runat="server">
         protected void Page_Load(object sender, EventArgs e)
         {
             if (!Page.IsPostBack)
             {
                 CreateGrid();
             }
         }

         void CreateGrid()
         {
             SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\KRISH\Desktop\production\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
             SqlDataAdapter da = new SqlDataAdapter();
             DataSet ds = new DataSet();
   
             con.Open();
             da = new SqlDataAdapter("SELECT [eid],[emp_name], [address1], [address2], [phone], [email], [dob], [doj] FROM [employee]", con);
             da.Fill(ds,"employee");
             Grid2.DataSource = ds;
             Grid2.DataBind();

             con.Close();
         }	
         
         void UpdateRecord(object sender, GridRecordEventArgs e)
         {
             SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\KRISH\Desktop\production\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
             SqlCommand cmd = new SqlCommand();

             con.Open();
             cmd.Connection = con;


             cmd.Parameters.Add("@eid", SqlDbType.VarChar).Value = e.Record["eid"];
             cmd.Parameters.Add("@emp_name", SqlDbType.VarChar).Value = e.Record["emp_name"];
             cmd.Parameters.Add("@address1", SqlDbType.VarChar).Value = e.Record["address1"];
             cmd.Parameters.Add("@address2", SqlDbType.VarChar).Value = e.Record["address2"];
             cmd.Parameters.Add("@phone", SqlDbType.VarChar).Value = e.Record["phone"];
             cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = e.Record["email"];
             cmd.Parameters.Add("@dob", SqlDbType.VarChar).Value = e.Record["dob"];
             cmd.Parameters.Add("@doj", SqlDbType.VarChar).Value = e.Record["doj"];

             cmd.CommandText = "update employee set emp_name=@emp_name, address1=@address1, address2=@address2, phone=@phone, email=@email, dob=@dob, doj=@doj where eid =@eid";
             
      
             cmd.ExecuteNonQuery();

             con.Close();

         }

         void RebindGrid(object sender, EventArgs e)
         {
             CreateGrid();
         }


         protected void OboutButton3_Click(object sender, EventArgs e)
         {
             // Export current page
             ExportGridToCSV2();
         }


         private void ExportGridToCSV2()
         {
             Response.Clear();
             int j = 0;
             //Add headers of the csv table
             foreach (Column col in Grid2.Columns)
             {
                 if (col.HeaderText != "DOB" && col.HeaderText != "DOJ")
                 {
                     if (j > 0)
                     {
                         Response.Write(",");
                     }
                     Response.Write(col.HeaderText);
                 }
                 j++;
             }
             //How add the data from the Grid to csv table
             for (int i = 0; i < Grid2.Rows.Count; i++)
             {
                 Hashtable dataItem = Grid2.Rows[i].ToHashtable();
                 j = 0;
                 Response.Write("\n");
                 foreach (Column col in Grid2.Columns)
                 {
                     if (col.HeaderText != "")
                     {
                         if (col.HeaderText != "DOB" && col.HeaderText != "DOJ")
                         {
                             if (j > 0)
                             {
                                 Response.Write(",");
                             }
                             Response.Write(dataItem[col.DataField].ToString());
                         }
                     }
                     j++;
                 }
             }
             // Send the data and the appropriate headers to the browser        
             Response.AddHeader("content-disposition", "attachment;filename=employee_details.csv");
             Response.ContentType = "text/csv";
             Response.End();
         }

         protected void OboutButton8_Click(object sender, EventArgs e)
         {
             // Export all pages
             Grid2.PageSize = -1;
             Grid2.DataBind();
             ExportGridToCSV2();
         }


</script>

   <script type="text/javascript">
       var printGridOnCallback = false;
       var currentPageSize = 10;

       function printGrid(printAll) {
           if (printAll) {
               printGridOnCallback = true;
               currentPageSize = Grid2.getPageSize();
               ob_Grid2PageSizeSelector.value(-1);
           } else {
               Grid2.print();
           }

           return false;
       }

       function Grid2_Callback() {
           if (printGridOnCallback) {
               Grid2.print();
               printGridOnCallback = false;
               ob_Grid2PageSizeSelector.value(currentPageSize);
           }
       }

       var gridBodyStyle = null;

       function printGrid() {
           gridBodyStyle = Grid2.GridBodyContainer.getAttribute('style');
           Grid2.GridBodyContainer.style.maxHeight = '';

           Grid2.print();

           window.setTimeout("Grid2.GridBodyContainer.setAttribute('style', gridBodyStyle);", 250);

           return false;
       }


         
    
</script>

    
       <cc1:Grid ID="Grid2" runat="server" AutoGenerateColumns="False"
                CallbackMode="true" Serialize="true" OnUpdateCommand="UpdateRecord" OnRebind="RebindGrid" AllowFiltering="True" 
                AllowGrouping="True" >
                <ClientSideEvents OnClientCallback="Grid2_Callback" />
        <Columns>
         <cc1:Column ID="Column1" Index="0" DataField="eid" HeaderText="ID" Width="60" runat="server" >
            </cc1:Column>
            <cc1:Column ID="Column8" Index="1" DataField="emp_name" HeaderText="Name" Width="100" runat="server" >
            </cc1:Column>
            <cc1:Column ID="Column10" Index="2" DataField="address1" HeaderText="Address1" runat="server" Width="130">
            </cc1:Column>
            <cc1:Column ID="Column11" Index="3" DataField="address2" HeaderText="Address2" runat="server" Width="130">
            </cc1:Column>
            <cc1:Column ID="Column12" Index="4" DataField="phone" HeaderText="Phone no" runat="server" Width="100">
            </cc1:Column>
            <cc1:Column ID="Column13" Index="5" DataField="email" HeaderText="Email" runat="server" Width="110">
            </cc1:Column>
            <cc1:Column ID="Column14" Index="6" DataField="dob" HeaderText="DOB" runat="server" Width="80">
            </cc1:Column>
            <cc1:Column ID="Column15" Index="7" DataField="doj" HeaderText="DOJ" runat="server" Width="80">
            </cc1:Column>           
            <cc1:Column ID="Column16" Index="8" AllowEdit="true" runat="server" Width="100">
            </cc1:Column>
        </Columns>

        
    </cc1:Grid>
    
    <br />
            <cc2:OboutButton ID="OboutButton1" runat="server" Text="Print Current Page" 
                OnClientClick="return printGrid();" >
            </cc2:OboutButton>
            <cc2:OboutButton ID="OboutButton2" runat="server" Text="Print All Pages" OnClientClick="return printGrid(true);">
            </cc2:OboutButton>
            <cc2:OboutButton ID="OboutButton3" runat="server" onclick="OboutButton3_Click" 
                Text="Export all pages to CSV">
            </cc2:OboutButton>
            <cc2:OboutButton ID="OboutButton8" runat="server" onclick="OboutButton8_Click" 
                Text="Export current page to CSV">
            </cc2:OboutButton>


     </br>
     </br>
    
    Click <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/addemp.aspx">here </asp:LinkButton> to add new employees.
   
    
    
</asp:Content>

