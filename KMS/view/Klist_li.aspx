<%@ Page Title="" Language="C#" MasterPageFile="~/components/masterPage.Master" AutoEventWireup="true" CodeBehind="Klist_li.aspx.cs" Inherits="KMS.view.Klist_li" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mainbg.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="sub-title">知识列表-文学</h1>
    <div class="grid">   
        <div class="grid-inner">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Kid" DataSourceID="SqlDataSource2" Width="1870px">
                <Columns>
                    <asp:BoundField DataField="Kid" HeaderText="编号" ReadOnly="True" SortExpression="Kid" />
                    <asp:BoundField DataField="Kcategory" HeaderText="分类" SortExpression="Kcategory" />
                    <asp:BoundField DataField="Ktitle" HeaderText="标题" SortExpression="Ktitle" />
                    <asp:BoundField DataField="Kauthor" HeaderText="作者" SortExpression="Kauthor" />
                    <asp:BoundField DataField="AddTime" HeaderText="添加时间" SortExpression="AddTime" />
                    <asp:BoundField DataField="Kcontent" HeaderText="知识内容" SortExpression="Kcontent" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" ProviderName="<%$ ConnectionStrings:DBConnection.ProviderName %>" SelectCommand="SELECT knowledge.* FROM knowledge WHERE Kcategory = '文学'"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
