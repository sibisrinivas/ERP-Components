<%@ Page Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeFile="addmachine.aspx.cs" Inherits="addmachine" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  <fieldset>
  <legend>Machine details</legend>
<table>
<tr style="height:35px"><td style="width: 96px"><asp:Label ID="Label6" runat="server" Text="ID"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 96px"><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
<td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 96px"><asp:Label ID="Label7" runat="server" Text="Quantity"></asp:Label></td>
<td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 96px"><asp:Label ID="Label8" runat="server" Text="Type"></asp:Label></td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Import</asp:ListItem>
        <asp:ListItem>Export</asp:ListItem>
    </asp:DropDownList>
    </td></tr>
<tr style="height:35px"><td style="width: 96px"><asp:Label ID="Label2" runat="server" Text="Date of Installation"></asp:Label></td>
<td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 96px"></td><td><asp:Button ID="Button1" 
        runat="server" Text="ADD" onclick="Button1_Click" />
&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" Text="CLEAR" onclick="Button2_Click" /></td></tr>
</table>
</fieldset>
</asp:Content>