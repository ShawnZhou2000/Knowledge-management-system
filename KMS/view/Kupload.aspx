<%@ Page Title="" Language="C#" MasterPageFile="~/components/masterPage.Master" AutoEventWireup="true" CodeBehind="Kupload.aspx.cs" Inherits="KMS.view.Kupload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mainbg.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="sub-title-center">知识上传</h1>
    <div class="upload">
        <div class="upload-cell">
            选择类别：
            <asp:DropDownList ID="selectCategory" runat="server">
                <asp:ListItem Value="文学">文学</asp:ListItem>
                <asp:ListItem Value="计算机科学">计算机科学</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="upload-cell">
            作者姓名：
            <asp:TextBox ID="inputAuthor" runat="server" OnTextChanged="inputAuthor_TextChanged"></asp:TextBox>
        </div>
        <div class="upload-title">
            输入标题：
            <asp:TextBox ID="inputTitle" runat="server"></asp:TextBox>
        </div>
        
        <div class="upload-content">
            <p>知识内容：</p>
            <asp:TextBox ID="inputContent" runat="server" Height="163px" TextMode="MultiLine" Width="787px"></asp:TextBox>
        </div>
        <div class="upload-btn">
            <asp:Button ID="btnSubmit" runat="server" Text="提交" Width="292px" class="btn-primary btn-login" OnClick="btnSubmit_Click1"/>
        </div>
    </div>
</asp:Content>
