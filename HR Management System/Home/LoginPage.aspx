<%@ Page Language="C#" MasterPageFile="~/Home/LoginMasterPage.master" AutoEventWireup="true"
    CodeFile="LoginPage.aspx.cs" Inherits="Home_LoginPage" Title="Untitled Page" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table style="z-index: 100; left: 34px; position: absolute; top: 49px" class="MainTable">
        <tr>
            <td>
                <b>UserName</b>
            </td>
            <td>
                <asp:TextBox ID="txtLogin" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 39px">
                <b>Password</b>
            </td>
            <td style="height: 39px">
                <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" Font-Size="8pt" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="Button" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lblError" runat="server" ForeColor="#FF0066" Font-Size="9pt"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" CssClass="HLabel" Font-Bold="True" Font-Names="Arial"
        Font-Size="11pt" ForeColor="#FF0066" Style="z-index: 100; left: 102px; position: absolute;
        top: 12px" Text="Sign-Up" Width="59px"></asp:Label>
</asp:Content>
