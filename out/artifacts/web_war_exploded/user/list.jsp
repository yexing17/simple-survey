<%--
  Created by IntelliJ IDEA.
  User: Fran Lin
  Date: 2018/5/21
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>创建问卷</title>
    <link rel="stylesheet" href="/css/form.css">
</head>
<body>
<c:if test="${empty qns}">
    <c:redirect url="/questionnaire.action?action=list"/>
</c:if>

<div class="top">
    <div class="item feedback"><a href="/user">用户面板</a></div>
    <div class="item mail-entry">退出登陆</div>
</div>
<div class="main-wrapper">
    <div class="main">
        <div class="form">
            <div class="fill"></div>
            <div>
                <div class="welcome">查看问卷</div>
            </div>
            <div class="fill"></div>
            <table>
                <tr>
                    <th>问卷编号</th>
                    <th>问卷名称</th>
                    <th>创建时间</th>
                    <th colspan="2">操作</th>
                </tr>
                <c:forEach var="qn" items="${qns}">
                    <tr>
                        <td>${qn.qn_id}</td>
                        <td>${qn.title}</td>
                        <td>${qn.create_time}</td>
                        <td><a href="/user/analysis.jsp?id=${qn.qn_id}">查看统计</a></td>
                        <td><a href="/survey.jsp?id=${qn.qn_id}">查看问卷</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<c:remove var="qns"/>
</body>
</html>
