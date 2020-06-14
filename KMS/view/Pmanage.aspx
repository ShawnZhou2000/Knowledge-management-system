<%@ Page Title="" Language="C#" MasterPageFile="~/components/masterPage.Master" AutoEventWireup="true" CodeBehind="Pmanage.aspx.cs" Inherits="KMS.view.Pmanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mainbg.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="sub-title">权限管理</h1>
    <div class="upload">
        <div class="upload-cell change-w">
            输入用户名：
            <asp:TextBox ID="inputUser" runat="server"></asp:TextBox>
        </div>
        <div class="upload-cell">
            选择权限：
            <asp:DropDownList ID="selectCategory" runat="server">
                <asp:ListItem Value="literature">文学院</asp:ListItem>
                <asp:ListItem Value="computer">计算机学院</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="upload-btn">
            <asp:Button ID="btnSubmit" runat="server" Text="提交修改" Width="292px" class="btn-primary btn-login" OnClick="btnSubmit_Click" />
        </div>
        <div class="err-log">
            <asp:Label ID="errlog" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>
