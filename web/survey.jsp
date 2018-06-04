<%@ page import="org.json.simple.JSONObject" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fran Lin
  Date: 2018/5/20
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- start:getting the qn json object by id -->
<c:set var="qn_id" value="${param.id}" scope="session"/>
<c:if test="${empty qn}">
    <c:redirect url="/questionnaire.action?action=get"/>
</c:if>
<!-- end:getting the qn json object by id -->

<!-- start:fetching and setting the qn's attr objects to pageScope -->
<%
    Object title = ((JSONObject) session.getAttribute("qn")).get("title");
    Object description = ((JSONObject) session.getAttribute("qn")).get("description");
    Object questions = ((JSONObject) session.getAttribute("qn")).get("questions");

    pageContext.setAttribute("title", title);
    pageContext.setAttribute("description", description);
    pageContext.setAttribute("questions", questions);
%>
<!-- end:fetching and setting the qn's attr objects to pageScope -->
<head>
    <meta charset="utf-8">
    <!------------------------------------------- fix the blow title ---------------------------------------->
    <title>简单问卷-${pageScope.title}</title>

    <!-- Mobile specific metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Force IE9 to render in normal mode -->
    <!--[if IE]>
    <meta http-equiv="x-ua-compatible" content="IE=9"/><![endif]-->
    <meta name="author" content="SuggeElson yx17 FranLin"/>
    <meta name="description" content="It's a open-source seuvey system depend on jakartaee"/>
    <meta name="keywords" content="survey test questionnaire system javaee"/>
    <meta name="application-name" content="simple survey"/>
    <!-- Import google fonts - Heading first/ text second -->
    <link rel='stylesheet' type='text/css'
          href='http://fonts.googleapis.com/css?family=Open+Sans:400,700|Droid+Sans:400,700'/>
    <!--[if lt IE 9]>
    <![endif]-->

    <!-- Css files -->
    <!-- Icons -->
    <link href="assets/css/icons.css" rel="stylesheet"/>
    <!-- jQueryUI -->
    <link href="assets/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet"/>
    <!-- Bootstrap stylesheets (included template modifications) -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Main stylesheets (template main css file) -->
    <link href="assets/css/landing.css" rel="stylesheet"/>
    <!-- Custom stylesheets ( Put your own changes here ) -->
    <link href="assets/css/custom-landing.css" rel="stylesheet"/>
    <!-- Plugins stylesheets (all plugin custom css) -->
    <link href="assets/css/plugins.css" rel="stylesheet"/>
    <!-- Main stylesheets (template main css file) -->
    <link href="assets/css/main.css" rel="stylesheet"/>
    <!-- Custom stylesheets ( Put your own changes here ) -->
    <link href="assets/css/custom.css" rel="stylesheet"/>
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/img/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/img/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/img/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/img/ico/apple-touch-icon-57-precomposed.png">
    <link rel="icon" href="assets/img/ico/favicon.ico" type="image/png">
    <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
    <meta name="msapplication-TileColor" content="#3399cc"/>
</head>
<body>
<div id="top" class="landing-intro" role="main">
    <!-- Start .container -->
    <div class="container">
        <!-- Start .header -->
        <header class="header row">
            <div class="col-md-6 col-sm-12 text-center">
                <!-- Start .logo -->
                <div class="logo">
                    <a href="/">
                        <img src="assets/img/logo-no-ico.png" alt="logo" width="130px" height="50px">
                        <p class="slogan hidden-sm hidden-xs">问卷
                            <br>本该简单</p>
                    </a>
                </div>
                <!-- End .logo -->
            </div>
            <div class="col-md-6 col-sm-12">
                <nav>
                    <ul>
                        <c:if test="${not empty sessionScope.user_id}">
                            <li>
                                <a class="btn btn-white btn-alt" href="/user.action?action=logout"
                                   target="_blank">登出</a>
                            </li>
                            <li>
                                <a class="btn btn-white btn-alt" href="/user/index.jsp">用户中心</a>
                            </li>
                        </c:if>
                        <c:if test="${empty sessionScope.user_id}">
                            <li>
                                <a class="btn btn-white btn-alt" href="/auth.jsp">登陆/注册</a>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- End .header -->

        <!-- Start intro-slogan -->
        <div class="intro-slogan text-center animated fadeInDown">
            <h1>
                ${pageScope.title}
            </h1>
            <p>
                ${pageScope.description}
            </p>
            <!--
            <img class="img-responsive center-block center-block" src="assets/img/landing/sprflat.png" alt="spr flat admin">
            -->
        </div>
        <!-- End intro-slogan -->
    </div>
    <!-- End .container -->
