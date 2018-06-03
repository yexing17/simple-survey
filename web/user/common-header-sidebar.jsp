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
                    <input type="text" name="search" placeholder="Search ...">
                    <button type="submit"><i class="ec-search s20"></i>
                    </button>
                </form>
            </li>
            <li>
                <a href="index-new.jsp">用户面板<i class="im-screen"></i></a>
            </li>
            <li>
                <a href="add.jsp">创建问卷<i class="im-plus"></i></a>
            </li>
            <li>
                <a href="list.jsp">所有问卷<i class="im-paragraph-justify"></i></a>
            </li>
            <li>
                <a href="#"> Forms <i class="im-paragraph-justify"></i></a>
                <ul class="nav sub">
                    <li>
                        <a href="forms.html"><i class="ec-pencil2"></i> Form Stuff</a>
                    </li>
                    <li>
                        <a href="form-validation.html"><i class="im-checkbox-checked"></i> Form Validation</a>
                    </li>
                    <li>
                        <a href="form-wizard.html"><i class="im-wand"></i> Form Wizard</a>
                    </li>
                    <li>
                        <a href="wysiwyg.html"><i class="fa-pencil"></i> WYSIWYG editor</a>
                    </li>
                </ul>
            </li>
            <li><a href="#"> Tables <i class="im-table2"></i></a>
                <ul class="nav sub">
                    <li><a href="tables.html"><i class="en-arrow-right7"></i> Static tables</a>
                    </li>
                    <li><a href="data-tables.html"><i class="en-arrow-right7"></i> Data tables</a>
                    </li>
                </ul>
            </li>
            <li><a href="#"> UI Elements <i class="st-lab"></i></a>
                <ul class="nav sub">
                    <li><a href="notifications.html"><i class="fa-bell"></i> Notifications</a>
                    </li>
                    <li><a href="panels.html"><i class="br-window"></i> Panels</a>
                    </li>
                    <li><a href="tiles.html"><i class="im-windows8"></i> Tiles</a>
                    </li>
                    <li><a href="elements.html"><i class="st-cube"></i> Elements</a>
                    </li>
                    <li><a href="icons.html"><i class="im-stack"></i> Icons</a>
                    </li>
                    <li><a href="buttons.html"><i class="im-play2"></i> Buttons</a>
                    </li>
                    <li><a href="calendar.html"><i class="im-calendar2"></i> Calendar</a>
                    </li>
                    <li><a href="grid.html"><i class="st-grid"></i> Grid</a>
                    </li>
                    <li><a href="typo.html"><i class="im-font"></i> Typography</a>
                    </li>
                    <li><a href="list.html"><i class="fa-list"></i> Lists</a>
                    </li>
                </ul>
            </li>
            <li><a href="#"><i class="ec-mail"></i> Email app</a>
                <ul class="nav sub">
                    <li><a href="email-inbox.html"><i class="ec-archive"></i> Inbox</a>
                    </li>
                    <li><a href="email-read.html"><i class="br-eye"></i> Read email</a>
                    </li>
                    <li><a href="email-write.html"><i class="ec-pencil2"></i> Write email</a>
                    </li>
                </ul>
            </li>
            <li><a href="file.html"><i class="en-upload"></i> File Manager</a>
            </li>
            <li><a href="gallery.html"><i class="im-images"></i> Gallery</a>
            </li>
            <li><a href="widgets.html"><i class="st-diamond"></i> Widgets </a>
            </li>
            <li><a href="#"><i class="ec-location"></i> Maps</a>
                <ul class="nav sub">
                    <li><a href="maps-google.html"><i class="im-map2"></i> Google maps</a>
                    </li>
                    <li><a href="maps-vector.html"><i class="en-location2"></i> Vector maps</a>
                    </li>
                </ul>
            </li>
            <li><a href="#">Pages <i class="st-files"></i></a>
                <ul class="nav sub">
                    <li><a href="invoice.html"><i class="st-file"></i> Invoice</a>
                    </li>
                    <li><a href="profile.html"><i class="ec-user"></i> Profile page</a>
                    </li>
                    <li><a href="search.html"><i class="ec-search"></i> Search page</a>
                    </li>
                    <li><a href="blank.html"><i class="im-file4"></i> Blank page</a>
                    </li>
                    <li><a href="login.jsp"><i class="ec-locked"></i> Login page</a>
                    </li>
                    <li><a href="lockscreen.html"><i class="ec-locked"></i> Lock screen</a>
                    </li>
                    <li>
                        <a href="#"><i class="st-files"></i> Error pages</a>
                        <ul class="nav sub">
                            <li><a href="400.html"><i class="st-file-broken"></i> Error 400</a>
                            </li>
                            <li><a href="401.html"><i class="st-file-broken"></i> Error 401</a>
                            </li>
                            <li><a href="403.html"><i class="st-file-broken"></i> Error 403</a>
                            </li>
                            <li><a href="404.html"><i class="st-file-broken"></i> Error 404</a>
                            </li>
                            <li><a href="405.html"><i class="st-file-broken"></i> Error 405</a>
                            </li>
                            <li><a href="500.html"><i class="st-file-broken"></i> Error 500</a>
                            </li>
                            <li><a href="503.html"><i class="st-file-broken"></i> Error 503</a>
                            </li>
                            <li><a href="offline.html"><i class="st-window"></i> Offline</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <a href="langding.html">导航页<i class="im-airplane"></i></a>
            </li>
        </ul>
        <!-- End #sideNav -->
        <!-- Start .sidebar-panel -->
    </div>
    <!-- End .sidebar-inner -->
