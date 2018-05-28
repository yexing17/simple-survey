<%--
  Created by IntelliJ IDEA.
  User: Fran Lin
  Date: 2018/5/21
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>创建问卷</title>
    <link rel="stylesheet" href="/css/form.css">
    <script src="/js/lib/jquery.min.js"></script>
    <script>
        var count = 0;

        function appendSelect() {
            count++;
            var t = "<div class=\"fill\"></div>\n" +
                "                <hr>\n" +
                "                " + count + ".问题:<br><input type='textarea' cols=\"30\" rows=\"10\" name=\"question" + count + "\" required><br>\n" +
                "                A <input type=\"text\" name='q" + count + "m1' required><br>\n" +
                "                B <input type=\"text\" name='q" + count + "m2' required><br>\n" +
                "                C <input type=\"text\" name='q" + count + "m3' required><br>\n" +
                "                D <input type=\"text\" name='q" + count + "m4' required>";
            $("form").append(t);
        }

        function appendBlank() {
            count++;
            var t = "<div class=\"fill\"></div>\n" +
                "                <hr>\n" +
                "                " + count + ".问题:<br><input type=\"textarea\" name=\"question" + count + "\" required>";
            $("form").append(t);
        }
    </script>
</head>
<body>
<div class="top">
    <div class="item feedback"><a href="/user">用户面板</a></div>
    <div class="item mail-entry">退出登陆</div>
</div>
<div class="main-wrapper">
    <div class="main">
        <div class="form">
            <div class="fill"></div>
            <div>
                <div class="welcome">创建问卷</div>
            </div>
            <div class="fill"></div>
            <button onclick="appendSelect()">添加选择题</button>
            <button onclick="appendBlank()">添加填空题</button>
            <div class="fill"></div>
            <form action="/questionnaire.action?action=add" method="post">
                <input type="submit" value="完成问卷">
                <div class="fill"></div>
                <hr>
                标题: <input type="text" name="title" required>
                描述: <input type="text" name="description" required>
            </form>
        </div>
    </div>
</div>
</body>
</html>
