<%@ Page Title="" Language="C#" MasterPageFile="~/components/masterPage.Master" AutoEventWireup="true" CodeBehind="Omanage.aspx.cs" Inherits="KMS.view.Omanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mainbg.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="sub-title">机构管理</h1>

    <div class="grid">   
        <h2>计算机学院-账户列表</h2>
        <div class="grid-inner">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userAccount" DataSourceID="SqlDataSource1" Width="1870px">
                <Columns>
                    <asp:BoundField DataField="userAccount" HeaderText="账户名称" ReadOnly="True" SortExpression="userAccount" />
                </Columns>

            </asp:GridView>
                
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" ProviderName="<%$ ConnectionStrings:DBConnection.ProviderName %>" SelectCommand="SELECT userAccount FROM users WHERE userPrivilege='computer'"></asp:SqlDataSource>
        </div>
    </div>

    <hr />

    <div class="grid">  
        <h2>文学院-账户列表</h2>
        <div class="grid-inner">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="userAccount" DataSourceID="SqlDataSource2" Width="1870px">
                <Columns>
                    <asp:BoundField DataField="userAccount" HeaderText="账户名称" ReadOnly="True" SortExpression="userAccount" />
                </Columns>

            </asp:GridView>
                
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" ProviderName="<%$ ConnectionStrings:DBConnection.ProviderName %>" SelectCommand="SELECT userAccount FROM users WHERE userPrivilege='literature'"></asp:SqlDataSource>
        </div>
    </div>


</asp:Content>
