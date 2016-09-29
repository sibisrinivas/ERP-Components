<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="UpdateEmployee.aspx.cs" Inherits="Admin_UpdateEmployee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;
    <asp:Panel ID="Panel1" runat="server" Height="177px" Style="z-index: 100; left: 283px;
        position: absolute; top: 280px" Width="709px" ScrollBars="Horizontal">
        <asp:DataGrid ID="dgEmployee" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Style="z-index: 100; left: 0px; position: absolute; top: 0px" DataKeyField="EmpNo" OnItemCommand="dgEmployee_ItemCommand" Height="1px" Width="704px" Font-Names="Arial" Font-Size="8pt">
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