</div>
<!-- End .landing-intro -->


<!-- to use radios and text-areas  -->

<!-- Start section-features -->
<div id="features" class="section-features">
    <!-- Start qn section -->
    <section id="clean-code" class="clean-code features-row">
        <div class="container">

            <!-- Start .row -->
            <div class="row">
                <div class="col-lg-12">
                    <!-- Start col-lg-12 -->
                    <div class="panel panel-default toggle">
                        <!-- Start .panel -->
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                提交问卷前请确认所有内容已经填写完整
                            </h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal group-border hover-stripped" role="form" id="validate"
                                  action="/receipt.action" method="post">
                                <!-- init the question count -->
                                <c:set var="count" value="1" scope="session"/>

                                <!-- start:get the qn's details -->
                                <c:forEach var="question" items="${pageScope.questions}">
                                    <!-- start:fetch from json and set to pageContext -->
                                    <%
                                        Object question_id = ((JSONObject) pageContext.getAttribute("question")).get("question_id");
                                        Object question_content = ((JSONObject) pageContext.getAttribute("question")).get("question");
                                        Object type = ((JSONObject) pageContext.getAttribute("question")).get("type");

                                        pageContext.setAttribute("question_id", question_id);
                                        pageContext.setAttribute("question_content", question_content);
                                        pageContext.setAttribute("type", type);
                                    %>
                                    <!-- start:fetch from json and set to pageContext -->

                                    <!-- start:display a question-->
                                    <div class="form-group">
                                        <!-- start:common section,count and title of question -->
                                        <div class="col-lg-10 col-md-10">
                                            <h3 class="section-header">
                                                    ${count}.${pageScope.question_content}
                                            </h3>
                                        </div>

                                        <!-- start:different section,question's answer filed,depend on type of ques -->

                                        <!-- start:if this is a slc(select) -->
                                        <c:if test="${pageScope.type eq \"slc\"}">
                                            <%
                                                Object options = ((JSONObject) pageContext.getAttribute("question")).get("options");

                                                pageContext.setAttribute("options", options);
                                            %>
                                            <div class="col-lg-12 col-md-10">
                                                <c:forEach var="option" items="${pageScope.options}">
                                                    <%
                                                        Object mark = ((JSONObject) pageContext.getAttribute("option")).get("mark");
                                                        Object content = ((JSONObject) pageContext.getAttribute("option")).get("content");

                                                        pageContext.setAttribute("mark", mark);
                                                        pageContext.setAttribute("content", content);
                                                    %>
                                                    <label class="radio">
                                                        <input type="radio" name="c${count}a" value="${pageScope.mark}">${pageScope.mark}.${pageScope.content}
                                                    </label>
                                                    <input type="hidden" name="c${count}qid" value="${pageScope.question_id}">
                                                </c:forEach>
                                            </div>

                                        </c:if>
                                        <!-- end:if this is a slc(select) -->

                                        <!-- start:if this is a blk(blank) -->
                                        <c:if test="${pageScope.type eq \"blk\"}">
                                            <div class="col-lg-10 col-md-10">
                                            <textarea class="form-control limitTextarea" maxlength="250"
                                                      rows="3" name="c${count}a"></textarea>
                                            </div>
                                            <input type="hidden" name="c${count}qid" value="${pageScope.question_id}">
                                        </c:if>
                                        <!-- start:if this is a blk(blank) -->

                                        <!-- start:different section,question's answer filed,depend on type of ques -->

                                        <!-- increase the count -->
                                        <c:set var="count" value="${count + 1}" scope="session"/>
                                    </div>
                                    <!-- end:display a question-->

                                </c:forEach>
                                <!-- end:get the qn's details -->

                                <!-- start:submit button -->
                                <div class="form-group">
                                    <div class="col-lg-4">
                                    </div>
                                    <div class="col-lg-4">
                                        <button type="submit" class="btn btn-lg btn-success btn-block">提交问卷</button>
                                    </div>
                                    <div class="col-lg-4">
                                    </div>
                                </div>
                                <!-- end:submit button -->
                            </form>
                        </div>
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                提交问卷前请确认所有内容已经填写完整
                            </h3>
                        </div>
                    </div>
                    <!-- End .panel -->
                </div>
                <!-- End col-lg-12 -->
            </div>
            <!-- End .row -->
        </div>
    </section>
    <!-- End qn section -->
