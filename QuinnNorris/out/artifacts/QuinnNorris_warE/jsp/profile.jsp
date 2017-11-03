<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/24
  Time: 下午10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">
    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">
    <title>MoreTime——个人中心</title>
    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/form.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/calendar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/generics.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/qncss.css" rel="stylesheet">


    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/scroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/calendar.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/feeds.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/functions.js"></script>
    <script src="${pageContext.request.contextPath}/js/sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/icheck.js"></script>
    <script src="${pageContext.request.contextPath}/js/fileupload.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/charts.js"></script>
    <script src="${pageContext.request.contextPath}/js/easypiechart.js"></script>

    <script src="${pageContext.request.contextPath}/js/changeproing.js"></script>
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.js"></script> <!-- Flot Main -->
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.time.js"></script> <!-- Flot sub -->
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.animator.min.js"></script> <!-- Flot sub -->
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.resize.min.js"></script>
    <!-- Flot sub - for repaint when resizing the screen -->
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.orderBar.js"></script>

    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.pie.min.js"></script>


</head>
<body id="skin-blur-violate">
<header id="header" class="media">
    <a href="" id="menu-toggle"></a>
    <a class="logo pull-left" href="index.html">More Time 1.0</a>
    <div class="media-body">
        <div class="media" id="top-menu">
            <div class="pull-left tm-icon">
                <a data-drawer="messages" class="drawer-toggle" href="">
                    <i class="sa-top-message"></i>
                    <i class="n-count animated">5</i>
                    <span>Messages</span>
                </a>
            </div>
            <div id="time" class="pull-right">
                <span id="hours"></span>
                :
                <span id="min"></span>
                :
                <span id="sec"></span>
            </div>

            <div class="media-body">
                <input type="text" class="main-search">
            </div>
        </div>
    </div>
</header>

