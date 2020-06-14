<%@ Page Title="" Language="C#" MasterPageFile="~/components/masterPage.Master" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="KMS.components.addUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mainbg.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="upload">
        <h2 style="width: 100%;">添加账号</h2>
        <div class="upload-cell">
            分配权限：
            <asp:DropDownList ID="selectCategory" runat="server">
                <asp:ListItem Value="literature">文学院</asp:ListItem>
                <asp:ListItem Value="computer">计算机学院</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="upload-cell">
            用户名：
            <asp:TextBox ID="inputUser" runat="server" ></asp:TextBox>
        </div>
        <div class="pswd-1">
            输入密码：
            <asp:TextBox ID="inputPswd" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        
        <div class="pswd-1">
            确认密码：
            <asp:TextBox ID="confirmPswd" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="upload-btn">
            <asp:Button ID="btnSubmit" runat="server" Text="提交" Width="292px" class="btn-primary btn-login" OnClick="btnSubmit_Click" />
        </div>
        <div class="err-log">
            <asp:Label ID="errlog" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>
