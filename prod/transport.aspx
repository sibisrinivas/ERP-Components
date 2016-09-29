<%@ Page Language="C#"  MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="transport.aspx.cs" Inherits="transport" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

   <h2>TRANSPORT</h2>
   <fieldset>
   <legend>Transport details</legend>
   <table>
   <tr style="height:35px"><td style="width: 137px">
    <asp:Label ID="Label2" runat="server" Text="Means of transport"></asp:Label></td>
<td><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Roadways</asp:ListItem>
            <asp:ListItem>Airways</asp:ListItem>
            <asp:ListItem>Waterways</asp:ListItem>
        </asp:DropDownList></td></tr>
<tr style="height:35px"><td style="width: 137px"><asp:Label ID="Label3" runat="server" Text="Vehicle no"></asp:Label></td>
<td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
   <tr style="height:35px"><td style="width: 137px"><asp:Label ID="Label4" runat="server" Text="Product id"></asp:Label></td>
       <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
   <tr style="height:35px"><td style="width: 137px"><asp:Label ID="Label5" runat="server" Text="Material id"></asp:Label></td>
      <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>
    <tr style="height:35px"><td style="width: 137px"><asp:Label ID="Label6" runat="server" Text="Warehouse"></asp:Label></td>
<td><asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList></td></tr>
       <tr style="height:35px"><td style="width: 137px"><asp:Label ID="Label7" runat="server" Text="Finished product"></asp:Label></td>
        <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td></tr>
   <tr style="height:35px"><td style="width: 137px"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
<td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td></tr>
   <tr style="height:35px"><td style="width: 137px"></td><td><asp:Button ID="Button1" runat="server" Text="OK" />
 &nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button2" runat="server" Text="CANCEL" /></td></tr>
 </table>
      </fieldset>
</asp:Content>
