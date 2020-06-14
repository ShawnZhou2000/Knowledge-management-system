<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KMS.view.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/loginbg.css" />
</head>
<body class="login">
    <div class="title">
        <h1>基于ASP.NET的知识管理系统</h1>
    </div>
    <form id="form1" runat="server">
        <div class="login-panel">
            <div class="login-cell-header">
                <h2>请登录</h2>
            </div>
            <div class="login-cell">
                <span class="info">账号：</span>
                <asp:TextBox ID="userAccount" runat="server" class="input-box" Width="260px"></asp:TextBox>
            </div>
            <div class="login-cell">
                <span class="info">密码：</span>
                <asp:TextBox ID="userPassword" runat="server" TextMode="Password" class="input-box" Width="260px"></asp:TextBox>
            </div>
            <div class="login-cell-btn">
                <asp:Button ID="btnLogin" runat="server" Text="登录" Width="150px" OnClick="btnLogin_Click" class="btn-primary btn-login info"/>
            </div>
            <div class="login-cell-footer">
                <asp:Label ID="lblErr" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
    <div class="copyright">
        <p>©2020 Designed by Shawn Zhou, All rights reserved.</p>
    </div>
</body>
</html>
