<%--
  Created by IntelliJ IDEA.
  User: yx17
  Date: 18-4-26
  Time: 上午10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Yx17的问卷系统 - 用户注册</title>
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
                <div class="welcome">注册Yx17的问卷系统</div>
                <div class="header">简单的问卷。</div>
            </div>
            <div class="fill"></div>
            <form action="/create-user" method="post">
                <input type="email" class="text full" name="email" placeholder="邮箱" required>
                <div class="fill"></div>
                <input type="password" class="text full" name="password" placeholder="密码" required>
                <div class="fill"></div>
                <div class="fill">
                    <%
                        String reg_info = (String) session.getAttribute("reg-info");
                        if (reg_info != null) {
                            out.print(reg_info);
                        }
                    %>
                </div>
                <input type="submit" class="submit" value="立即注册">
                <div class="underline-link"><a href="login.jsp">已有账号?点击此处立即登录</a></div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
