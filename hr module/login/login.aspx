<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="blue_login_box_html_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


<link href="login-box.css" rel="stylesheet" type="text/css" />

    <link href="login-box.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .newStyle1
        {
            background-image: url('../Windows_7_7076_Background_by_Z08_Styles.jpg');
        }
        .newStyle2
        {
            background-color: #008000;
        }
        .style1
        {
            width: 550px;
            height: 288px;
            float: left;
            z-index: -1;
            left: 513px;
            top: 164px;
            position: absolute;
        }
        </style>

</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <p>
        <img alt="" class="style1" 
            src="file:///C:/Users/Deadly%20Alliance/Documents/Visual%20Studio%202010/Projects/hr/images/HR.JPG" />&nbsp;&nbsp;&nbsp; </p>
    <p>
        &nbsp;<asp:Panel ID="Panel1" runat="server" Width="500px"><div align=right 
            style="text-align: center">
        



<div id="login-box">

<H2>Login</H2>
<br />
<br />
<div id="login-box-name" style="margin-top:20px;">Email:</div><div id="login-box-field" style="margin-top:20px;">
    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="154px"></asp:TextBox>
    </div>
<div id="login-box-name">Password:</div><div id="login-box-field">
    <asp:TextBox ID="TextBox2" runat="server" Height="32px" TextMode="Password" 
        Width="154px"></asp:TextBox>
    </div>
<br />
<span class="login-box-options"><input type="checkbox" name="1" value="1"> Remember Me 
    <br />
    <br />
    </span>
&nbsp;<br /><br />&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/login/images/login-btn.png" onclick="ImageButton1_Click1" />






</div>


    </asp:Panel>
    </p>
    <p>
        &nbsp;</p>
    <p style="height: 73px; width: 575px">
        &nbsp;</p>
    <p>
        &nbsp;</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
