<%@ page import="org.json.simple.JSONObject" %>
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
<c:set var="qn_id" value="${param.id}" scope="session"/>
<c:if test="${empty qn}">
    <c:redirect url="/questionnaire.action?action=get"/>
</c:if>

<div class="top">
    <div class="item feedback"><a href="/">返回主页</a></div>
</div>
<div class="main-wrapper">
    <div class="main">
        <div class="form">
            <div class="fill"></div>
            <div>
                <!-- 暂时想不到好的直接嗯使用 el 和 jstl 的方法,就先用原生 jsp 存进 pageContext 里面把,减少代码的耦合 -->
                <%
                    Object title = ((JSONObject) session.getAttribute("qn")).get("title");
                    Object description = ((JSONObject) session.getAttribute("qn")).get("description");
                    Object questions = ((JSONObject) session.getAttribute("qn")).get("questions");

                    pageContext.setAttribute("title", title);
                    pageContext.setAttribute("description", description);
                    pageContext.setAttribute("questions", questions);
                %>
                <div class="welcome">${pageScope.title}</div>
                <div>${pageScope.description}</div>
            </div>
            <c:set var="count" value="1" scope="session"/>
            <form action="/receipt.action" method="post">
                <c:forEach var="question" items="${pageScope.questions}">
                    <hr>
                    <%
                        Object question_id = ((JSONObject) pageContext.getAttribute("question")).get("question_id");
                        Object question_content = ((JSONObject) pageContext.getAttribute("question")).get("question");
                        Object type = ((JSONObject) pageContext.getAttribute("question")).get("type");

                        pageContext.setAttribute("question_id", question_id);
                        pageContext.setAttribute("question_content", question_content);
                        pageContext.setAttribute("type", type);
                    %>
                    ${count}.${pageScope.question_content}
                    <br>
                    <c:if test="${pageScope.type eq \"slc\"}">
                        <%
                            Object options = ((JSONObject) pageContext.getAttribute("question")).get("options");

                            pageContext.setAttribute("options", options);
                        %>
                        <c:forEach var="option" items="${pageScope.options}">
                            <%
                                Object mark = ((JSONObject) pageContext.getAttribute("option")).get("mark");
                                Object content = ((JSONObject) pageContext.getAttribute("option")).get("content");

                                pageContext.setAttribute("mark", mark);
                                pageContext.setAttribute("content", content);
                            %>
                            <input type="radio" name="c${count}a"
                                   value="${pageScope.mark}">${pageScope.mark}.${pageScope.content}
                            <br>
                            <input type="hidden" name="c${count}qid" value="${pageScope.question_id}">
                        </c:forEach>
                    </c:if>
                    <c:if test="${pageScope.type eq \"blk\"}">
                        <textarea name="c${count}a" id="" cols="73" rows="10"></textarea>
                        <input type="hidden" name="c${count}qid" value="${pageScope.question_id}">
                    </c:if>
                    <c:set var="count" value="${count + 1}" scope="session"/>
                </c:forEach>
                <div class="fill"></div>
                <input type="submit" value="提交">
            </form>
            <div class="fill"></div>
        </div>
    </div>
</div>
<c:remove var="qn"/>
</body>
</html>
