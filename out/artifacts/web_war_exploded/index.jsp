<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Yx17的问卷系统</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="container">
    <div class="header">
        <ul>
            <li><a href="#home">主页</a></li>
            <li><a href="#news">新闻</a></li>
            <li><a href="#contact">联系</a></li>

            <%
                String isLogin = (String)session.getAttribute("user");
                if (isLogin != null) {
                    out.print("<li style='float: right'><a href='index.jsp?logout=true'>退出登录</a></li><li style='float: right'><a href='/user'>用户中心</a></li>");
                }
                else {
                    out.print("<li style='float: right'><a href='login.jsp'>登录</a></li>");
                }
                String logout = (String)request.getParameter("logout");
                if (logout != null) {
                    if (logout.equals("true")) {
                        session.setAttribute("user", null);
                        response.sendRedirect("index.jsp");
                    }
                }
            %>
        </ul>
    </div>
</div>
</body>
</html>