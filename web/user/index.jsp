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
<head>
    <meta charset="utf-8">
    <title>简单问卷-用户面板</title>

<%@include file="common-head-contents.jsp"%>

</head>
<body>

<%@include file="common-header-sidebar.jsp"%>

<!-- Start #content -->
<div id="content">
    <!-- Start .content-wrapper -->
    <div class="content-wrapper">
        <div class="row">
            <!-- Start .row -->
            <!-- Start .page-header -->
            <div class="col-lg-12 heading">
                <h1 class="page-header"><i class="im-screen"></i>用户面板</h1>
                <!-- Start .bredcrumb -->
                <ul id="crumb" class="breadcrumb">
                </ul>
                <!-- End .breadcrumb -->
                <!-- Start .option-buttons -->
                <div class="option-buttons">
                    <div class="btn-toolbar" role="toolbar">
                        <div class="btn-group">
                            <a href="/user/index.jsp" id="clear-localstorage" class="btn tip" title="刷新数据">
                                <i class="ec-refresh color-red s24"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- End .option-buttons -->
            </div>
            <!-- End .page-header -->
        </div>
        <!-- End .row -->
        <div class="outlet">
            <!-- Start .outlet -->
            <!-- Page start here ( usual with .row ) -->
            <div class="row">
                <!-- Start .row -->
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="carousel-tile carousel vertical slide">
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="tile red">
                                    <div class="tile-icon">
                                        <i class="br-plus s64"></i>
                                    </div>
                                    <div class="tile-content">
                                        <div class="number">NaN</div>
                                        <h3>创建新的问卷</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="tile orange">
                                    <!-- tile start here -->
                                    <div class="tile-icon">
                                        <i class="br-plus s64"></i>
                                    </div>
                                    <div class="tile-content">
                                        <div class="number">NaN</div>
                                        <h3>创建新的问卷</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Carousel -->
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="carousel-tile carousel slide">
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="tile blue">
                                    <div class="tile-icon">
                                        <i class="br-list s64"></i>
                                    </div>
                                    <div class="tile-content">
                                        <div class="number">NaN</div>
                                        <h3>查看所有问卷</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="tile brown">
                                    <!-- tile start here -->
                                    <div class="tile-icon">
                                        <i class="br-list s64"></i>
                                    </div>
                                    <div class="tile-content">
                                        <div class="number">NaN</div>
                                        <h3>查看所有问卷</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Carousel -->
                </div>
            </div>
            <!-- End .row -->
            <div class="row">
                <!-- Start .row -->
                <div class="col-lg-6 col-md-6 sortable-layout">
                    <!-- Start col-lg-6 -->
                    <div class="panel panel-teal toggle panelMove panelClose panelRefresh">
                        <!-- Start .panel -->
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="im-bars"></i> Page views</h4>
                        </div>
                        <div class="panel-body">
                            <div id="stats-pageviews" style="width: 100%; height:250px;"></div>
                        </div>
                        <div class="panel-footer teal-bg">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="tile teal m0">
                                    <div class="tile-content text-center pl0 pr0">
                                        <div id="countToday" class="number">75</div>
                                        <h3>Today</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="tile teal m0">
                                    <div class="tile-content text-center pl0 pr0">
                                        <div id="countYesterday" class="number">69</div>
                                        <h3>Yesterday</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="tile teal m0">
                                    <div class="tile-content text-center pl0 pr0">
                                        <div id="countWeek" class="number">380</div>
                                        <h3>This Week</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="tile teal m0">
                                    <div class="tile-content text-center pl0 pr0">
                                        <div id="countTotal" class="number">1254</div>
                                        <h3>Total</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End .panel -->
                    <div class="panel panel-brown panelMove">
                        <!-- Start .panel -->
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="st-camera"></i> Instagram activity</h4>
                            <div class="pull-right mt10">
                                <a href="#" class="color-grayspr">@SuggeElson</a>
                            </div>
                        </div>
                        <div class="panel-body p0">
                            <div class="instagram-widget">
                                <div class="instagram-widget-header gray-bg">
                                    <div class="col-lg-4 col-md-4 col-xs-4 text-center">
                                        <!-- col-lg-4 start here -->
                                        <a href="#">
                                            <p class="instagram-widget-text">Followers</p>
                                            <strong class="instagram-widget-number">1256</strong>
                                        </a>
                                    </div>
                                    <!-- col-lg-4 end here -->
                                    <div class="col-lg-4 col-md-4 col-xs-4 text-center">
                                        <!-- col-lg-4 start here -->
                                        <a href="#">
                                            <p class="instagram-widget-text">Following</p>
                                            <strong class="instagram-widget-number">345</strong>
                                        </a>
                                    </div>
                                    <!-- col-lg-4 end here -->
                                    <div class="col-lg-4 col-md-4 col-xs-4 text-center">
                                        <!-- col-lg-4 start here -->
                                        <a href="#">
                                            <p class="instagram-widget-text">Shots</p>
                                            <strong class="instagram-widget-number">176</strong>
                                        </a>
                                    </div>
                                    <!-- col-lg-4 end here -->
                                </div>
                                <div class="instagram-widget-image">
                                    <div id="instagram-widget" class="carousel slide">
                                        <!-- Indicators -->
                                        <ol class="carousel-indicators dotstyle">
                                            <li data-target="#instagram-widget" data-slide-to="0" class="active"><a
                                                    href="#">Image 1</a>
                                            </li>
                                            <li data-target="#instagram-widget" data-slide-to="1"><a href="#">Image
                                                2</a>
                                            </li>
                                            <li data-target="#instagram-widget" data-slide-to="2"><a href="#">Image
                                                3</a>
                                            </li>
                                        </ol>
                                        <div class="carousel-inner">
                                            <figure class="item active">
                                                <img class="img-responsive" src="/assets/img/instagram/instagram.jpg"
                                                     alt="image">
                                            </figure>
                                            <figure class="item">
                                                <img class="img-responsive" src="/assets/img/instagram/instagram2.jpg"
                                                     alt="image">
                                            </figure>
                                            <figure class="item">
                                                <img class="img-responsive" src="/assets/img/instagram/instagram3.jpg"
                                                     alt="image">
                                            </figure>
                                        </div>
                                    </div>
                                    <!-- End Carousel -->
                                </div>
                                <div class="instagram-widget-footer">
                                    <div class="col-lg-6 col-md-6 col-xs-6 text-center">
                                        <!-- col-lg-6 start here -->
                                        <p>
                                            <a href="#">
                                                <i class="ec-chat mr5"></i>
                                                <strong class="instagram-widget-number">17</strong>
                                            </a>
                                        </p>
                                    </div>
                                    <!-- col-lg-6 end here -->
                                    <div class="col-lg-6 col-md-6 col-xs-6 text-center">
                                        <!-- col-lg-6 start here -->
                                        <p>
                                            <a href="#">
                                                <i class="ec-heart mr5"></i>
                                                <strong class="instagram-widget-number">27</strong>
                                            </a>
                                        </p>
                                    </div>
                                    <!-- col-lg-6 end here -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End .panel -->
                    <div class="panel panel-default panelMove plain">
                        <!-- Start .panel -->
                        <div class="panel-heading white-bg"></div>
                        <div class="panel-body p0">
                            <div id="calendar"></div>
                        </div>
                    </div>
                    <!-- End .panel -->
                </div>
                <!-- End col-lg-6 -->
                <div class="col-lg-6 col-md-6 sortable-layout">
                    <!-- Start col-lg-6 -->
                    <div class="panel panel-primary plain toggle panelMove panelClose panelRefresh">
                        <!-- Start .panel -->
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="im-bars"></i> Week Earnings</h4>
                        </div>
                        <div class="panel-body blue-bg">
                            <div id="stats-earnings" style="width: 100%; height:250px;"></div>
                        </div>
                        <div class="panel-footer white-bg">
                            <div id="stats-category-earnings" class="col-lg-6 col-md-12" style="height:150px;">
                            </div>
                            <div id="stats-earnings-bars" class="col-lg-6 col-md-12" style="height:150px;">
                            </div>
                        </div>
                    </div>
                    <!-- End .panel -->
                    <div class="weather-widget panel panel-primary plain toggle panelMove panelClose panelRefresh">
                        <!-- Start .panel -->
                        <div class="panel-heading">
                            <h4 class="panel-title">Weather now</h4>
                        </div>
                        <div class="panel-body blue-bg text-center">
                            <canvas id="weather-now" width="128" height="128"></canvas>
                            <p class="weather-location"><strong>23&deg;C</strong> Madrid</p>
                        </div>
                        <div class="panel-footer white-bg text-center">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                <!-- col-lg-3 start here -->
                                <p class="weather-day">MON</p>
                                <canvas id="forecast-now" width="64" height="64"></canvas>
                                <p class="weather-degree">23&deg;C</p>
                            </div>
                            <!-- col-lg-3 end here -->
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                <!-- col-lg-3 start here -->
                                <p class="weather-day">TUE</p>
                                <canvas id="forecast-day1" width="64" height="64"></canvas>
                                <p class="weather-degree">17&deg;C</p>
                            </div>
                            <!-- col-lg-3 end here -->
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                <!-- col-lg-3 start here -->
                                <p class="weather-day">WED</p>
                                <canvas id="forecast-day2" width="64" height="64"></canvas>
                                <p class="weather-degree">15&deg;C</p>
                            </div>
                            <!-- col-lg-3 end here -->
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                <!-- col-lg-3 start here -->
                                <p class="weather-day">THU</p>
                                <canvas id="forecast-day3" width="64" height="64"></canvas>
                                <p class="weather-degree">18&deg;C</p>
                            </div>
                            <!-- col-lg-3 end here -->
                        </div>
                    </div>
                    <!-- End .panel -->
                    <div class="panel panel-default toggle panelMove panelClose panelRefresh">
                        <!-- Start .panel -->
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="fa-list"></i> ToDo</h4>
                        </div>
                        <div class="panel-body">
                            <div class="todo-widget">
                                <div class="todo-header">
                                    <div class="todo-search">
                                        <form>
                                            <input type="text" class="form-control" name="search"
                                                   placeholder="Search for todo ...">
                                        </form>
                                    </div>
                                    <div class="todo-add">
                                        <a href="#" class="btn btn-primary tip" title="Add new todo"><i
                                                class="im-plus"></i></a>
                                    </div>
                                </div>
                                <h4 class="todo-period">Today</h4>
                                <ul class="todo-list" id="today">
                                    <li class="todo-task-item">
                                        <label class="checkbox">
                                            <input type="checkbox">
                                        </label>
                                        <div class="todo-priority normal tip" title="Normal priority">
                                            <i class="im-radio-checked"></i>
                                        </div>
                                        <span class="todo-category label label-primary"> javascript </span>
                                        <div class="todo-task-text">Add scroll function to template</div>
                                        <button type="button" class="close todo-close">&times;</button>
                                    </li>
                                    <li class="todo-task-item">
                                        <label class="checkbox">
                                            <input type="checkbox">
                                        </label>
                                        <div class="todo-priority high tip" title="High priority">
                                            <i class="im-radio-checked"></i>
                                        </div>
                                        <span class="todo-category label label-brown"> less </span>
                                        <div class="todo-task-text">Fix main less file</div>
                                        <button type="button" class="close todo-close">&times;</button>
                                    </li>
                                    <li class="todo-task-item task-done">
                                        <label class="checkbox">
                                            <input type="checkbox" checked>
                                        </label>
                                        <div class="todo-priority high tip" title="High priority">
                                            <i class="im-radio-checked"></i>
                                        </div>
                                        <span class="todo-category label label-info"> html </span>
                                        <div class="todo-task-text">Change navigation structure</div>
                                        <button type="button" class="close todo-close">&times;</button>
                                    </li>
                                </ul>
                                <h4 class="todo-period">Tomorrow</h4>
                                <ul class="todo-list" id="tomorrow">
                                    <li class="todo-task-item">
                                        <label class="checkbox">
                                            <input type="checkbox">
                                        </label>
                                        <div class="todo-priority tip" title="Low priority">
                                            <i class="im-radio-checked"></i>
                                        </div>
                                        <span class="todo-category label label-dark"> css </span>
                                        <div class="todo-task-text">Create slide panel widget</div>
                                        <button type="button" class="close todo-close">&times;</button>
                                    </li>
                                    <li class="todo-task-item">
                                        <label class="checkbox">
                                            <input type="checkbox">
                                        </label>
                                        <div class="todo-priority medium tip" title="Medium priority">
                                            <i class="im-radio-checked"></i>
                                        </div>
                                        <span class="todo-category label label-danger"> php </span>
                                        <div class="todo-task-text">Edit the main controller</div>
                                        <button type="button" class="close todo-close">&times;</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End .panel -->
                </div>
                <!-- End col-lg-6 -->
            </div>
            <!-- End .row -->
            <!-- Page End here -->
        </div>
        <!-- End .outlet -->
    </div>
    <!-- End .content-wrapper -->
    <div class="clearfix"></div>
