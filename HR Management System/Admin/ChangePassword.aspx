<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="168px" Style="z-index: 100; left: 445px;
        position: absolute; top: 284px" Width="295px">
        &nbsp;
        <table style="z-index: 100; left: 13px; position: absolute; top: 10px; width: 282px;"
            class="MainTable">
            <tr>
                <td style="width: 120px">
                    <b>User Name</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtUserName" runat="server" Font-Names="Arial" Font-Size="8pt" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 24px;">
                    <b>Old Password</b>
                </td>
                <td style="width: 100px; height: 24px;">
                    <asp:TextBox ID="txtOld" runat="server" Font-Names="Arial" Font-Size="8pt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    <b>New Password</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtNew" runat="server" Font-Names="Arial" Font-Size="8pt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    <b>Confirm Password</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="Confirm" runat="server" Font-Names="Arial" Font-Size="8pt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                </td>
                <td style="width: 100px">
                    <asp:Button Style="z-index: 100; left: 57px; position: absolute; top: 130px" ID="Button1"
                        runat="server" CssClass="Button" Width="156px" Text="Upate Password" OnClick="Button1_Click"></asp:Button>
                </td>
            </tr>
            <script type="text/javascript">
        var frmValidator=new Validator("aspnetForm","<%=Button1.ClientID%>");
        
            frmValidator.addValidation("<%=txtOld.ClientID%>","req","Please Enter Old Password");            
            frmValidator.addValidation("<%=txtOld.ClientID%>","minlength=5","Minlength of Password is 5");           
                  
            frmValidator.addValidation("<%=txtNew.ClientID%>","req","Please Enter New Password");   
            
            frmValidator.addValidation("<%=Confirm.ClientID%>","req","Please Enter Confirm Password"); 
    
	        frmValidator.setAddnlValidationFunction("DoCustomValidation","<%=Button1.ClientID%>");
	    
	    function DoCustomValidation()
            {}
    </script>
        </table>
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" CssClass="HLabel" Style="z-index: 101; left: 487px;
        position: absolute; top: 246px" Text="CHANGE YOUR PASSWORD" Width="212px"></asp:Label>
</asp:Content>
