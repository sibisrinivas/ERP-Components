<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateDepartment.aspx.cs" Inherits="Admin_UpdateDepartment" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="136px" Style="z-index: 100; left: 482px;
        position: absolute; top: 285px" Width="232px">
        <asp:DataGrid ID="dgEmployee" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Style="z-index: 100; left: 0px; position: absolute; top: 0px" DataKeyField="DeptNo" OnItemCommand="dgEmployee_ItemCommand" Font-Names="Arial" Font-Size="9pt" Height="1px" Width="253px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditItemStyle BackColor="#999999" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:TemplateColumn HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit" ForeColor="#ff0066">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" ForeColor="#ff0066">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </asp:Panel>
</asp:Content>

