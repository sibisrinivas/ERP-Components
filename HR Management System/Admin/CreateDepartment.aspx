<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="CreateDepartment.aspx.cs" Inherits="Admin_CreateDepartment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="99px" Style="z-index: 100; left: 476px;
        position: absolute; top: 307px" Width="350px">
        <table style="z-index: 100; left: 7px; position: absolute; top: 7px; width: 290px; height: 58px;"
            class="MainTable">
            <tr>
                <td style="width: 100px">
                    <b>Department Name</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtDeptName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px;">
                    <b>Location</b>
                </td>
                <td style="width: 100px; height: 26px;">
                    <asp:TextBox ID="txtLOC" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" CssClass="HLabel" Style="z-index: 102; left: 512px;
        position: absolute; top: 256px" Text="CREATE NEW DEPARTMENT" Width="231px"></asp:Label>
    <table style="z-index: 103; left: 494px; width: 246px; position: absolute; top: 409px">
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
        
            frmValidator.addValidation("<%=txtDeptName.ClientID%>","req","Please Enter Department Number");            
            frmValidator.addValidation("<%=txtDeptName.ClientID%>","minlength=5","Minlength of Password is 5");           
                  
            frmValidator.addValidation("<%=txtLOC.ClientID%>","req","Please Enter Location");   
    
	        frmValidator.setAddnlValidationFunction("DoCustomValidation","<%=btnNew.ClientID%>");
	    
	    function DoCustomValidation()
            {}
    </script>
</asp:Content>
