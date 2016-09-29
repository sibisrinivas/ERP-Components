<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="CreateEmployee.aspx.cs" Inherits="Admin_EmpCreate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="167px" Style="z-index: 100; left: 278px;
        position: absolute; top: 136px" Width="705px">
        <table class="MainTable" style="z-index: 102; left: 10px; position: absolute; top: 42px;
            width: 692px;">
            <tr>
                <td style="width: 100px; height: 25px;">
                    <b>First Name</b>
                </td>
                <td style="width: 100px; height: 25px;">
                    <asp:TextBox ID="txtFirstName" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 112px; height: 25px;">
                    <b>Middle Name</b>
                </td>
                <td style="width: 100px; height: 25px;">
                    <asp:TextBox ID="txtMName" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 122px; height: 25px;">
                    <b>Last Name</b>
                </td>
                <td style="width: 100px; height: 25px;">
                    <asp:TextBox ID="txtLName" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <b>Father Name</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtFName" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 112px">
                    <b>Date Of Birthday</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtDOB" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <b>Gender</b>
                </td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddlGender" runat="server" Font-Names="Arial" Font-Size="8pt"
                        AppendDataBoundItems="True">
                        <asp:ListItem>-Select One-</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 76px;" valign="top">
                    <b>Date Of joining</b>
                </td>
                <td style="width: 100px; height: 76px;" valign="top">
                    <asp:TextBox ID="txtDOJ" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 112px; height: 76px;" valign="top">
                    <b>Current Address</b>
                </td>
                <td style="width: 100px; height: 76px;" valign="top">
                    <asp:TextBox ID="txtCurrentAdd" runat="server" Font-Names="Arial" Font-Size="8pt" Height="61px"></asp:TextBox>
                </td>
                <td style="width: 122px; height: 76px;" valign="top">
                    <b>Permanent Address</b>
                </td>
                <td style="width: 100px; height: 76px;" valign="top">
                    <asp:TextBox ID="txtPermanentAdd" runat="server" Font-Names="Arial" Font-Size="8pt" Height="64px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <b>City</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtCity" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 112px">
                    <b>State</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtState" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 122px">
                    <b>Country</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtCountry" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Skills</b>
                </td>
                <td>
                    <asp:TextBox ID="txtSkills" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td>
                    <b>User Type</b>
                </td>
                <td colspan="3">
                    <asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal"
                        Width="289px">
                        <asp:ListItem Value="HR">HumanResource</asp:ListItem>
                        <asp:ListItem Value="Emp">Employee</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <b>Basic</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtBasic" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 112px">
                    <b>Department</b>
                </td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddlDept" runat="server" AppendDataBoundItems="True">
                        <asp:ListItem>-Select One-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 122px">
                    <b>Job Title</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtJobTitle" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <b>PinCode</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtPin" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 112px">
                    <b>Martial Status</b>
                </td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddlMartial" runat="server">
                        <asp:ListItem>-Select One-</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 122px">
                    <b>Spouse Name</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtSpouse" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <b>EMail ID</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 112px">
                    <b>Phone</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtPhone" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 122px">
                    <b>Company</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtCompany" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 116px">
                    <b>Account No</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtAccount" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 112px">
                    <b>User Name</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtUserName" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
                <td style="width: 122px">
                    <b>Password</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtPasssword" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
            </tr>            
        </table>
        <table style="z-index: 103; left: 204px; position: absolute; top: 381px; width: 246px;">
            <tr>
                <td style="width: 101px; height: 26px;">
                    <asp:Button ID="btnNew" runat="server" OnClick="Employeeinsertion" Text="Create Account" CssClass="Button" Width="143px" />
                </td>
                <td style="width: 101px; height: 26px;">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="Button" Width="100px"
                        PostBackUrl="~/Admin/WelcomeAdmin.aspx" />
                </td>
            </tr>
        </table>
        <script type="text/javascript">
        var frmValidator=new Validator("aspnetForm","<%=btnNew.ClientID%>");
        
            frmValidator.addValidation("<%=txtFirstName.ClientID%>","req","Please Enter First Name");
            frmValidator.addValidation("<%=txtFirstName.ClientID%>","alpha","First Name must be Alphabates only");            
            frmValidator.addValidation("<%=txtFirstName.ClientID%>","minlength=5","Minlength of First Name is 5");

            frmValidator.addValidation("<%=txtMName.ClientID%>","req","Please Enter Middle Name ");
            frmValidator.addValidation("<%=txtMName.ClientID%>","alpha","First Name must be Alphabates only");            
            frmValidator.addValidation("<%=txtMName.ClientID%>","minlength=5","Minlength of Middle Name is 5");
            
            frmValidator.addValidation("<%=txtLName.ClientID%>","req","Please Enter Last Name ");
            frmValidator.addValidation("<%=txtLName.ClientID%>","alpha","First Name must be Alphabates only");
            frmValidator.addValidation("<%=txtLName.ClientID%>","minlength=5","Minlength of Middle Name is 3");
            
            frmValidator.addValidation("<%=txtFName.ClientID%>","req","Please Enter FatherName ");          
            frmValidator.addValidation("<%=txtFName.ClientID%>","alpha","First Name must be Alphabates only");            
            frmValidator.addValidation("<%=txtFName.ClientID%>","minlength=5","Minlength of Middle Name is 5");
            
            frmValidator.addValidation("<%=txtDOB.ClientID%>","req","Please Enter Date Of Birth");      
            
            frmValidator.addValidation("<%=ddlGender.ClientID%>","dontselect","Please Select One  ");          
            
            frmValidator.addValidation("<%=txtDOJ.ClientID%>","req","Please Enter Date Of Joining");      
            
            frmValidator.addValidation("<%=txtCurrentAdd.ClientID%>","req","Please Enter Current Address ");            
            
            frmValidator.addValidation("<%=txtPermanentAdd.ClientID%>","req","Please Enter Permanent Address ");           
            
            frmValidator.addValidation("<%=txtCity.ClientID%>","req","Please Enter City ");
            frmValidator.addValidation("<%=txtCity.ClientID%>","alpha","Alphabates Only");
            
            frmValidator.addValidation("<%=txtState.ClientID%>","req","Please Enter State"); 
            frmValidator.addValidation("<%=txtState.ClientID%>","alpha","Alphabates Only");           
            
            frmValidator.addValidation("<%=txtCountry.ClientID%>","req","Please Enter Country ");
            frmValidator.addValidation("<%=txtCountry.ClientID%>","alpha","Alphabates Only");
            
            frmValidator.addValidation("<%=txtSkills.ClientID%>","req","Please Enter Skills"); 
            frmValidator.addValidation("<%=txtSkills.ClientID%>","alpha","Alphabates Only");           
            
            frmValidator.addValidation("<%=ddlDept.ClientID%>","dontselect","Please Select One  ");          
            
            frmValidator.addValidation("<%=txtBasic.ClientID%>","req","Please Enter Basic ");
            frmValidator.addValidation("<%=txtBasic.ClientID%>","phone","Numerics Only");
            
            frmValidator.addValidation("<%=txtJobTitle.ClientID%>","req","Please Enter JobTitle ");
          
            frmValidator.addValidation("<%=txtPin.ClientID%>","req","Please Enter PinCode ");
            frmValidator.addValidation("<%=txtPin.ClientID%>","numeric","Pin Code Numeric Only");
            
            frmValidator.addValidation("<%=ddlMartial.ClientID%>","dontselect","Please Select One  "); 
            
            frmValidator.addValidation("<%=txtSpouse.ClientID%>","req","Please Enter SpouseName ");
            frmValidator.addValidation("<%=txtSpouse.ClientID%>","alpha","Alphabates Only");
            
            frmValidator.addValidation("<%=txtEmail.ClientID%>","req","Please Enter Email ");
            frmValidator.addValidation("<%=txtEmail.ClientID%>","email","Email Format Only");
            
            frmValidator.addValidation("<%=txtPhone.ClientID%>","req","Please Enter phone ");
            frmValidator.addValidation("<%=txtPhone.ClientID%>","phone","Phone Format Only");
            
            frmValidator.addValidation("<%=txtCompany.ClientID%>","req","Please Enter CompanyName ");
           
            
            frmValidator.addValidation("<%=txtAccount.ClientID%>","req","Please Enter Account Number ");
            frmValidator.addValidation("<%=txtAccount.ClientID%>","numeric","Numeric Only");
            
            frmValidator.addValidation("<%=txtUserName.ClientID%>","req","Please Enter UserName ");
           
            
            frmValidator.addValidation("<%=txtPasssword.ClientID%>","req","Please Enter Password");
            
            
	        frmValidator.setAddnlValidationFunction("DoCustomValidation","<%=btnNew.ClientID%>");
	    
	    function DoCustomValidation()
            {}
    </script>
        <asp:Label ID="Label1" runat="server" CssClass="HLabel" Style="z-index: 101; left: 228px;
            position: absolute; top: 2px" Text="CREATE A NEW EMPLOYEE" Width="215px"></asp:Label>
    </asp:Panel>
</asp:Content>
