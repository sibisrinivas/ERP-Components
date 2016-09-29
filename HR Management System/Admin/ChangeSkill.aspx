<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ChangeSkill.aspx.cs" Inherits="Admin_ChangeSkill" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="129px" Style="z-index: 100; left: 486px;
        position: absolute; top: 288px" Width="318px">
        &nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="Button" Style="z-index: 100; left: 56px;
                        position: absolute; top: 88px" Text="Update Skill Set" Width="156px" OnClick="Button1_Click" />
        <table style="z-index: 101; left: 25px; position: absolute; top: 15px" class="MainTable">
            <tr>
                <td style="width: 100px">
                <b>Current Skill</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtCurrent" runat="server" Font-Names="Arial" Font-Size="8pt" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                <b>Addtional Skill</b>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtAddtional" runat="server" Font-Names="Arial" Font-Size="8pt"></asp:TextBox>
                </td>
            </tr>
        </table>
        <script type="text/javascript">
        var frmValidator=new Validator("aspnetForm","<%=Button1.ClientID%>");
        
            frmValidator.addValidation("<%=txtAddtional.ClientID%>","req","Please Enter Addtional Skills");            
            frmValidator.addValidation("<%=txtAddtional.ClientID%>","minlength=3","Minlength of Addtional Skills is 3");           
            
	        frmValidator.setAddnlValidationFunction("DoCustomValidation","<%=Button1.ClientID%>");
	    
	    function DoCustomValidation()
            {}
    </script>
        
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" CssClass="HLabel" Style="z-index: 102; left: 525px;
        position: absolute; top: 251px" Text="CHANGE YOUR SKILL SET" Width="212px"></asp:Label>
</asp:Content>

