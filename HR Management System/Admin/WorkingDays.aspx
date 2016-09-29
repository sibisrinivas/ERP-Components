<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="WorkingDays.aspx.cs" Inherits="Admin_WorkingDays" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="118px" Style="z-index: 100; left: 502px;
        position: absolute; top: 298px" Width="270px">
        <table style="z-index: 100; left: 0px; position: absolute; top: 0px" class="MainTable">
            <tr>
                <td style="width: 100px">
                <b>Year</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                <b>Month</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtMonth" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                <b>Working Days</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtWorkday" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                <b>Holidays</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtHoliday" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" CssClass="HLabel" Style="z-index: 102; left: 502px;
        position: absolute; top: 251px" Text="SET WORKING DAYS & HOLIDAYS " Width="271px"></asp:Label>
    <table style="z-index: 103; left: 509px; width: 246px; position: absolute; top: 424px">
        <tr>
            <td style="width: 101px; height: 26px">
                <asp:Button ID="btnNew" runat="server" CssClass="Button" OnClick="Employeeinsertion"
                    Text="Create Account" Width="143px" />
            </td>
            <td style="width: 101px; height: 26px">
                <asp:Button ID="btnCancel" runat="server" CssClass="Button" PostBackUrl="~/Admin/WelcomeAdmin.aspx"
                    Text="Cancel" Width="100px" />
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        var frmValidator=new Validator("aspnetForm","<%=btnNew.ClientID%>");
        
            frmValidator.addValidation("<%=txtYear.ClientID%>","req","Please Enter Year");            
            frmValidator.addValidation("<%=txtYear.ClientID%>","num","numercis only");           
                  
            frmValidator.addValidation("<%=txtMonth.ClientID%>","req","Please Enter Month");   
            
            frmValidator.addValidation("<%=txtWorkday.ClientID%>","req","Please Enter Working Days"); 
            
            frmValidator.addValidation("<%=txtHoliday.ClientID%>","req","Please Enter Holidays"); 
    
	        frmValidator.setAddnlValidationFunction("DoCustomValidation","<%=btnNew.ClientID%>");
	    
	    function DoCustomValidation()
            {}
    </script>
</asp:Content>