<div class="clearfix"></div>
<section <%--id="main" class="p-relative" role="main"--%>>
    <!-- Sidebar -->
    <aside id="sidebar">
        <!-- Sidbar Widgets -->
        <div class="side-widgets overflow">
            <!-- Profile Menu -->
            <div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
                <a href="" data-toggle="dropdown">
                    <img class="profile-pic animated"
                         src="${pageContext.request.contextPath}<%= session.getAttribute("headp")%>"/>
                </a>
                <ul class="dropdown-menu profile-menu">
                    <li><a href="/profile">个人中心</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i>
                    </li>
                    <li><a href="javascript:void(0);" onclick="showchangeImage()">更换头像</a> <i
                            class="icon left">&#61903;</i><i
                            class="icon right">&#61815;</i></li>
                    <li><a href="/signout">切换用户</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i>
                    </li>
                    <li><a href="/postemail">意见反馈</a> <i class="icon left">&#61903;</i><i
                            class="icon right">&#61815;</i>
                    </li>
                </ul>
                <h4 class="m-0"><%= session.getAttribute("username")%>
                </h4>
            </div>
            <!-- Calendar -->
            <div class="s-widget m-b-25">
                <div id="sidebar-calendar"></div>
            </div>
            <!-- Projects -->
            <div class="s-widget m-b-25">
                <h2 class="tile-title">
                    项目进度
                </h2>
                <div class="s-widget-body">
                    <div class="side-border">
                        <small>A项目</small>
                        <div class="progress progress-small">
                            <a href="#" data-toggle="tooltip" title="" class="progress-bar tooltips progress-bar-danger"
                               style="width: 60%;" data-original-title="60%">
                                <span class="sr-only">60% Complete</span>
                            </a>
                        </div>
                    </div>
                    <div class="side-border">
                        <small>B项目</small>
                        <div class="progress progress-small">
                            <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-info"
                               style="width: 43%;" data-original-title="43%">
                                <span class="sr-only">43% Complete</span>
                            </a>
                        </div>
                    </div>
                    <div class="side-border">
                        <small>C项目</small>
                        <div class="progress progress-small">
                            <a href="#" data-toggle="tooltip" title=""
                               class="tooltips progress-bar progress-bar-warning" style="width: 81%;"
                               data-original-title="81%">
                                <span class="sr-only">81% Complete</span>
                            </a>
                        </div>
                    </div>
                    <div class="side-border">
                        <small>D项目</small>
                        <div class="progress progress-small">
                            <a href="#" data-toggle="tooltip" title=""
                               class="tooltips progress-bar progress-bar-success" style="width: 10%;"
                               data-original-title="10%">
                                <span class="sr-only">10% Complete</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Side Menu -->
        <ul class="list-unstyled side-menu">
            <li>
                <a href="/welcome"><span class="icon qnicon">&#61713;</span>
                    <span class="menu-item">首页</span>
                </a>
            </li>
            <li>
                <a class="sa-side-calendar" href="/calendar">
                    <span class="menu-item">今日计划</span>
                </a>
            </li>
            <li>
                <a href="/notepad"><span class="icon qnicon">&#61840;</span>
                    <span class="menu-item">记事笔记</span>
                </a>
            </li>
            <li>
                <a href="/project"><span class="icon qnicon">&#61804;</span>
                    <span class="menu-item">项目中心</span>
                </a>
            </li>
            <li class="dropdown">
                <a href=""><span class="icon qnicon">&#61890;</span>
                    <span class="menu-item">项目管理</span>
                </a>
                <ul class="list-unstyled menu-item">
                    <li><a href="/newpro" id="qnjpro1">新建项目</a></li>
                    <li><a href="/newpro" id="qnjpro2">新建项目</a></li>
                    <li><a href="/newpro" id="qnjpro3">新建项目</a></li>
                    <li><a href="/newpro" id="qnjpro4">新建项目</a></li>
                </ul>
            </li>

            <li>
                <a href="/postemail"><span class="icon qnicon">&#61880;</span>
                    <span class="menu-item">意见反馈</span>
                </a>
            </li>
            <li class="active">
                <a href="/profile"><span class="icon qnicon">&#61883;</span>
                    <span class="menu-item">个人中心</span>
                </a>
            </li>
        </ul>

    </aside>

    <!-- Content -->
    <section id="content" class="container">

        <!-- Messages Drawer -->
        <div id="messages" class="tile drawer animated">
            <div class="listview narrow">
                <div class="media">
                    <a href="">消息列表</a>
                    <span class="drawer-close">&times;</span>

                </div>
                <div class="overflow" style="height: 254px">
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/1.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Nadin Jackson - 2 Hours ago</small>
                            <br>
                            <a class="t-overflow" href="">Mauris consectetur urna nec tempor adipiscing. Proin sit amet
                                nisi ligula. Sed eu adipiscing lectus</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/2.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">David Villa - 5 Hours ago</small>
                            <br>
                            <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod
                                nunc quis gravida. Suspendisse pharetra</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/3.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Harris worgon - On 15/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla
                                eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar,
                                ornare turpis id</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/4.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Mitch Bradberry - On 14/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique
                                vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel
                                blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/1.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Nadin Jackson - On 15/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit
                                amet nisi ligula. Sed eu adipiscing lectus</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/2.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">David Villa - On 16/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod
                                nunc quis gravida. Suspendisse pharetra</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/3.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Harris worgon - On 17/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla
                                eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar,
                                ornare turpis id</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/4.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Mitch Bradberry - On 18/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique
                                vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel
                                blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/5.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Wendy Mitchell - On 19/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Integer a eros dapibus, vehicula quam accumsan, tincidunt
                                purus</a>
                        </div>
                    </div>
                </div>
                <div class="media text-center whiter l-100">
                    <a href="">
                        <small>VIEW ALL</small>
                    </a>
                </div>
            </div>
        </div>

        <!-- Notification Drawer -->
        <div id="notifications" class="tile drawer animated">
            <div class="listview narrow">
                <div class="media">
                    <a href="">Notification Settings</a>
                    <span class="drawer-close">&times;</span>
                </div>
                <div class="overflow" style="height: 254px">
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/1.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Nadin Jackson - 2 Hours ago</small>
                            <br>
                            <a class="t-overflow" href="">Mauris consectetur urna nec tempor adipiscing. Proin sit amet
                                nisi ligula. Sed eu adipiscing lectus</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/2.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">David Villa - 5 Hours ago</small>
                            <br>
                            <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod
                                nunc quis gravida. Suspendisse pharetra</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/3.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Harris worgon - On 15/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla
                                eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar,
                                ornare turpis id</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/4.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Mitch Bradberry - On 14/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique
                                vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel
                                blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/1.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">Nadin Jackson - On 15/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit
                                amet nisi ligula. Sed eu adipiscing lectus</a>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img width="40" src="${pageContext.request.contextPath}/img/profile-pics/2.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <small class="text-muted">David Villa - On 16/12/2013</small>
                            <br>
                            <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod
                                nunc quis gravida. Suspendisse pharetra</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <h4 class="page-title">${username} 个人主页</h4>

        <div class="block-area">
            <div class="row">
                <div class="col-md-9">
                    <div class="tile-light p-5 m-b-15">
                        <div class="cover p-relative">
                            <img src="${pageContext.request.contextPath}${bgimage}" id="bgimaging" class="w-100"
                                 style="height: 177px" alt="">
                            <img class="profile-pic" src="${pageContext.request.contextPath}${headp}" alt="">
                            <div class="profile-btn">
                                <button class="btn btn-alt btn-sm" onclick="changeSig()"><i class="icon-bubble"></i>
                                    <span>签名</span>
                                </button>
                                <button class="btn btn-alt btn-sm" onclick="changeBgi()"><i class="icon-user-2"></i>
                                    <span>背景</span>
                                </button>
                            </div>
                        </div>
                        <div class="p-5 m-t-15" id="um_sign">
                            ${sign}
                        </div>
                    </div>

                    <%--<div style="height:30px;">
                    </div>--%>

                    <div class="row">
                        <!-- Works -->
                        <div class="col-md-7">
                            <div class="tile">
                                <h2 class="tile-title">项目进度</h2>

                                <div class="p-10">
                                    <div class="m-b-10">
                                        项目A - 60%
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="45"
                                                 aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="m-b-10">
                                        项目B - 90%
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar"
                                                 aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 90%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="m-b-10">
                                        项目C - 33%
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar"
                                                 aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 33%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="m-b-10">
                                        项目D - 50%
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar"
                                                 aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 50%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <!-- Completed Projects -->
                            <div class="tile qnfangk">
                                <h2 class="tile-title m-b-5">近一周效率</h2>
                                <div class="p-10">
                                    <div id="line-chart" class="main-chart" style="height: 190px"></div>
                                </div>
                            </div>

                        </div>


                        <div class="col-md-5">
                            <div class="tile">
                                <h2 class="tile-title">最新消息</h2>

                                <div class="listview narrow">
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">1 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">3 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">3 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">3 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">3 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">3 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">3 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">3 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <a class="news-title" href="">日程"text"已经过期，请检查是否完成</a>
                                            <div class="clearfix"></div>
                                            <small class="muted">3 小时前</small>
                                        </div>
                                    </div>
                                    <div class="media p-5 text-center l-100">
                                        <a href="">
                                            <small>VIEW ALL</small>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-md-3">

                    <!-- About Me -->
                    <div class="tile">
                        <h2 class="tile-title">名片</h2>
                        <div class="tile-config dropdown">
                            <a data-toggle="dropdown" href="javascript:void(0);" class="tooltips tile-menu" title=""
                               data-original-title="Options"></a>
                            <ul class="dropdown-menu pull-right text-right">
                                <li><a href="javascript:void(0);" onclick="changeSch()">修改学校</a></li>
                                <li><a href="javascript:void(0);" onclick="changeLoc()">更改住址</a></li>
                                <li><a href="javascript:void(0);" onclick="changeEma()">更换绑定邮箱</a></li>
                            </ul>
                        </div>
                        <div class="listview icon-list qnmyself">
                            <div class="media">
                                <i class="icon pull-left">&#61753</i>
                                <div class="media-body" id="um_school">${school}</div>
                            </div>
                            <div class="media">
                                <i class="icon pull-left">&#61713</i>
                                <div class="media-body" id="um_local">${local}</div>
                            </div>
                            <div class="media">
                                <i class="icon pull-left">&#61880</i>
                                <div class="media-body" id="um_email">${email}</div>
                            </div>
                            <div class="media">
                                <i class="icon pull-left">&#61725</i>
                                <div class="media-body" id="um_regtime">${regtime}</div>
                            </div>
                        </div>
                    </div>

                    <!-- Friends -->
                    <div class="tile">
                        <h2 class="tile-title">工作量分布</h2>
                        <div class="p-10">
                            <div id="pie-chart" class="main-chart" style="height: 215px">
                                <%--<canvas class="flot-base" width="1124" height="600" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 562px; height: 300px;"></canvas>
                                <canvas class="flot-overlay" width="1124" height="600" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 562px; height: 300px;"></canvas>
                           --%> </div>
                        </div>
                    </div>

                    <!-- Photos -->
                    <div class="tile qncali">
                        <h2 class="tile-title">近期日程</h2>
                        <div class="comingeve">

                        </div>
                        <%--
                        <div class="media">
                            <div class="media-body">
                                <small class="text-muted">13/05/2014 at 7:45 AM</small>
                                <br>
                                <a class="t-overflow" href="">Crasida. Suspendisse
                                    pharetra</a>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
            <br/><br/><br/>
        </div>

        <div class="modal fade" id="tEvent">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">修改头像</h4>
                    </div>
                    <div class="modal-body">
                        <p>图片预览</p>
                        <div class="fileupload fileupload-new" data-provides="fileupload">
                            <div class="fileupload-preview thumbnail form-control" id="headpimage"></div>

                            <div>
                            <span class="btn btn-file btn-alt btn-sm">
                                <span class="fileupload-new">选择图片</span>
                                <span class="fileupload-exists">修改</span>
                                <input type="file"/>
                            </span>
                                <a href="#" class="btn fileupload-exists btn-sm" data-dismiss="fileupload">删除</a>
                                <a href="javascript:void(0);" onclick="changeImage()"
                                   class="btn fileupload-exists btn-sm" data-dismiss="fileupload">确认更换</a>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">关闭</button>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="changeEvent">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                        <div id="changeInfo"></div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">关闭</button>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="scheve">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">修改毕业学校</h4>
                    </div>
                    <div class="modal-body">
                        <div role="form">
                            <div class="form-group">
                                <label for="eventName">学校名称：</label>
                                <input type="text" class="input-sm form-control validate[required]" id="scheveinp"
                                       placeholder="">
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <input type="submit" class="btn btn-info btn-sm" onclick="shcevebut()" value="确认修改">
                        <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="loceve">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">修改住址地点</h4>
                    </div>
                    <div class="modal-body">
                        <div role="form">
                            <div class="form-group">
                                <label for="eventName">住址地点：</label>
                                <input type="text" class="input-sm form-control validate[required]" id="loceveinp"
                                       placeholder="">
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <input type="submit" class="btn btn-info btn-sm" onclick="locevebut()" value="确认修改">
                        <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="sigeve">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">修改个人签名</h4>
                    </div>
                    <div class="modal-body">
                        <div role="form">
                            <div class="form-group">
                                <label for="eventName">更新签名：</label>
                                <input type="text" class="input-sm form-control validate[required]" id="sigeveinp"
                                       placeholder="">
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <input type="submit" class="btn btn-info btn-sm" onclick="sigevebut()" value="确认修改">
                        <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="emaeve">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">修改绑定邮箱</h4>
                    </div>
                    <div class="modal-body">
                        <div role="form">
                            <div class="form-group">
                                <label for="eventName">邮箱账号：</label>
                                <input type="text" class="input-sm form-control validate[required]" id="emaeveinp"
                                       placeholder="">
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <input type="submit" class="btn btn-info btn-sm" onclick="emaevebut()" value="确认修改">
                        <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="bgieve">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">修改背景图片</h4>
                    </div>
                    <div class="modal-body">
                        <p>图片预览</p>
                        <div class="fileupload fileupload-new" data-provides="fileupload">
                            <div class="fileupload-preview thumbnail form-control" id="bgimages"></div>

                            <div>
                            <span class="btn btn-file btn-alt btn-sm">
                                <span class="fileupload-new">选择图片</span>
                                <span class="fileupload-exists">修改</span>
                                <input type="file"/>
                            </span>
                                <a href="#" class="btn fileupload-exists btn-sm" data-dismiss="fileupload">删除</a>
                                <a href="javascript:void(0);" onclick="bgievebut()"
                                   class="btn fileupload-exists btn-sm" data-dismiss="fileupload">确认更换</a>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">关闭</button>
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </section>
</section>

