<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/31
  Time: 下午1:18
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
    <title>MoreTime——项目中心</title>
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
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.time.js"></script>
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.animator.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.resize.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.orderBar.js"></script>
    <script src="${pageContext.request.contextPath}/js/charts/jquery.flot.pie.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/changeproing.js"></script>


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
            <li class="active">
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
            <li>
                <a href="/profile"><span class="icon qnicon">&#61883;</span>
                    <span class="menu-item">个人中心</span>
                </a>
            </li>
        </ul>

    </aside>

    <!-- Content -->
    <section id="content" class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="tile" style="margin: 20px;">
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
                <div class="row">
                    <div class="col-md-6">
                        <div class="tile" style="margin: 20px;">
                            <h2 class="tile-title">一周内每日效率</h2>
                            <div class="p-10">
                                <div id="line-chart" class="main-chart" style="height: 190px"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="tile" style="margin: 20px;">
                            <h2 class="tile-title">一周内各项目工作量占比</h2>
                            <div class="p-10">
                                <div id="bar-chart" class="main-chart" style="height: 190px"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="tile" style="margin: 20px; height: 257px;overflow: auto;">
                            <h2 class="tile-title">记事备忘</h2>
                            <div class="tile-config dropdown">
                                <a data-toggle="dropdown" href="" class="tooltips tile-menu" title="Options"></a>
                                <ul class="dropdown-menu pull-right text-right">
                                    <li><a href="">修改备忘录</a></li>
                                </ul>
                            </div>
                            <div class="block-area" id="Panel">
                                <div class="panel panel-default tile">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">在这里写需要记事备忘的名称</h3>
                                    </div>
                                    <div class="panel-body" style="height: 135px;overflow: auto;">
                                        在这里写下你项目中非常重要需要被提醒的事件。 <br/> MoreTime团队会在您下面填写的时间时向您发送短信来提醒您。
                                    </div>
                                    <div class="panel-footer">2017-11-24 16:30</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="tile" style="margin: 20px; height: 257px;overflow: auto;">
                            <h2 class="tile-title">成员贡献</h2>
                            <div class="row">
                                <div class="col-md-8">
                                    <div id="pie-chart" class="main-chart"
                                         style="height: 215px; margin: 7px; margin-left:15px"></div>
                                </div>
                                <div class="col-md-4">
                                    <div style="margin-top: 30px; margin-left:10px">
                                        <p>合作者1: 28%</p>
                                        <p>合作者2: 28%</p>
                                        <p>合作者3: 28%</p>
                                        <p>合作者4: 28%</p>
                                        <p>合作者5: 28%</p>
                                        <p>合作者6: 28%</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 qnallpro">
                <div class="tile" style="margin: 20px; height: 257px;overflow: auto;">
                    <h2 class="tile-title">我的所有项目</h2>
                    <div class="listview narrow">
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">名称: 曾经的项目Z</a>
                                <div class="clearfix"></div>
                                <small class="muted">人数: 6</small>
                                <small class="muted">时间: 2017-10-27 至 2017-10-27</small>
                                <small class="muted">状态: 已完成</small>
                                <small class="muted">
                                    简介:在这里你可以规划学习记录生活点滴。用一种全新、简洁且有效的方式，提高工作效率。在这里你可以规划学习工作计划、创建项目、查看团队的进度、记录生活点滴。用一种全新、简洁且有效的方式
                                </small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">名称: 曾经的项目Z</a>
                                <div class="clearfix"></div>
                                <small class="muted">人数: 6</small>
                                <small class="muted">时间: 2017-10-27 至 2017-10-27</small>
                                <small class="muted">状态: 已完成</small>
                                <small class="muted">
                                    简介:在这里你可以规划学习记录生活点滴。用一种全新、简洁且有效的方式，提高工作效率。在这里你可以规划学习工作计划、创建项目、查看团队的进度、记录生活点滴。用一种全新、简洁且有效的方式
                                </small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">名称: 曾经的项目Z</a>
                                <div class="clearfix"></div>
                                <small class="muted">人数: 6</small>
                                <small class="muted">时间: 2017-10-27 至 2017-10-27</small>
                                <small class="muted">状态: 已完成</small>
                                <small class="muted">
                                    简介:在这里你可以规划学习记录生活点滴。用一种全新、简洁且有效的方式，提高工作效率。在这里你可以规划学习工作计划、创建项目、查看团队的进度、记录生活点滴。用一种全新、简洁且有效的方式
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tile" style="margin: 20px; height: 503px;overflow: auto;">
                    <h2 class="tile-title">历史提交</h2>
                    <div class="listview narrow">
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-body">
                                <a class="news-title">2017-10-27 7:45 AM</a>
                                <div class="clearfix"></div>
                                <small class="muted">完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写，完成个人主页页面编写</small>
                            </div>
                        </div>
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

