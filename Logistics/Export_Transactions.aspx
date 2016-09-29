<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Export_Transactions.aspx.cs" Inherits="Export_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="logistics_bg.jpg">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            DataSourceID="Export_Transactions" ForeColor="Black" GridLines="Vertical" 
            Height="229px" Width="586px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                    SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" 
                    SortExpression="Product_ID" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Shipping_Date" HeaderText="Shipping_Date" 
                    SortExpression="Shipping_Date" />
                <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery_Date" 
                    SortExpression="Delivery_Date" />
                <asp:BoundField DataField="Source" HeaderText="Source" 
                    SortExpression="Source" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" 
                    SortExpression="Destination" />
                <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" 
                    SortExpression="Start_Time" />
                <asp:BoundField DataField="Mode_Of_Transport" HeaderText="Mode_Of_Transport" 
                    SortExpression="Mode_Of_Transport" />
                <asp:BoundField DataField="Vehicle_Type" HeaderText="Vehicle_Type" 
                    SortExpression="Vehicle_Type" />
                <asp:BoundField DataField="Number_Of_Vehicles" HeaderText="Number_Of_Vehicles" 
                    SortExpression="Number_Of_Vehicles" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="Export_Transactions" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Export_Data %>" 
            SelectCommand="SELECT * FROM [ExportTable]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
