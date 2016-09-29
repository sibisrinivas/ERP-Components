<%@ Page Language="C#" MasterPageFile="~/HR/HRMasterPage.master" AutoEventWireup="true"
    CodeFile="AttendanceSheet.aspx.cs" Inherits="HR_AttendanceSheet" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="371px" Style="z-index: 100; left: 17px;
        position: absolute; top: 52px" Width="696px" ScrollBars="Both">
        &nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="50px" Style="z-index: 102; left: 138px;
        position: absolute; top: -40px" Width="125px">
        <asp:DropDownList ID="ddlyear" runat="server" Style="z-index: 100; left: 160px; position: absolute;
            top: 46px" AutoPostBack="True" OnSelectedIndexChanged="ddlyear_SelectedIndexChanged">
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlmonth" runat="server" Style="z-index: 101; left: 74px; position: absolute;
            top: 44px" AutoPostBack="True" OnSelectedIndexChanged="ddlmonth_SelectedIndexChanged">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" CssClass="Label" Style="z-index: 102; left: 26px;
            position: absolute; top: 48px" Text="Month"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="Label" Style="z-index: 104; left: 122px;
            position: absolute; top: 47px" Text="Year"></asp:Label>
    </asp:Panel>
    <br />
    <br />
</asp:Content>