</div>
<!-- End #sidebar -->
<!-- Start #right-sidebar -->
<div id="right-sidebar" class="hide-sidebar">
    <!-- Start .sidebar-inner -->
    <div class="sidebar-inner">
        <div class="sidebar-panel mt0">
            <div class="sidebar-panel-content fullwidth pt0">
                <div class="chat-user-list">
                    <form class="form-horizontal chat-search" role="form">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search for user...">
                            <button type="submit"><i class="ec-search s16"></i>
                            </button>
                        </div>
                        <!-- End .form-group  -->
                    </form>
                    <ul class="chat-ui bsAccordion">
                        <li>
                            <a href="#">Favorites <span class="notification teal">4</span><i class="en-arrow-down5"></i></a>
                            <ul class="in">
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/49.jpg" alt="@chadengle">Chad
                                        Engle
                                        <span class="has-message"><i class="im-pencil"></i></span>
                                    </a>
                                    <span class="status online"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/54.jpg" alt="@alagoon">Anthony
                                        Lagoon</a>
                                    <span class="status offline"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/52.jpg" alt="@koridhandy">Kory
                                        Handy</a>
                                    <span class="status"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/50.jpg" alt="@divya">Divia
                                        Manyan</a>
                                    <span class="status"><i class="en-dot"></i></span>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Online <span class="notification green">3</span><i
                                    class="en-arrow-down5"></i></a>
                            <ul class="in">
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/51.jpg" alt="@kolage">Eric
                                        Hofman</a>
                                    <span class="status online"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/55.jpg" alt="@mikebeecham">Mike
                                        Beecham</a>
                                    <span class="status online"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/53.jpg" alt="@derekebradley">Darek
                                        Bradly</a>
                                    <span class="status online"><i class="en-dot"></i></span>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Offline <span class="notification red">5</span><i
                                    class="en-arrow-down5"></i></a>
                            <ul>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/56.jpg" alt="@laurengray">Lauren
                                        Grey</a>
                                    <span class="status offline"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/49.jpg" alt="@chadengle">Chad
                                        Engle</a>
                                    <span class="status offline"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/58.jpg"
                                             alt="@frankiefreesbie">Frankie Freesibie</a>
                                    <span class="status offline"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/57.jpg" alt="@joannefournier">Joane
                                        Fornier</a>
                                    <span class="status offline"><i class="en-dot"></i></span>
                                </li>
                                <li>
                                    <a href="#" class="chat-name">
                                        <img class="chat-avatar" src="/assets/img/avatars/59.jpg" alt="@aiiaiiaii">Alia
                                        Alien</a>
                                    <span class="status offline"><i class="en-dot"></i></span>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="chat-box">
                    <h5>Chad Engle</h5>
                    <a id="close-user-chat" href="#" class="btn btn-xs btn-primary"><i class="en-arrow-left4"></i></a>
                    <ul class="chat-ui chat-messages">
                        <li class="chat-user">
                            <p class="avatar">
                                <img src="/assets/img/avatars/49.jpg" alt="@chadengle">
                            </p>
                            <p class="chat-name">Chad Engle <span class="chat-time">15 seconds ago</span>
                            </p>
                            <span class="status online"><i class="en-dot"></i></span>
                            <p class="chat-txt">Hello Sugge check out the last order.</p>
                        </li>
                        <li class="chat-me">
                            <p class="avatar">
                                <img src="/assets/img/avatars/48.jpg" alt="SuggeElson">
                            </p>
                            <p class="chat-name">SuggeElson <span class="chat-time">10 seconds ago</span>
                            </p>
                            <span class="status online"><i class="en-dot"></i></span>
                            <p class="chat-txt">Ok i will check it out.</p>
                        </li>
                        <li class="chat-user">
                            <p class="avatar">
                                <img src="/assets/img/avatars/49.jpg" alt="@chadengle">
                            </p>
                            <p class="chat-name">Chad Engle <span class="chat-time">now</span>
                            </p>
                            <span class="status online"><i class="en-dot"></i></span>
                            <p class="chat-txt">Thank you, have a nice day</p>
                        </li>
                    </ul>
                    <div class="chat-write">
                        <form action="#" class="form-horizontal" role="form">
                            <div class="form-group">
                                <textarea name="sendmsg" id="sendMsg" class="form-control elastic" rows="1"></textarea>
                                <a role="button" class="btn" id="attach_photo_btn">
                                    <i class="fa-picture s20"></i>
                                </a>
                                <input type="file" name="attach_photo" id="attach_photo">
                            </div>
                            <!-- End .form-group  -->
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End .sidebar-inner -->
</div>
<!-- End #right-sidebar -->