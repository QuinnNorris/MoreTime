<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/11/2
  Time: 上午10:19
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
    <title>MoreTime——新建项目</title>
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
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/scroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/validation/validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/validation/validationEngine.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/calendar.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/feeds.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/scroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
    <script src="${pageContext.request.contextPath}/js/icheck.js"></script>
    <script src="${pageContext.request.contextPath}/js/scroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/fileupload.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/functions.js"></script>
    <script src="${pageContext.request.contextPath}/js/changeproing.js"></script>

    <script src="${pageContext.request.contextPath}/js/validation/validate.min.js"></script>
    <!-- jQuery Form Validation Library -->
    <script src="${pageContext.request.contextPath}/js/validation/validationEngine.min.js"></script>
    <!-- jQuery Form Validation Library - requirred with above js -->
    <script src="${pageContext.request.contextPath}/js/select.min.js"></script> <!-- Custom Select -->
    <script src="${pageContext.request.contextPath}/js/chosen.min.js"></script> <!-- Custom Multi Select -->
    <script src="${pageContext.request.contextPath}/js/datetimepicker.min.js"></script> <!-- Date & Time Picker -->
    <script src="${pageContext.request.contextPath}/js/colorpicker.min.js"></script> <!-- Color Picker -->
    <script src="${pageContext.request.contextPath}/js/icheck.js"></script> <!-- Custom Checkbox + Radio -->
    <script src="${pageContext.request.contextPath}/js/autosize.min.js"></script> <!-- Textare autosize -->
    <script src="${pageContext.request.contextPath}/js/toggler.min.js"></script> <!-- Toggler -->
    <script src="${pageContext.request.contextPath}/js/input-mask.min.js"></script> <!-- Input Mask -->
    <script src="${pageContext.request.contextPath}/js/spinner.min.js"></script> <!-- Spinner -->
    <script src="${pageContext.request.contextPath}/js/slider.min.js"></script> <!-- Input Slider -->
    <script src="${pageContext.request.contextPath}/js/fileupload.min.js"></script> <!-- File Upload -->

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
                    <span>消息提醒</span>
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
            <li class="dropdown active">
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
                <div class="media text-center whiter l-100">
                    <a href="">
                        <small>VIEW ALL</small>
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8">
                <div class="tile" style="margin: 20px;">
                    <h2 class="tile-title">新建项目</h2>
                    <div class="form-horizontal" role="form">
                        <div class="row qnlist">
                            <label for="inputName1" class="col-md-2 control-label">项目名称</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control input-sm" id="proname" placeholder="名称不超过12字">
                            </div>
                        </div>
                        <div class="row qnlist">
                            <label for="inputMessage" class="col-md-2 control-label">内容简介</label>
                            <div class="col-md-9">
                                <textarea rows="5" class="form-control auto-size input-sm" id="proinners"
                                          placeholder=""></textarea>
                            </div>
                        </div>
                        <div class="row qnlist">
                            <label for="inputName1" class="col-md-2 control-label">合作人数</label>
                            <div class="col-md-7">
                                <div class="p-relative">
                                    <input type="text" id="procount" class="form-control input-sm spinner-4 spinedit"/>
                                </div>
                            </div>
                            <button onclick="peoeveshow()" style="width: 122px;" class="btn btn-info btn-sm col-lg-2">
                                设置人员名单
                            </button>
                        </div>
                        <p class="qninfop">填写人数后点击"设置人员名单"，设置每个人合作者的昵称，用来在项目中标记贡献</p>
                        <div class="row qnlist">
                            <label for="inputName1" class="col-md-2 control-label">起始时间</label>
                            <div class="col-md-9">
                                <div class="input-icon datetime-pick date-only">
                                    <input data-format="yyyy-MM-dd" id="starttime" type="text"
                                           class="form-control input-sm"/>
                                    <span class="add-on">
                                    <i class="sa-plus"></i>
                                </span>
                                </div>
                                <%--<input type="text" class="input-sm form-control" placeholder="格式：2017 03 17">--%>
                            </div>
                        </div>
                        <div class="row qnlist">
                            <label for="inputName1" class="col-md-2 control-label">终止时间</label>
                            <div class="col-md-9">
                                <div class="input-icon datetime-pick date-only">
                                    <input data-format="yyyy-MM-dd" id="endtime" type="text"
                                           class="form-control input-sm"/>
                                    <span class="add-on">
                                    <i class="sa-plus"></i>
                                </span>
                                </div>
                            </div>
                        </div>
                        <div class="row qnlist">
                            <label for="inputName1" class="col-md-2 control-label">预计总工作量</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control input-sm" id="works"
                                       placeholder="填写整数 单位为：人／天">
                            </div>
                        </div>
                        <div class="row qnlist">
                            <label for="inputEmail1" class="col-md-2 control-label">主题颜色</label>
                            <div class="col-md-9">
                                <div class="btn-group btn-group-justified" data-toggle="buttons">
                                    <label class="btn btn-gr-gray btn-sm label-primary">
                                        <input type="radio" name="options" id="option1" value="primary"/> 深蓝色
                                    </label>
                                    <label class="btn btn-gr-gray btn-sm label-info">
                                        <input type="radio" name="options" id="option2" value="info"/> 浅蓝色
                                    </label>
                                    <label class="btn btn-gr-gray btn-sm label-success">
                                        <input type="radio" name="options" id="option3" value="success"/> 绿色
                                    </label>
                                    <label class="btn btn-gr-gray btn-sm label-danger">
                                        <input type="radio" name="options" id="option3" value="danger"/> 红色
                                    </label>
                                    <label class="btn btn-gr-gray btn-sm label-warning">
                                        <input type="radio" name="options" id="option3" value="warning"/> 橙黄色
                                    </label>
                                </div>
                            </div>
                        </div>
                        <p class="qninfop">项目的主题颜色，会用来显示项目进度条等颜色</p>
                        <div class="row qnlist">
                            <div class="col-md-offset-2 col-md-9">
                                <button type="submit" style="margin-bottom: 50px;"
                                        onclick="createpro()" class="btn btn-block btn-info btn-sm">创建我的新项目
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 qnallpro">
                <div class="tile" style="margin: 20px; height: 700px;overflow: auto;">
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
            </div>
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
                            <div class="fileupload-preview thumbnail form-control"></div>

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

        <div class="modal fade" id="peoeve">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body qnry">
                        <input type="hidden" class="form-control input-sm" id="peo1" placeholder="成员1">
                        <input type="hidden" class="form-control input-sm" id="peo2" placeholder="成员2">
                        <input type="hidden" class="form-control input-sm" id="peo3" placeholder="成员3">
                        <input type="hidden" class="form-control input-sm" id="peo4" placeholder="成员4">
                        <input type="hidden" class="form-control input-sm" id="peo5" placeholder="成员5">
                        <input type="hidden" class="form-control input-sm" id="peo6" placeholder="成员6">
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-info btn-sm" onclick="peoevebut()"
                                data-dismiss="modal">确认并保存
                        </button>
                        <button type="button" class="btn btn-info btn-sm"
                                data-dismiss="modal">关闭
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="erreve">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                        <div id="errinfo"></div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-info btn-sm" onclick="errevebut()"
                                data-dismiss="modal">关闭
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </section>
</section>
<script type="text/javascript">
    var procount = "";
    var peonames = "#";
    $(document).ready(function () {

        changepros();

        (function () {
            $('.spinner-4').spinedit('setValue', 1);
            $('.spinner-4').spinedit('setMinimum', 1);
            $('.spinner-4').spinedit('setMaximum', 6);
        })();

        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        $('#calendar').fullCalendar({
            header: {
                center: 'title',
                left: 'prev, next',
                right: ''
            },

            selectable: true,
            selectHelper: true,
            editable: true,
            events: [
                {
                    title: 'Hangout with friends',
                    start: new Date(y, m, 1),
                    end: new Date(y, m, 2)
                },
                {
                    title: 'Meeting with client',
                    start: new Date(y, m, 10),
                    allDay: true
                },
                {
                    title: 'Repeat Event',
                    start: new Date(y, m, 18),
                    allDay: true
                },
                {
                    title: 'Semester Exam',
                    start: new Date(y, m, 20),
                    end: new Date(y, m, 23)
                },
                {
                    title: 'Soccor match',
                    start: new Date(y, m, 5),
                    end: new Date(y, m, 6)
                },
                {
                    title: 'Coffee time',
                    start: new Date(y, m, 21),
                },
                {
                    title: 'Job Interview',
                    start: new Date(y, m, 5),
                }
            ],

            //On Day Select
            select: function (start, end, allDay) {
                $('#addNew-event').modal('show');
                $('#addNew-event input:text').val('');
                $('#getStart').val(start);
                $('#getEnd').val(end);
            },

            eventResize: function (event, dayDelta, minuteDelta, revertFunc) {
                $('#editEvent').modal('show');

                var info =
                    "The end date of " + event.title + "has been moved " +
                    dayDelta + " days and " +
                    minuteDelta + " minutes."
                ;

                $('#eventInfo').html(info);


                $('#editEvent #editCancel').click(function () {
                    revertFunc();
                })
            }
        });

        $('body').on('click', '#addEvent', function () {
            var eventForm = $(this).closest('.modal').find('.form-validation');
            eventForm.validationEngine('validate');

            if (!(eventForm).find('.formErrorContent')[0]) {

                //Event Name
                var eventName = $('#eventName').val();

                //Render Event
                $('#calendar').fullCalendar('renderEvent', {
                    title: eventName,
                    start: $('#getStart').val(),
                    end: $('#getEnd').val(),
                    allDay: true,
                }, true); //Stick the event

                $('#addNew-event form')[0].reset()
                $('#addNew-event').modal('hide');
            }
        });
    });

    //Calendar views
    $('body').on('click', '.calendar-actions > li > a', function (e) {
        e.preventDefault();
        var dataView = $(this).attr('data-view');
        $('#calendar').fullCalendar('changeView', dataView);

        //Custom scrollbar
        var overflowRegular, overflowInvisible = false;
        overflowRegular = $('.overflow').niceScroll();
    });

    function showchangeImage() {
        $('#tEvent').modal('show');
    }

    function changeImage() {
        var headp = $(".thumbnail").children().attr("src");
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

    function createpro() {
        var name = $("#proname").val();

        var proinners = $("#proinners").val();
        var works = $("#works").val();
        var color = $("input[type='radio']:checked").val();
        var starttime = $("#starttime").val();
        var endtime = $("#endtime").val();
        if (name == null || name == "") {
            $('#erreve').modal('show');
            $('#errinfo').html('项目名称不能为空');
        } else if (proinners == null || proinners == "") {
            $('#erreve').modal('show');
            $('#errinfo').html('项目内容简介不能为空');
        } else if (works == null || works == "") {
            $('#erreve').modal('show');
            $('#errinfo').html('请填写预计工作量');
        } else if (peonames == "#") {
            $('#erreve').modal('show');
            $('#errinfo').html('请正确设置所有人员昵称');
        } else if (color == null || color == "") {
            $('#erreve').modal('show');
            $('#errinfo').html('请选择一种项目颜色');
        }
        else {
            $.ajax({
                url: '/createNew',
                type: 'post',
                contentType: 'application/x-www-form-urlencoded',
                data: {
                    name: name,
                    barcolor: color,
                    info: proinners,
                    begtime: starttime,
                    endtime: endtime,
                    toteltimes: works,
                    pronumber: procount,
                    persons: peonames,
                    types: "1"
                },
                dataType: "json",
                success: function (data) {
                    if (data.errorCode == "login")
                        window.location.href = "/login";
                    else if (data.errorCode == "1") {
                        $('#erreve').modal('show');
                        $('#errinfo').html('您已经拥有的项目已经达到4个，请酌情删减后再创建新项目。');
                    }
                    else
                        window.location.href = "/project/" + data.beanObject.pronumber;
                }
            });
        }
    }

    function peoeveshow() {
        procount = $("#procount").val();
        if (!(procount <= 6 && procount >= 1)) {
            $('#erreve').modal('show');
            $('#errinfo').html('人数输入有误，请输入1至6间的整数。');
        }
        else {
            $('#peoeve').modal('show');
            for (var i = 1; i <= procount; i++)
                $("#peo" + i).attr("type", "text");
        }
    }

    function peoevebut() {
        var cansub = true;
        for (var i = 1; i <= procount; i++)
            if ($("#peo" + i).val() == null || $("#peo" + i).val() == "")
                cansub = false;
        if (cansub == false) {
            $('#erreve').modal('show');
            $('#errinfo').html('请填写所有人的昵称');
        } else if (cansub == true) {
            for (var i = 1; i <= procount; i++)
                peonames += $("#peo" + i).val() + "#";
            $('#erreve').modal('show');
            $('#errinfo').html('人员设置成功');
        }
    }


</script>
</body>
</html>