</div>
<!-- End #content -->

<%@ include file="common-javascripts.jsp"%>

<!-- Other plugins ( load only nessesary plugins for every page) -->
<script src="/assets/plugins/charts/flot/jquery.flot.js"></script>
<script src="/assets/plugins/charts/flot/jquery.flot.pie.js"></script>
<script src="/assets/plugins/charts/flot/jquery.flot.resize.js"></script>
<script src="/assets/plugins/charts/flot/jquery.flot.time.js"></script>
<script src="/assets/plugins/charts/flot/jquery.flot.growraf.js"></script>
<script src="/assets/plugins/charts/flot/jquery.flot.categories.js"></script>
<script src="/assets/plugins/charts/flot/jquery.flot.stack.js"></script>
<script src="/assets/plugins/charts/flot/jquery.flot.tooltip.min.js"></script>
<script src="/assets/plugins/charts/flot/date.js"></script>
<script src="/assets/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="/assets/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/assets/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="/assets/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="/assets/plugins/forms/tinymce/tinymce.min.js"></script>
<script src="/assets/plugins/misc/highlight/highlight.pack.js"></script>
<script src="/assets/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="/assets/plugins/ui/weather/skyicons.js"></script>
<script src="/assets/plugins/ui/notify/jquery.gritter.js"></script>
<script src="/assets/plugins/ui/calendar/fullcalendar.js"></script>
<script src="/assets/js/jquery.sprFlat.js"></script>
<script src="/assets/js/app.js"></script>
<script src="/assets/js/pages/dashboard.js"></script>
<!-- Other plugins end -->
</body>
</html>