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
    <!-- from template -->
    <meta charset="utf-8">
    <title>Login</title>
    <!-- Mobile specific metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Force IE9 to render in normal mode -->
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="author" content="SuggeElson" />
    <meta name="description" content=""
    />
    <meta name="keywords" content=""
    />
    <meta name="application-name" content="sprFlat admin template" />
    <!-- Import google fonts - Heading first/ text second -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />
    <!--[if lt IE 9]>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
    <![endif]-->
    <!-- Css files -->
    <!-- Icons -->
    <link href="assets/css/icons.css" rel="stylesheet" />
    <!-- jQueryUI -->
    <link href="assets/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
    <!-- Bootstrap stylesheets (included template modifications) -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- Plugins stylesheets (all plugin custom css) -->
    <link href="assets/css/plugins.css" rel="stylesheet" />
    <!-- Main stylesheets (template main css file) -->
    <link href="assets/css/main.css" rel="stylesheet" />
    <!-- Custom stylesheets ( Put your own changes here ) -->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/img/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/img/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/img/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/img/ico/apple-touch-icon-57-precomposed.png">
    <link rel="icon" href="assets/img/ico/favicon.ico" type="image/png">
    <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
    <meta name="msapplication-TileColor" content="#3399cc" />
</head>
<body class="login-page">
<!-- Start #login -->
<div id="login" class="animated bounceIn">
    <img id="logo" src="assets/img/logo-new.jpg" alt="sprFlat Logo">
    <!-- Start .login-wrapper -->
    <div class="login-wrapper">
        <ul id="myTab" class="nav nav-tabs nav-justified bn">
            <li>
                <a href="#log-in" data-toggle="tab">登陆</a>
            </li>
            <li class="">
                <a href="#register" data-toggle="tab">注册</a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content bn">
            <div class="tab-pane fade active in" id="log-in">
                <div class="seperator">
                </div>
                <form class="form-horizontal mt10" action="user-auth" id="login-form" role="form">
                    <div class="form-group">
                        <div class="col-lg-12">
                            <input type="email" name="email" id="email" class="form-control left-icon" value="" placeholder="你的邮箱" required>
                            <i class="ec-user s16 left-input-icon"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-12">
                            <input type="password" name="password" id="password" class="form-control left-icon" value="" placeholder="你的密码" required>
                            <i class="ec-locked s16 left-input-icon"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-8">
                            <!-- col-lg-12 start here -->
                        </div>
                        <!-- col-lg-12 end here -->
                        <div class="col-lg-12">
                            <!-- col-lg-12 start here -->
                            <button class="btn btn-success btn-block" type="submit">登陆</button>
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                </form>
            </div>
            <div class="tab-pane fade" id="register">
                <form class="form-horizontal mt20" action="/create-user" id="register-form" role="form">
                    <div class="form-group">
                        <div class="col-lg-12">
                            <!-- col-lg-12 start here -->
                            <input id="email1" name="email" type="email" class="form-control left-icon" placeholder="请输入你的邮箱" required>
                            <i class="ec-mail s16 left-input-icon"></i>
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                    <div class="form-group">
                        <div class="col-lg-12">
                            <!-- col-lg-12 start here -->
                            <input type="password" class="form-control left-icon" id="password1" name="password" placeholder="请输入你的密码" required>
                            <i class="ec-locked s16 left-input-icon"></i>
                        </div>
                        <!-- col-lg-12 end here -->
                        <div class="col-lg-12 mt15">
                            <!-- col-lg-12 start here -->
                            <input type="password" class="form-control left-icon" id="confirm_password" name="confirm_passowrd" placeholder="重复您的密码" required>
                            <i class="ec-locked s16 left-input-icon"></i>
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                    <div class="form-group">
                        <div class="col-lg-12">
                            <!-- col-lg-12 start here -->
                            <button class="btn btn-success btn-block">注册</button>
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End #.login-wrapper -->
</div>
<!-- End #login -->

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
<!-- Form plugins -->
<script src="assets/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="assets/plugins/forms/validation/jquery.validate.js"></script>
<script src="assets/plugins/forms/validation/additional-methods.min.js"></script>
<!-- Init plugins olny for this page -->
<script src="assets/js/pages/login.js"></script>
</body>
</html>
