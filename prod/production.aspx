<%@ Page Language="C#"  MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="production.aspx.cs" Inherits="production" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>PRODUCED GOODS</h2>
    <br />
    <fieldset>
    <legend>Products</legend>
    <table>
    <tr style="height:35px">
    <td style="width: 94px"><asp:Label ID="Label8" runat="server" Text="Product name"></asp:Label></td>
    <td style="width: 154px"><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></td></tr>
    <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label11" runat="server" Text="Unit"></asp:Label></td>
    <td style="width: 154px"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
    <tr style="height:35px"><td style="width: 94px"><asp:Label ID="Label10" runat="server" Text="Price"></asp:Label></td>
    <td style="width: 154px"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
    <tr style="height:35px"><td></td><td style="width: 154px">
    <asp:Button ID="Button3" runat="server" Text="CANCEL" />&nbsp;<asp:Button 
            ID="Button4" runat="server" Text="Button" />
        </td></tr>
    </table>
    </fieldset>
</asp:Content>
