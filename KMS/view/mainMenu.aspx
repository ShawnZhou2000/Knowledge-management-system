<%@ Page Title="" Language="C#" MasterPageFile="~/components/masterPage.Master" AutoEventWireup="true" CodeBehind="mainMenu.aspx.cs" Inherits="KMS.view.mainMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- 头部 --%>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/mainbg.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- 内容页 --%>
    <h1 class="menu-title">请选择一个功能</h1>
    <div class="btn-box">
        <a href="Klist.aspx">
            <div class="box box-color-1">
                <span class="ripple"></span>
                <p>知识列表</p>
            </div>
        </a>
        <a href="Kquery.aspx">
            <div class="box box-color-2">
                <span class="ripple"></span>
                <p>知识查询</p>
            </div>
        </a>
        <a href="Kupload.aspx">
            <div class="box box-color-3">
                <span class="ripple"></span>
                <p>知识上传</p>
            </div>
        </a>
        <a href="Omanage.aspx">
            <div class="box box-color-4">
                <span class="ripple"></span>
                <p>机构管理</p>
            </div>
        </a>
        <a href="Umanage.aspx">
            <div class="box box-color-5">
                <span class="ripple"></span>
                <p>人员管理</p>
            </div>
        </a>
        <a href="Pmanage.aspx">
            <div class="box box-color-6">
                <span class="ripple"></span>
                <p>权限管理</p>
            </div>
        </a>
    </div>
    <script>
        let box = document.querySelectorAll(".box");
        for (let i = 0; i < box.length; i++) {
            box[i].onmouseenter = function (event) {
                let ripple = box[i].querySelector(".ripple");
                ripple.classList.add("animation");
                ripple.style.width = this.offsetWidth + "px";
                ripple.style.height = this.offsetWidth + "px";
                ripple.style.top = -(this.offsetHeight - event.offsetY) + "px";
                ripple.style.left = -(this.offsetWidth / 2 - event.offsetX) + "px";
                setTimeout(function () {
                    ripple.classList.remove("animation");
                }, 500)

            }
        }
    </script>
</asp:Content>
