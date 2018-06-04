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
    <title>简单问卷-创建问卷</title>

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
                <h1 class="page-header"><i class="im-plus"></i>创建问卷</h1>
                <!-- Start .bredcrumb -->
                <ul id="crumb" class="breadcrumb">
                </ul>
                <!-- End .breadcrumb -->
            </div>
            <!-- End .page-header -->
        </div>
        <!-- End .row -->
        <!-- Start .outlet -->
        <div class="outlet">
            <!-- Page start here ( usual with .row ) -->
            <div class="row">
                <!-- Start .row -->
                <div class="col-lg-12">
                    <!-- Start col-lg-12 -->
                    <div class="panel panel-default toggle">
                        <!-- Start .panel -->
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                添加题目:(当前问题和选择题的选项添加之后无法删除,请谨慎,该问题将在后续更新解决)
                                <button class="btn btn-primary" onclick="appendSelect()">
                                    <i class="en-plus">选择题</i>
                                </button>
                                <button class="btn btn-primary" onclick="appendBlank()">
                                    <i class="en-plus">填空题</i>
                                </button>
                            </h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal group-border hover-stripped" role="form" id="validate" action="/questionnaire.action?action=add" method="post">
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">操作</label>
                                    <div class="col-lg-10">

                                        <input type="submit" class="btn btn-primary" value="确认创建问卷">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">问卷标题</label>
                                    <div class="col-lg-4">
                                        <input type="text" class="form-control required" name="title">
                                    </div>
                                    <label class="col-lg-2 control-label">问卷描述</label>
                                    <div class="col-lg-4">
                                        <input type="text" class="form-control required" name="description">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- End .panel -->
                </div>
                <!-- End col-lg-12 -->
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
<script src="/assets/plugins/core/moment/moment.min.js"></script>
<script src="/assets/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="/assets/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/assets/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="/assets/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="/assets/plugins/forms/tinymce/tinymce.min.js"></script>
<script src="/assets/plugins/forms/switch/jquery.onoff.min.js"></script>
<script src="/assets/plugins/forms/maxlength/bootstrap-maxlength.js"></script>
<script src="/assets/plugins/forms/bootstrap-filestyle/bootstrap-filestyle.js"></script>
<script src="/assets/plugins/forms/color-picker/spectrum.js"></script>
<script src="/assets/plugins/forms/daterangepicker/daterangepicker.js"></script>
<script src="/assets/plugins/forms/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="/assets/plugins/forms/globalize/globalize.js"></script>
<script src="/assets/plugins/forms/maskedinput/jquery.maskedinput.js"></script>
<script src="/assets/plugins/forms/select2/select2.js"></script>
<script src="/assets/plugins/forms/dual-list-box/jquery.bootstrap-duallistbox.js"></script>
<script src="/assets/plugins/forms/password/jquery-passy.js"></script>
<script src="/assets/plugins/forms/checkall/jquery.checkAll.js"></script>
<script src="/assets/plugins/forms/validation/jquery.validate.js"></script>
<script src="/assets/plugins/forms/validation/additional-methods.min.js"></script>
<script src="/assets/plugins/misc/highlight/highlight.pack.js"></script>
<script src="/assets/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="/assets/js/jquery.sprFlat.js"></script>
<script src="/assets/js/app.js"></script>
<script src="/assets/js/pages/form-validation.js"></script>

<!-- addition js start -->
<script>
    var count = 0;
    var option_counts = [];

    function appendSelect() {
        count++;
        var slc = "<div class=\"form-group\" id='q" + count + "'>\n" +
            "    <label class=\"col-lg-2 control-label\">问题" + count + "</label>\n" +
            "    <div class=\"col-lg-9\">\n" +
            "        <input type=\"text\" class=\"form-control required\" name=\"question" + count + "\">\n" +
            "    </div>\n" +
            "    <button type=\"button\" class=\"btn btn-primary\" onclick=\"appendOption(" + count + ")\">\n" +
            "       <i class=\"en-plus\">选项</i>\n" +
            "    </button>" +
            "    <label class=\"col-lg-2 control-label\">选项1</label>\n" +
            "    <div class=\"col-lg-4\">\n" +
            "        <input type=\"text\" class=\"form-control required\" name='q" + count + "m1'>\n" +
            "    </div>\n" +
            "    <label class=\"col-lg-2 control-label\">选项2</label>\n" +
            "    <div class=\"col-lg-4\">\n" +
            "        <input type=\"text\" class=\"form-control required\" name='q" + count + "m2'>\n" +
            "    </div>\n" +
            "</div>";
        option_counts[count - 1] = 2;
        $("#validate").append(slc);
    }

    function appendBlank() {
        count++;
        var blk = "<div class=\"form-group\">\n" +
            "    <label class=\"col-lg-2 control-label\">问题" + count + "</label>\n" +
            "    <div class=\"col-lg-10\">\n" +
            "        <input type=\"text\" class=\"form-control required\" name=\"question" + count + "\">\n" +
            "    </div>\n" +
            "</div>";
        $("#validate").append(blk);
        option_counts[count - 1] = 0;
    }

    function appendOption(q_count) {
        var option_count = option_counts[q_count - 1] + 1;
        option_counts[q_count - 1] = option_count;

        var option_content = "<label class=\"col-lg-2 control-label\">选项" + option_count + "</label>\n" +
            "                 <div class=\"col-lg-4\">\n" +
            "                     <input type=\"text\" class=\"form-control required\" name='q" + (q_count - 1) + "m" + option_count + "'>\n" +
            "                 </div>\n";
        var id_name = "#q" + q_count;
        $(id_name).append(option_content);
    }
</script>
</body>
</html>
