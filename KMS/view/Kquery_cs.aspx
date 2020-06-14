<%@ Page Title="" Language="C#" MasterPageFile="~/components/masterPage.Master" AutoEventWireup="true" CodeBehind="Kquery_cs.aspx.cs" Inherits="KMS.view.Kquery_cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mainbg.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="sub-title">知识查询(计算机科学限定)</h1>
    <div class="query">
        <div class="query-input">
            请输入查询内容：
            <asp:TextBox ID="queryWord" runat="server" Width="418px"></asp:TextBox>
            <asp:Button ID="btnQuery" runat="server" Text="查询" Width="120px" class="btn-query btn-success" OnClick="btnQuery_Click"/>
        </div>
        <asp:Label ID="test1" runat="server" Text=""></asp:Label>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333"  RepeatColumns="2"  Width="1870px">

          <ItemTemplate>
              <div class="query-ans">
                  <ul>
                      <li>知识id：&nbsp;&emsp;<%#Eval("Kid") %></li>
                      <li>收录于：&emsp;<%#Eval("Kcategory") %></li>
                      <li>标题：&emsp;&emsp;<%#Eval("Ktitle") %></li>
                      <li>作者：&emsp;&emsp;<%#Eval("Kauthor") %></li>
                      <li>添加时间：<%#Eval("AddTime","{0:yyyy-MM-dd}") %></li>
                      <li>内容：&emsp;&emsp;<%#Eval("Kcontent") %></li>
                  </ul>
              </div>
          </ItemTemplate>

        </asp:DataList>
    </div>
</asp:Content>
