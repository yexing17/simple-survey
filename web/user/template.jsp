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
    <!------------------------------------------- fix the blow title ---------------------------------------->
    <title>fix_title_name</title>

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
                <!------------------------------------------- fix the breadcrub here ---------------------------------------->
                <h1 class="page-header"><i class="im-screen"></i>fix_breadcrub_name</h1>
                <!-- Start .breadcrumb -->
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

                <!------------------------------------------- flowing is optional ---------------------------------------->
                <!-- Start .option-buttons -->
                <div class="option-buttons">
                        <div class="btn-toolbar" role="toolbar">
                            <div class="btn-group">
                                <!------------------------------------------- change the link to curent page's ---------------------------------------->
                                <a href="fix_curent_page_link" id="clear-localstorage" class="btn tip" title="刷新数据">
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

            <!------------------------------------------- add your weights here ---------------------------------------->

        </div>
        <!-- End .outlet -->
    </div>
    <!-- End .content-wrapper -->
    <div class="clearfix"></div>
</div>
<!-- End #content -->

<%@ include file="common-javascripts.jsp"%>

<!-- Other plugins ( load only nessesary plugins for every page) -->

<!------------------------------------------- add the special JSs here ---------------------------------------->

<!-- Other plugins end -->
</body>
</html>