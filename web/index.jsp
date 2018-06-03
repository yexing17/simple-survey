<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Fran Lin
  Date: 2018/6/3
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>简单问卷</title>
        <!-- Mobile specific metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Force IE9 to render in normal mode -->
        <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
        <meta name="author" content="SuggeElson yx17 FranLin"/>
        <meta name="description" content="It's a open-source seuvey system depend on jakartaee"/>
        <meta name="keywords" content="survey test questionnaire system javaee"/>
        <meta name="application-name" content="simple survey"/>
        <!-- Import google fonts - Heading first/ text second -->
        <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />
        <!--[if lt IE 9]>
        <![endif]-->

        <!-- Css files -->
        <!-- Bootstrap stylesheets (included template modifications) -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- Main stylesheets (template main css file) -->
        <link href="assets/css/landing.css" rel="stylesheet" />
        <!-- Custom stylesheets ( Put your own changes here ) -->
        <link href="assets/css/custom-landing.css" rel="stylesheet" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/img/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/img/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/img/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/img/ico/apple-touch-icon-57-precomposed.png">
        <link rel="icon" href="assets/img/ico/favicon.ico" type="image/png">
        <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
        <meta name="msapplication-TileColor" content="#3399cc" />
    </head>
    <body>

        <!-- Start .landing-intro -->
        <div id="top" class="landing-intro" role="main">
            <!-- Start .container -->
            <div class="container">
                <!-- Start .header -->
                <header class="header row">
                    <div class="col-md-6 col-sm-12 text-center">
                        <!-- Start .logo -->
                        <div class="logo">
                            <a href="landing.html">
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
                                        <a class="btn btn-white btn-alt" href="/user.action?action=logout" target="_blank">登出</a>
                                    </li>
                                    <li>
                                        <a class="btn btn-white btn-alt" href="/user">用户中心</a>
                                    </li>
                                </c:if>
                                <c:if test="${empty sessionScope.user_id}">
                                    <li>
                                        <a class="btn btn-white btn-alt" href="/auth.jsp" >登陆/注册</a>
                                    </li>
                                </c:if>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!-- End .header -->
                <!-- Start intro-slogan -->
                <div class="intro-slogan text-center animated fadeInDown">
                    <h1>让问卷更<strong>简单</strong>!
                    </h1>
                    <p>
                        一个简单的<strong>问卷</strong>系统
                        <br class="hidden-xs">界面友好,操作快速,<strong>逻辑简单</strong>
                    </p>
                    <!--
                    <img class="img-responsive center-block center-block" src="assets/img/landing/sprflat.png" alt="spr flat admin">
                    -->
                </div>
                <!-- End intro-slogan -->
            </div>
            <!-- End .container -->
            <!-- Start .description-bar -->
            <div class="description-bar">
                <!-- Start container -->
                <div class="container text-center">
                    <p>Perfect Solution for Programmers, Web Design Studios, Freelancers, Software Companies and Folks with Custom Crafted Systems</p>
                </div>
                <!-- End container -->
            </div>
            <!-- End description-bar -->
            <!-- Scroll to next section -->
            <a href="#build-with-love" class="scrollTo">
                <p class="sroll-down">
                    <img src="assets/img/landing/scroll_down.png" alt="scrolldown">
                </p>
            </a>
        </div>
        <!-- End .landing-intro -->
        <!-- Start section-features -->
        <div id="features" class="section-features">
            <!-- Start made with -->
            <div class="madewith">
                <div class="container">
                    <div class="text-center">
                        <h3 id="build-with-love" class="section-header-1">Build with love and this awesome tools ...</h3>
                    </div>
                    <div class="logos row">
                        <div class="col-md-2 col-sm-2 col-xs-4">
                            <div class="text-center">
                                <img class="img-responsive center-block" src="assets/img/landing/logos/less.png" alt="Less css">
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-4">
                            <div class="text-center">
                                <img class="img-responsive center-block" src="assets/img/landing/logos/bootstrap.png" alt="Bootstrap">
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-4">
                            <div class="text-center">
                                <img class="img-responsive center-block" src="assets/img/landing/logos/grunt-logo.png" alt="Grunt js">
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-4">
                            <div class="text-center">
                                <img class="img-responsive center-block" src="assets/img/landing/logos/yeoman.png" alt="Yeoman generator">
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-4">
                            <div class="text-center">
                                <img class="img-responsive center-block" src="assets/img/landing/logos/bower-logo.png" alt="Bower">
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-4">
                            <div class="text-center">
                                <img class="img-responsive center-block" src="assets/img/landing/logos/nodejs.png" alt="Node js">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End made with -->
            <!-- Start clean-code section -->
            <section id="clean-code" class="clean-code features-row">
                <div class="container">
                    <div class="text-center">
                        <h3 class="section-header-1">What do you need to get your project,
                            <br class="hidden-sm hidden-xs">up and running fast?</h3>
                    </div>
                    <div class="row">
                        <!-- Start .row -->
                        <div class="col-md-8 col-sm-8">
                            <img class="img-responsive center-block" src="assets/img/landing/features/cleancode.png" alt="Clean code">
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <h3 class="section-header">Clean code</h3>
                            <p>All code blocks are property commented and seperated for easy management and integration</p>
                            <p>Tab indent 4 is used for good visual understanding</p>
                            <p>Directories , images and all other assets is placed in intuitive named directories</p>
                        </div>
                    </div>
                    <!-- End .row -->
                </div>
            </section>
            <!-- End clean-code section -->
            <!-- Start charts section -->
            <section id="charts" class="charts gray-bg features-row">
                <div class="container">
                    <div class="row">
                        <!-- Start .row -->
                        <div class="col-md-4 col-sm-4">
                            <h3 class="section-header">Awesome Charts</h3>
                            <p>Templat is powered by Flot charts</p>
                            <p>With custom styling and warm colors</p>
                            <p>Many examples are included - line charts, line carts with dots, sparklines, bars, donut charts, pie charts and etc.</p>
                        </div>
                        <div class="col-md-8 col-sm-8">
                            <img class="img-responsive center-block" src="assets/img/landing/features/charts.png" alt="Charts">
                        </div>
                    </div>
                    <!-- End .row -->
                </div>
            </section>
            <!-- End charts section -->

        </div>
        <!-- End section-features -->
        <!-- Start Footer -->
        <footer id="footer">
            <div class="container">
                <div class="row mt50 mb50">
                    <!-- Start .row -->
                    <div class="col-md-12 footer-links">
                        <a href="#features" class="goTo">Features</a> 
                        <a href="#testimonials" class="goTo">Testomonials</a> 
                        <a href="https://hisun.me" target="_blank">Blog</a>
                        <a href="http://themes.suggelab.com/?product=sprflat" target="_blank">Demo</a>
                        <a href="#top" class="back-to-top">Back to Top</a>
                        <p>&copy;2018 FranLin</p>
                    </div>
                </div>
                <!-- End .row -->
            </div>
        </footer>
        <!-- End footer -->
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
        <!-- Other plugins ( load only nessesary plugins for every page) -->
        <script src="assets/plugins/ui/waypoint/waypoints.js"></script>
        <script src="assets/js/pages/landing.js"></script>
    </body>
</html>