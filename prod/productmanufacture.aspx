<%@ Page Language="C#"  MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="productmanufacture.aspx.cs" Inherits="productmanufacture" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

      <h2>  PRODUCT MANUFACTURE</h2>
        <asp:Label ID="Label6" runat="server" Text="PRODUCT NAME"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
</asp:Content>
