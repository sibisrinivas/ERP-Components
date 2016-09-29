<%@ Page Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeFile="availabilityofstock.aspx.cs" Inherits="availabilityofstock" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>MATERIALS FOR PRODUCTION</h2>

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

    
        <br />
    <fieldset>
    <legend>Materials for production</legend>    
      <table>
      <tr style="height:35px"><td style="width: 93px">
       <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
            <td><asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList></td></tr>
        <tr style="height:35px"><td style="width: 93px"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
       <tr style="height:35px"><td style="width: 93px"> </td><td><asp:Button ID="Button1" runat="server" Text="OK" />
           &nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button2" runat="server" Text="CANCEL" /></td>
            </table>
    </fieldset>
</asp:Content>