</div>

<!-- rm qn object for refresh -->
<c:remove var="qn"/>

<!-- End section-features -->
<!-- Start Footer -->
<footer id="footer">
    <div class="container">
        <div class="row mt50 mb50">
            <!-- Start .row -->
            <div class="col-md-12 footer-links">
                <a href="https://hisun.me" target="_blank">Blog</a>
                <a href="#top" class="back-to-top">Back to Top</a>
                <p>&copy;2018 FranLin</p>
            </div>
        </div>
        <!-- End .row -->
    </div>
</footer>
<!-- end footer -->

<!-- Javascripts -->
<!-- Load pace first -->
<script src="assets/plugins/core/pace/pace.min.js"></script>
<!-- Important javascript libs(put in all pages) -->
<script src="assets/js/jquery-1.8.3.min.js"></script>
<script>
    window.jQuery || document.write('<script src="assets/js/libs/jquery-2.1.1.min.js">\x3C/script>')
</script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
    window.jQuery || document.write('<script src="assets/js/libs/jquery-ui-1.10.4.min.js">\x3C/script>')
</script>
<!--[if lt IE 9]>
<script type="text/javascript" src="assets/js/libs/excanvas.min.js"></script>
<script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<script type="text/javascript" src="assets/js/libs/respond.min.js"></script>
<![endif]-->
<!-- Bootstrap plugins -->
<script src="assets/js/bootstrap/bootstrap.js"></script>
<!-- Core plugins ( not remove ever) -->
<!-- Handle responsive view functions -->
<script src="assets/js/jRespond.min.js"></script>
<!-- Custom scroll for sidebars,tables and etc. -->
<script src="assets/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
<!-- Resize text area in most pages -->
<script src="assets/plugins/forms/autosize/jquery.autosize.js"></script>
<!-- Proivde quick search for many widgets -->
<script src="assets/plugins/core/quicksearch/jquery.quicksearch.js"></script>
<!-- Bootbox confirm dialog for reset postion on panels -->
<script src="assets/plugins/ui/bootbox/bootbox.js"></script>
<!-- Other plugins ( load only nessesary plugins for every page) -->
<!-- start:plugins for landing -->
<script src="assets/plugins/ui/waypoint/waypoints.js"></script>
<script src="assets/js/pages/landing.js"></script>
<!-- end:plugins for landing -->

<!-- start:plugins for form -->
<script src="assets/plugins/core/moment/moment.min.js"></script>
<script src="assets/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="assets/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="assets/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="assets/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="assets/plugins/forms/tinymce/tinymce.min.js"></script>
<script src="assets/plugins/forms/switch/jquery.onoff.min.js"></script>
<script src="assets/plugins/forms/maxlength/bootstrap-maxlength.js"></script>
<script src="assets/plugins/forms/bootstrap-filestyle/bootstrap-filestyle.js"></script>
<script src="assets/plugins/forms/color-picker/spectrum.js"></script>
<script src="assets/plugins/forms/daterangepicker/daterangepicker.js"></script>
<script src="assets/plugins/forms/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="assets/plugins/forms/globalize/globalize.js"></script>
<script src="assets/plugins/forms/maskedinput/jquery.maskedinput.js"></script>
<script src="assets/plugins/forms/select2/select2.js"></script>
<script src="assets/plugins/forms/dual-list-box/jquery.bootstrap-duallistbox.js"></script>
<script src="assets/plugins/forms/password/jquery-passy.js"></script>
<script src="assets/plugins/forms/checkall/jquery.checkAll.js"></script>
<script src="assets/plugins/misc/highlight/highlight.pack.js"></script>
<script src="assets/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="assets/js/jquery.sprFlat.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/pages/forms.js"></script>
<!-- end:plugins for form -->

</body>
</html>