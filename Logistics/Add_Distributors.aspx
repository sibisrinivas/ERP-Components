<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Distributors.aspx.cs" Inherits="Add_Distributors" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            text-align: center;
            font-size: x-large;
            font-weight: bold;
        }
        .style3
        {
            font-weight: bold;
        }
    </style>
</head>
<body background="logistics_bg.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p class="style2">
        ADD NEW DISTRIBUTOR DETAILS</p>
    <div class="style1">
        <b>
        <asp:Label ID="Label1" runat="server" Text="Distributor_Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style3"></asp:TextBox>
        <b>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server">Distributor_ID</asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="style3"></asp:TextBox>
        <b>
        <br />
        </b>&nbsp;<b><br />
        <asp:Label ID="Label2" runat="server" Text="Company_Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style3"></asp:TextBox>
        <b>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="style3" 
            TextMode="MultiLine"></asp:TextBox>
        <b>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="style3"></asp:TextBox>
        <b>
        <br />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Rank"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <br />
        </b>
        <asp:Button ID="Button1" runat="server" CssClass="style3" Text="Save" />
    </div>
    </form>
</body>
</html>
