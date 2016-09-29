<%@ Page Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeFile="bom.aspx.cs" Inherits="bom" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<h2>Bill of Materials</h2>
<fieldset>
<legend>Billing</legend>
<table>
<tr style="height:35px"><td style="width: 94px">
        <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label></td>
<td>        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 94px">        <asp:Label ID="Label2" runat="server" Text="Unit"></asp:Label></td>
<td>        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 94px">        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label></td>
<td>        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 94px">        <asp:Label ID="Label4" runat="server" Text="Total amount"></asp:Label></td>
<td>        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 94px"></td><td>        <asp:Button ID="Button1" runat="server" Text="FIND" />
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="OK" />
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="CANCEL" /></td></tr>
</table>
</fieldset>
</asp:Content>