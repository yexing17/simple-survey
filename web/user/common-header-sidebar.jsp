<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Start #header -->
<div id="header">
    <div class="container-fluid">
        <div class="navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">
                    <i class="im-windows8 text-logo-element animated bounceIn"></i>
                    <span class="text-logo">简单</span><span class="text-slogan">问卷</span>
                </a>
            </div>
            <nav class="top-nav" role="navigation">
                <ul class="nav navbar-nav pull-left">
                    <li id="toggle-sidebar-li">
                        <a href="#" id="toggle-sidebar"><i class="en-arrow-left2"></i></a>
                    </li>
                    <li>
                        <a href="#" class="full-screen"><i class="fa-fullscreen"></i></a>
                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">
                            <img class="user-avatar" src="/assets/img/avatars/avatar-deafault.jpg" alt="SuggeElson">${sessionScope.email}</a>
                        <ul class="dropdown-menu right" role="menu">
                            <li><a href="profile.html"><i class="st-user"></i>个人信息</a>
                            </li>
                            <li><a href="#"><i class="st-settings"></i>设置</a>
                            </li>
                            <li><a href="/user.action?action=logout"><i class="im-exit"></i>登出</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <!-- 虽然并不知道下面的东西有什么用,但是删掉之后 header 部分央视会乱掉 -->
        <!-- Start #header-area -->
        <div id="header-area" class="fadeInDown">
            <div class="header-area-inner">
                <ul class="list-unstyled list-inline">

                </ul>
            </div>
        </div>
        <!-- End #header-area -->
    </div>
    <!-- Start .header-inner -->
</div>
<!-- End #header -->
<!-- Start #sidebar -->
<div id="sidebar">
    <!-- Start .sidebar-inner -->
    <div class="sidebar-inner">
        <!-- Start #sideNav -->
        <ul id="sideNav" class="nav nav-pills nav-stacked">
            <li class="top-search">
                <form>
                    <input type="text" name="search" placeholder="搜点什么 ...">
                    <button type="submit"><i class="ec-search s20"></i>
                    </button>
                </form>
            </li>
            <li>
                <a href="index.jsp">用户面板<i class="im-screen"></i></a>
            </li>
            <li>
                <a href="add.jsp">创建问卷<i class="im-plus"></i></a>
            </li>
            <li>
                <a href="list.jsp">所有问卷<i class="im-paragraph-justify"></i></a>
            </li>
        </ul>
        <!-- End #sideNav -->
        <!-- Start .sidebar-panel -->
    </div>
    <!-- End .sidebar-inner -->
</div>
<!-- End #sidebar -->
