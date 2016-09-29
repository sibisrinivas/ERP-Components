<%@ Page Language="C#" MasterPageFile="~/HR/HRMasterPage.master" AutoEventWireup="true"
    CodeFile="PaySlips.aspx.cs" Inherits="HR_PaySlips" Title="Untitled Page" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="328px" Style="z-index: 100; left: -4px;
        position: absolute; top: 95px" Width="685px" meta:resourcekey="Panel1Resource1">
        <table style="z-index: 100; left: 6px; position: absolute; top: -50px; width: 651px;"
            class="MainTable">
            <tr>
                <td style="width: 100px; height: 21px">
                    <b>EmpID</b>
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:DropDownList ID="ddlEmp" runat="server" Font-Size="8pt" OnSelectedIndexChanged="ddlEmp_SelectedIndexChanged"
                        Width="87px" AppendDataBoundItems="True" AutoPostBack="True" meta:resourcekey="ddlEmpResource1">
                        <asp:ListItem meta:resourcekey="ListItemResource1">Select One..</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                    <b>Pay Slip For :</b>
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" Font-Size="8pt"
                        OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" Width="87px" Enabled="False"
                        meta:resourcekey="ddlMonthResource1">
                        <asp:ListItem meta:resourcekey="ListItemResource2">Select One</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource3">Jan</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource4">Feb</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource5">Mar</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource6">Apr</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource7">May</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource8">June</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource9">July</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource10">Aug</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource11">Sep</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource12">Oct</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource13">Nov</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource14">Dec</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <b>Name</b>
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblName" runat="server" meta:resourcekey="lblNameResource1"></asp:Label>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <b>Payable Days :</b>
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblPayDays" runat="server" meta:resourcekey="lblPayDaysResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 16px;">
                    <b>Designation</b>
                </td>
                <td style="width: 100px; height: 16px;">
                    <asp:Label ID="lblDesignation" runat="server" meta:resourcekey="lblDesignationResource1"></asp:Label>
                </td>
                <td style="width: 100px; height: 16px;">
                </td>
                <td style="width: 100px; height: 16px;">
                </td>
                <td style="width: 100px; height: 16px;">
                </td>
                <td style="width: 100px; height: 16px;">
                </td>
            </tr>
        </table>
        <table style="z-index: 102; left: 6px; position: absolute; top: 4px" class="MainTable">
            <tr>
                <td colspan="3" style="height: 68px" align="center">
                    <b>EARNINGS</b>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>Consolidated Salary</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblConsole" runat="server" meta:resourcekey="lblConsoleResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>D.A</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblDA" runat="server" meta:resourcekey="lblDAResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>HRA</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblHRA" runat="server" meta:resourcekey="lblHRAResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>Conveyance</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblConvay" runat="server" meta:resourcekey="lblConvayResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>Medical Allowances</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblMA" runat="server" meta:resourcekey="lblMAResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>Others</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblOthers1" runat="server" meta:resourcekey="lblOthers1Resource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 115px; height: 15px;">
                    <b>Total Salary</b>
                </td>
                <td style="width: 100px; height: 15px;">
                </td>
                <td style="width: 100px; height: 15px;">
                    <asp:Label ID="lblTotalSalary" runat="server" meta:resourcekey="lblTotalSalaryResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px; height: 9px;">
                </td>
                <td style="width: 100px; height: 9px;">
                </td>
                <td style="width: 100px; height: 9px;">
                </td>
            </tr>
            <tr>
                <td style="width: 115px; height: 4px;">
                    <b>Net Sal:</b>
                </td>
                <td style="width: 100px; height: 4px;">
                </td>
                <td style="width: 100px; height: 4px;">
                    <asp:Label ID="lblNetSal" runat="server" meta:resourcekey="lblNetSalResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px; height: 4px;">
                </td>
                <td style="width: 100px; height: 4px;">
                </td>
                <td style="width: 100px; height: 4px;">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 21px">
                    <b>* Computer generated pay slip . No signature is required</b>
                </td>
            </tr>
        </table>
        <table style="z-index: 103; left: 338px; position: absolute; top: 4px" class="MainTable">
            <tr>
                <td colspan="3" style="height: 68px" align="center">
                    <b>DEDUCTIONS</b>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>EPF</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblEPF" runat="server" meta:resourcekey="lblEPFResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>ESI</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblESI" runat="server" meta:resourcekey="lblESIResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>Prof Tax</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblProfTax" runat="server" meta:resourcekey="lblProfTaxResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>LOP</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblLOP" runat="server" meta:resourcekey="lblLOPResource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                    <b>Others</b>
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblOthers2" runat="server" Width="35px" meta:resourcekey="lblOthers2Resource1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 115px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 115px; height: 15px">
                    <b>Total Deductions</b>
                </td>
                <td style="width: 100px; height: 15px">
                </td>
                <td style="width: 100px; height: 15px">
                    <asp:Label ID="lblTotalDeductions" runat="server" meta:resourcekey="lblTotalDeductionsResource1"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
