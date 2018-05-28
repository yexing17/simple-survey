<%--
  Created by IntelliJ IDEA.
  User: yx17
  Date: 18-4-26
  Time: 上午10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Yx17的问卷系统 - 用户登录</title>
    <link rel="stylesheet" href="css/form.css">
</head>
<body>
<div class="top">
    <div class="item feedback"><a href="index.jsp">返回主页</a></div>
    <div class="item mail-entry">邮箱账号</div>
</div>
<div class="main-wrapper">
    <div class="main">
        <div class="form">
            <div class="fill"></div>
            <div>
                <div class="welcome">登录后即可发布问卷</div>
                <div class="header">简单的问卷。</div>
            </div>
            <div class="fill"></div>
            <form action="/user-auth" method="get">
                <input type="email" class="text full" name="email" placeholder="邮箱" required>
                <div class="fill"></div>
                <input type="password" class="text full" name="password" placeholder="密码" required>
                <div class="fill"></div>
                <div class="fill">
                    <%
                        String login_info = (String) session.getAttribute("login-info");
                        if (login_info != null) {
                            out.print(login_info);
                        }
                    %>
                </div>
                <input type="submit" class="submit" value="登录">
                <div class="underline-link"><a href="reg.jsp">没有账号?点击此处立即注册</a></div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
