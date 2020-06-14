# ASP.NET期末大作业 知识管理系统
## 下载与运行

获取项目：

```
git clone https://github.com/ShawnZhou2000/Knowledge-management-system.git
```

或点击Download Zip打包下载到本地。

运行项目：

```
使用Visual Studio 2019（低版本不保证一定能正常运行）打开KMS.sln，配置好数据库后可以点击调试在本地运行。
```

## 配置依赖项

首先从[https://dev.mysql.com/downloads/connector/net/8.0.html](https://dev.mysql.com/downloads/connector/net/8.0.html)下载安装MySQL Connector/NET 8.0.20，将依赖项添加到配置中

在本地MySQL环境中建立一个名为KMS的数据库，运行项目中的`kmsdb.sql`文件初始化数据库结构。

在users表中新建一个超级管理员用户，用户名密码自定，用户权限（userPrivilege）列设为`admin`。

## 开发环境

Web前端：Bootstrap 4

Web后端：ASP.NET Framework 4.7.2

数据库系统：MySQL 8.0

编码设计：Microsoft Visual Studio Community 2019 16.5.4

数据库管理：Navicat Premium 15.0.14

操作系统：Microsoft Windows 10 Home Version 1909

服务器：Internet Information Services Version 10.0.18362.1

## 系统功能实现

知识管理系统的完整功能需求如下。

（1） 用户登录与权限控制

本系统需要支持不同权限的用户登录，系统管理员具有最高权限，具有账号和知识库的全部增加、删除、修改、查询权限；此外另设两类分账号，计算机学院的账号可以查看计算机类知识相关内容，文学院的账号可以查看文学类知识相关内容。

（2） 知识的分类、上传、存储和下载

本系统需要支持不同知识内容的分类，隶属于计算机科学的知识归属于计算机知识库，隶属于文学的知识归属于文学知识库。系统管理员可以对不同知识库的知识进行上传。知识信息以记录的形式存储于数据库中。系统管理员，学院分账号可以查询知识库中的内容，并获取到返回的结果。获取到的结果以HTML的形式展现在用户界面，用户可以复制以获取知识条目的详细信息。

（3） 组织机构管理、人员管理、权限管理

本知识库需要支持组织机构管理，即支持在系统内查看不同学院内账号情况，方便对组织内账号进行管理。此外，在人员管理中可以添加新账号，删除人员账号，修改人员账号；在权限管理中，系统管理员可以为不同的账号分配不同的权限。