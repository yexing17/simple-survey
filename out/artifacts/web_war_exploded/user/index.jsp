<%--
  Created by IntelliJ IDEA.
  User: Fran Lin
  Date: 2018/5/20
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户面板</title>
    <link rel="stylesheet" href="/css/form.css">
</head>
<body>
<div class="top">
    <div class="item feedback"><a href="/">返回主页</a></div>
    <div class="item mail-entry">退出登陆</div>
</div>
<div class="main-wrapper">
    <div class="main">
        <div class="form">
            <div class="fill"></div>
            <div>
                <div class="welcome">欢迎来到用户面板</div>
                <div class="header">创建或者查看</div>
            </div>
            <div class="fill"></div>
            <form action="/user-auth" method="get">
                <div class="underline-link"><a href="add.jsp">创建问卷</a></div>
                <div class="fill"></div>
                <div class="underline-link"><a href="list.jsp">所有问卷</a></div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
