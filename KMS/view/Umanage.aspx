<%@ Page Title="" Language="C#" MasterPageFile="~/components/masterPage.Master" AutoEventWireup="true" CodeBehind="Umanage.aspx.cs" Inherits="KMS.view.Umanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mainbg.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="sub-title" style="display:inline-block;">人员管理</h1>
    <div class="add-btn">
        <asp:Button ID="btnAddUser" runat="server" Text="添加用户" Width="178px" OnClick="btnAddUser_Click" />
    </div>
    <div class="grid">   
        <div class="grid-inner">
            <asp:GridView ID="Klistinfo" runat="server" AutoGenerateColumns="False"  Width="1870px" DataKeyNames="userAccount"  OnSelectedIndexChanged="Klistinfo_SelectedIndexChanged" OnRowDeleting="Klistinfo_RowDeleting" OnRowUpdating="Klistinfo_RowUpdating" OnRowEditing="Klistinfo_RowEditing" OnRowDataBound="Klistinfo_RowDataBound" OnRowCancelingEdit="Klistinfo_RowCancelingEdit">
                <Columns>
                    <asp:BoundField DataField="userAccount" HeaderText="用户名" ReadOnly="True" SortExpression="userAccount" />
                    <asp:BoundField DataField="userPassword" HeaderText="密码" SortExpression="userPassword" />
                    <asp:BoundField DataField="userPrivilege" HeaderText="用户权限" SortExpression="userPrivilege" />
                    <asp:CommandField ShowEditButton="True" HeaderText="编辑"/>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

    

    

</asp:Content>
