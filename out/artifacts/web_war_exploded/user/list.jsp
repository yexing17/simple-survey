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
<head>
    <meta charset="utf-8">
    <title>简单问卷-所有问卷</title>

    <%@include file="common-head-contents.jsp" %>

</head>
<body>

<!-- start:request newest qns data -->
<c:if test="${empty qns}">
    <c:redirect url="/questionnaire.action?action=list"/>
</c:if>
<!-- end -->

<%@include file="common-header-sidebar.jsp" %>


<!-- Start #content -->
<div id="content">
    <!-- Start .content-wrapper -->
    <div class="content-wrapper">
        <div class="row">
            <!-- Start .row -->
            <!-- Start .page-header -->
            <div class="col-lg-12 heading">
                <h1 class="page-header"><i class="im-paragraph-justify"></i>所有问卷</h1>
                <!-- Start .bredcrumb -->
                <ul id="crumb" class="breadcrumb">
                </ul>
                <!-- End .breadcrumb -->
                <!-- Start .option-buttons -->
                <div class="option-buttons">
                    <div class="btn-toolbar" role="toolbar">
                        <div class="btn-group">
                            <a href="/user/list.jsp" id="clear-localstorage" class="btn tip" title="刷新数据">
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
                <div class="col-lg-12">
                    <!-- col-lg-12 start here -->
                    <div class="panel panel-default plain toggle panelClose panelRefresh">
                        <!-- Start .panel -->
                        <div class="panel-heading white-bg">
                            <h4 class="panel-title">您创建的所有问卷</h4>
                        </div>
                        <div class="panel-body">
                            <table class="table display" id="datatable">
                                <thead>
                                <tr>
                                    <th>问卷编号</th>
                                    <th>问卷名称</th>
                                    <th>创建时间</th>
                                    <th>发布时间</th>
                                    <th>关闭时间</th>
                                    <th>问卷管理</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="qn" items="${qns}">
                                    <tr class="odd gradeX">
                                        <td>${qn.qn_id}</td>
                                        <td>${qn.title}</td>
                                        <td>${qn.create_time}</td>
                                        <td>
                                            <c:if test="${empty qn.release_time}">
                                                /
                                            </c:if>
                                            <c:if test="${not empty qn.release_time}">
                                                ${qn.release_time}
                                            </c:if>
                                        </td>
                                        <td>
                                            <c:if test="${empty qn.close_time}">
                                                /
                                            </c:if>
                                            <c:if test="${not empty qn.close_time}">
                                                ${qn.close_time}
                                            </c:if>
                                        </td>
                                        <td>
                                            <a href="/survey.jsp?id=${qn.qn_id}" target="_blank">
                                                问卷链接
                                            </a>
                                            <c:if test="${empty qn.release_time}">
                                                <a href="/questionnaire.action?action=release&id=${qn.qn_id}">
                                                    问卷发布
                                                </a>
                                            </c:if>
                                            <c:if test="${not empty qn.release_time}">
                                                问卷已发布
                                            </c:if>
                                            <c:if test="${empty qn.close_time}">
                                                <a href="/questionnaire.action?action=close&id=${qn.qn_id}">
                                                    问卷关闭
                                                </a>
                                            </c:if>
                                            <c:if test="${not empty qn.close_time}">
                                                问卷已关闭
                                            </c:if>

                                            <a href="/analysis.jsp?id=${qn.qn_id}">
                                                问卷统计
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>问卷编号</th>
                                    <th>问卷名称</th>
                                    <th>创建时间</th>
                                    <th>发布时间</th>
                                    <th>关闭时间</th>
                                    <th>问卷管理</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    <!-- End .panel -->
                </div>
                <!-- col-lg-12 end here -->
                <!-- end .row here -->
            </div>
            <!-- Page End here -->
        </div>
        <!-- End .outlet -->
    </div>
    <!-- End .content-wrapper -->
    <div class="clearfix"></div>
</div>
<!-- End #content -->

<!-- remove the qns data,ensure refresh can get newest data -->
<c:remove var="qns"/>

<%@ include file="common-javascripts.jsp" %>

<!-- Other plugins ( load only nessesary plugins for every page) -->
<script src="/assets/plugins/core/moment/moment.min.js"></script>
<script src="/assets/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="/assets/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/assets/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="/assets/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="/assets/plugins/forms/tinymce/tinymce.min.js"></script>
<script src="/assets/plugins/tables/datatables/jquery.dataTables.min.js"></script>
<script src="/assets/plugins/tables/datatables/jquery.dataTablesBS3.js"></script>
<script src="/assets/plugins/tables/datatables/tabletools/ZeroClipboard.js"></script>
<script src="/assets/plugins/tables/datatables/tabletools/TableTools.js"></script>
<script src="/assets/plugins/misc/highlight/highlight.pack.js"></script>
<script src="/assets/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="/assets/js/jquery.sprFlat.js"></script>
<script src="/assets/js/app.js"></script>
<script src="/assets/js/pages/data-tables.js"></script>
<!-- Other plugins end -->
</body>
</html>