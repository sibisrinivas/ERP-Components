<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">

        .style17
        {
            width: 62%;
            height: 510px;
        }
        .style27
        {
            width: 251px;
            text-align: center;
            height: 114px;
        }
        .style28
        {
            text-align: center;
            width: 199px;
            height: 114px;
        }
        .style29
        {
            text-align: center;
            width: 182px;
            height: 114px;
        }
        .style30
        {
            width: 251px;
            text-align: center;
            height: 38px;
        }
        .style31
        {
            text-align: center;
            width: 199px;
            height: 38px;
        }
        .style32
        {
            text-align: center;
            width: 182px;
            height: 38px;
        }
        .style33
        {
            width: 251px;
            text-align: center;
            height: 82px;
        }
        .style34
        {
            text-align: center;
            width: 199px;
            height: 82px;
        }
        .style35
        {
            text-align: center;
            width: 182px;
            height: 82px;
        }
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Hr Management Road map<br />
        <br />
        <table align="center" class="style17">
            <tr>
                <td class="style27">
                    <br />
                    &nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="83px" 
                        ImageUrl="~/images/grid_icon/trainning.png" Width="110px" 
                        onclick="ImageButton1_Click" />
                    <br />
                    Recruitment<br />
                </td>
                <td class="style28">
                    <br />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="84px" 
                        ImageUrl="~/images/grid_icon/add_emp.png" Width="76px" 
                        onclick="ImageButton2_Click" />
                    <br />
                    Employee<br />
                </td>
                <td class="style29">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="76px" 
                        ImageUrl="~/images/grid_icon/add-event-icon.png" style="margin-bottom: 0px" 
                        Width="84px" onclick="ImageButton4_Click" />
                    <br />
                    Events</td>
            </tr>
            <tr>
                <td class="style33">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="83px" 
                        ImageUrl="~/images/grid_icon/department1.png" Width="87px" 
                        onclick="ImageButton3_Click" />
                    <br />
                    Department<br />
                </td>
                <td class="style34">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="78px" 
                        ImageUrl="~/images/grid_icon/train.png" onclick="ImageButton8_Click" 
                        Width="124px" />
                    <br />
                    Trainning</td>
                <td class="style35">
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="74px" 
                        ImageUrl="~/images/grid_icon/bank-icon.png" onclick="ImageButton9_Click" 
                        Width="98px" />
                    <br />
                    Finance</td>
            </tr>
            <tr>
                <td class="style30">
                    <br />
                    <asp:ImageButton ID="ImageButton5" runat="server" 
                        ImageUrl="~/images/grid_icon/resoucer.png" Height="78px" 
                        onclick="ImageButton5_Click" Width="88px" />
                    <br />
                    Resource<br />
                </td>
                <td class="style31">
                    <br />
                    <asp:ImageButton ID="ImageButton6" runat="server" 
                        ImageUrl="~/images/grid_icon/feedback-icon.png" Height="74px" 
                        onclick="ImageButton6_Click" Width="89px" />
                    <br />
                    Feedback</td>
                <td class="style32">
                    <br />
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="84px" 
                        ImageUrl="~/images/grid_icon/Folder-Home-Folder-icon.png" 
                        onclick="ImageButton7_Click" Width="82px" />
                    <br />
                    HOME</td>
            </tr>
        </table>
    </h2>
</asp:Content>
