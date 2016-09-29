<%@ Page Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeFile="addemp.aspx.cs" Inherits="add" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    <h2>ADD EMPLOYEE</h2> 
  <fieldset>
  <legend>Employee details</legend>
    <table>     
     <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
    <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label3" runat="server" Text="Id"></asp:Label></td>
<td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
     <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label4" runat="server" Text="Address 1"></asp:Label></td>
<td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
    <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label5" runat="server" Text="Address 2"></asp:Label></td>
<td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>
    <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label6" runat="server" Text="Contact No"></asp:Label></td>
<td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td></tr>
    <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label7" runat="server" Text="Email id"></asp:Label></td>
<td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td></tr>
    <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label8" runat="server" Text="DOB"></asp:Label></td>
<td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label1" runat="server" Text="DOJ"></asp:Label></td>
<td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td></tr>

<tr style="height:35px"><td style="width: 94px"></td><td><asp:Button ID="Button2" 
        runat="server" Text="ADD" onclick="Button2_Click" />
<asp:Button ID="Button3" runat="server" Text="CLEAR" onclick="Button3_Click" /></td></tr>
</table>
</fieldset>
</asp:Content>