</body>
<script>

    $(document).ready(function () {

        $.ajax({
            url: '/calendar',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {},
            dataType: "json",
            success: function (data) {
                var com = data.object.com_list;
                for (i = 0; i < 4; i++) {
                    var htmlIn = "<div class=\"media\">\<div class=\"media-body\">\n" +
                        "<small class=\"text-muted\">" + com[i].syear + "/" + com[i].smonth + "/" +
                        com[i].sday + " at " + com[i].shour + ":" + com[i].smin + "</small>\n" +
                        "<br><a class=\"t-overflow\">" + com[i].inners + "</a></div></div>";
                    $(".comingeve").append(htmlIn);
                }
            }
        });
    });

    function showchangeImage() {
        $('#tEvent').modal('show');
    }

    function changeImage() {
        var headp = $("#headpimage").children().attr("src");
        var formData = new FormData();
        formData.append("headp", convertBase64UrlToBlob(headp));
        $.ajax({
            url: '/changeHeadp',
            type: 'post',
            contentType: false,
            processData: false,
            /*contentType: 'application/x-www-form-urlencoded',*/
            data: formData,
            dataType: "json",
            async: false,
            success: function (data) {
                location.reload(true);
            }
        });
    }

    function convertBase64UrlToBlob(urlData) {

        var bytes = window.atob(urlData.split(',')[1]);        //去掉url的头，并转换为byte

        //处理异常,将ascii码小于0的转换为大于0
        var ab = new ArrayBuffer(bytes.length);
        var ia = new Uint8Array(ab);
        for (var i = 0; i < bytes.length; i++) {
            ia[i] = bytes.charCodeAt(i);
        }

        return new Blob([ab], {type: 'image/jpeg'});
    }

    function changeSch() {
        $('#scheve').modal('show');
    }

    function shcevebut() {
        var school = $("#scheveinp").val();
        $.ajax({
            url: '/changeSchool',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {
                school: school
            },
            dataType: "json",
            success: function (data) {
                if (data.errorCode == "login")
                    window.location.href = "/signout";
                else if (data.errorCode == "0")
                    $("#um_school").html(data.object);
            }
        });
    }

    function changeLoc() {
        $('#loceve').modal('show');
    }

    function locevebut() {
        var local = $("#loceveinp").val();
        $.ajax({
            url: '/changeLocal',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {
                local: local
            },
            dataType: "json",
            success: function (data) {
                if (data.errorCode == "login")
                    window.location.href = "/signout";
                else if (data.errorCode == "0")
                    $("#um_local").html(data.object);
            }
        });
    }

    function changeSig() {
        $('#sigeve').modal('show');
    }

    function sigevebut() {
        var sign = $("#sigeveinp").val();
        $.ajax({
            url: '/changeSign',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {
                sign: sign
            },
            dataType: "json",
            success: function (data) {
                if (data.errorCode == "login")
                    window.location.href = "/signout";
                else if (data.errorCode == "0")
                    $("#um_sign").html(data.object);
            }
        });
    }

    function changeEma() {
        $('#emaeve').modal('show');
    }

    function emaevebut() {
        var email = $("#emaeveinp").val();
        $.ajax({
            url: '/changeEmail',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {
                email: email
            },
            dataType: "json",
            success: function (data) {
                if (data.errorCode == "login")
                    window.location.href = "/signout";
                else if (data.errorCode == "0")
                    $("#um_email").html(data.object);
            }
        });
    }

    function changeBgi() {
        $('#bgieve').modal('show');
    }

    function bgievebut() {

        var bgimage = $("#bgimages").children().attr("src");
        var formData = new FormData();
        formData.append("bgimage", convertBase64UrlToBlob(bgimage));
        $.ajax({
            url: '/changeBgimage',
            type: 'post',
            contentType: false,
            processData: false,
            /*contentType: 'application/x-www-form-urlencoded',*/
            data: formData,
            dataType: "json",
            async: false,
            success: function (data) {
                if (data.errorCode == "login")
                    window.location.href = "/signout";
                else if (data.errorCode == "0")
                    $("#bgimaging").attr("src", data.object);
            }
        });

    }

</script>
</html>

