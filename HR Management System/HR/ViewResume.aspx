<%@ Page Language="C#" MasterPageFile="~/HR/HRMasterPage.master" AutoEventWireup="true" CodeFile="ViewResume.aspx.cs" Inherits="HR_ViewResume" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="398px" ScrollBars="Horizontal" Style="z-index: 100;
        left: 5px; position: absolute; top: 38px" Width="712px">
        <asp:GridView ID="gdvResume" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Height="1px" Style="z-index: 100; left: 0px; position: absolute; top: 0px"
            Width="705px" Font-Names="Arial" Font-Size="8pt" AutoGenerateColumns="False">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="CurrentAddress" HeaderText="CurrentAddress" />
                <asp:BoundField DataField="PermanentAddress" HeaderText="PermanentAddress" />
                <asp:BoundField DataField="City" HeaderText="City" />
                <asp:BoundField DataField="State" HeaderText="State" />
                <asp:BoundField DataField="Country" HeaderText="Country" />
                <asp:BoundField DataField="PinCode" HeaderText="PinCode" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                <asp:BoundField DataField="Years" HeaderText="Years" />
                <asp:BoundField DataField="Months" HeaderText="Months" />
                <asp:BoundField DataField="FunctionalArea" HeaderText="FunctionalArea" />
                <asp:BoundField DataField="Industry" HeaderText="Industry" />
                <asp:BoundField DataField="KeySkills" HeaderText="KeySkills" />
                <asp:BoundField DataField="ResumeHeadLine" HeaderText="ResumeHeadLine" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
                <asp:BoundField DataField="Specialization" HeaderText="Specialization" />
                <asp:BoundField DataField="Percentage" HeaderText="Percentage" />
                <asp:HyperLinkField DataNavigateUrlFields="Attachment" DataNavigateUrlFormatString="~/Resume/{0}"
                    DataTextField="Attachment" HeaderText="Resume" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>

