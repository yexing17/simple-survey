<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fran Lin
  Date: 2018/5/28
  Time: 0:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>问卷</title>
    <link rel="stylesheet" href="/css/form.css">
</head>
<body>
<c:if test="${empty qns}">
    <c:redirect url="/questionnaire.action?action=list"/>
</c:if>

<div class="top">
    <div class="item feedback"><a href="/">返回主页</a></div>
</div>
<div class="main-wrapper">
    <div class="main">
        <div class="form">
            <div class="fill"></div>
            <div>
                <div class="welcome">${qn.title}</div>
                <div>${qn.decription}</div>
            </div>
            <div class="fill"></div>
            <c:set var="count" value="1"/>
            <c:forEach var="question" items="${qn.questions}">
                <hr>
                ${count}.${question.question}
                <br>
                <c:if test="${question.type eq \"slc\"}">
                    <c:forEach var="option" items="options">
                        <select name="" id="">
                            <option value="${option.mark}">${option.mark}.${option.content}</option>
                        </select>
                    </c:forEach>
                </c:if>
                <c:if test="${question.type eq \"blk\"}">
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                </c:if>
                <c:set var="count" value="${count + 1}"/>
            </c:forEach>
        </div>
    </div>
</div>
<c:remove var="qns"/>
</body>
</html>
