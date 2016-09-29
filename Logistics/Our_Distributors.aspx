<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Our_Distributors.aspx.cs" Inherits="Our_Distributors" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 99%;
            height: 626px;
        }
        .style3
        {
            width: 237px;
            text-align: center;
            height: 269px;
        }
        .style4
        {
            text-align: center;
            height: 269px;
        }
        .style5
        {
            width: 237px;
            text-align: center;
            height: 234px;
        }
        .style6
        {
            width: 736px;
            text-align: left;
        }
        .style7
        {
            text-align: center;
            height: 234px;
        }
    </style>
</head>
<body background="logistics_bg.jpg">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style5">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="237px" 
                    ImageUrl="~/direct-drive- spindle assembly.jpg" Width="238px" />
            </td>
            <td class="style6" rowspan="2">
                <br />
                <br />
                <br />
                <asp:ListView ID="ListView1" runat="server" 
                    DataSourceID="DistributorsSqlDataSource">
                </asp:ListView>
                <asp:SqlDataSource ID="DistributorsSqlDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DistributorsTable %>" 
                    SelectCommand="SELECT * FROM [DistributorTable]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="style7">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="186px" 
                    ImageUrl="~/Drawbar.jpg" Width="260px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="184px" 
                    ImageUrl="~/Flanges.jpg" Width="227px" />
            </td>
            <td class="style4">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="197px" 
                    ImageUrl="~/Gears , bevels &amp; Pinions.jpg" Width="248px" />
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
