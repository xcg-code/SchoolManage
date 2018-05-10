<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>个人主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- STYLESHEETS --><!--[if lt IE 9]>
    <script src="js/flot/excanvas.min.js"></script>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
    <link rel="stylesheet" type="text/css" href="css/cloud-admin.css">
    <link rel="stylesheet" type="text/css" href="css/themes/default.css" id="skin-switcher">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- DATE RANGE PICKER -->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-daterangepicker/daterangepicker-bs3.css"/>
    <!-- UNIFORM -->
    <link rel="stylesheet" type="text/css" href="js/uniform/css/uniform.default.min.css"/>
    <!-- FONTS -->
</head>
<body>
<!-- HEADER -->
<header class="navbar clearfix" id="header">
    <div class="container">
        <div class="navbar-brand">
            <!-- COMPANY LOGO -->
            <img src="img/logo/logo.png" alt="Cloud Admin Logo" class="img-responsive" height="30"
                 width="120">
            <!-- /COMPANY LOGO -->
            <!-- SIDEBAR COLLAPSE -->
            <div id="sidebar-collapse" class="sidebar-collapse btn">
                <i class="fa fa-bars"
                   data-icon1="fa fa-bars"
                   data-icon2="fa fa-bars"></i>
            </div>
            <!-- /SIDEBAR COLLAPSE -->
        </div>
        <!-- NAVBAR LEFT -->
        <!--<include file="./Public/tpl/header.html" />-->
        <!-- /NAVBAR LEFT -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <ul class="nav navbar-nav pull-right">
            <!-- BEGIN USER LOGIN DROPDOWN -->
            <li class="dropdown user" id="header-user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="username">${sessionScope.admin.adminName}</span>
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="changePwd"><i class="fa fa-cog"></i> 修改密码</a></li>
                    <li><a href="logout"><i class="fa fa-power-off"></i>退出系统</a></li>
                </ul>

            </li>
            <!-- END USER LOGIN DROPDOWN -->
        </ul>
        <!-- END TOP NAVIGATION MENU -->
    </div>
</header>
<!--/HEADER -->
<!-- PAGE -->
<section id="page">
    <!-- SIDEBAR -->
    <div id="sidebar" class="sidebar">
    <div class="sidebar-menu nav-collapse">
        <!-- SIDEBAR MENU -->
        <ul>
            <li>
                <a href="profile">
                    <i class="fa fa-tachometer fa-fw"></i> <span class="menu-text">主页</span>
                    <span class="selected"></span>
                </a>
            </li>
            <li class="has-sub">
                <a href="javascript:;" class="">
                    <i class="fa fa-briefcase fa-fw"></i> <span class="menu-text">用户管理<span
                        class="badge pull-right"></span></span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="http://localhost/PaperManager/index.php/Home/Project/project_git"><span
                            class="sub-menu-text">查看用户</span></a>
                    </li>
                    <li><a class="" href="http://localhost/PaperManager/index.php/Home/Project/my_project"><span
                            class="sub-menu-text">用户信息修改</span></a></li>
                </ul>
            </li>
            <li class="has-sub">
                <a href="javascript:;" class="">
                    <i class="fa fa-briefcase fa-fw"></i> <span class="menu-text">场馆管理<span
                        class="badge pull-right"></span></span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="http://localhost/PaperManager/index.php/Home/Project/project_git"><span
                            class="sub-menu-text">查看预定信息</span></a>
                    </li>
                    <li><a class="" href="http://localhost/PaperManager/index.php/Home/Project/my_project"><span
                            class="sub-menu-text">场馆类别管理</span></a></li>
                    <li><a class="" href="http://localhost/PaperManager/index.php/Home/Achievement/project_type"><span
                            class="sub-menu-text">发布通知</span></a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>

    <!-- /SIDEBAR -->
    <div id="main-content">
        <!-- SAMPLE BOX CONFIGURATION MODAL FORM-->
        <div class="modal fade" id="box-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Box Settings</h4>
                    </div>
                    <div class="modal-body">
                        Here goes box setting content.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- /SAMPLE BOX CONFIGURATION MODAL FORM-->
        <div class="container">
            <div class="row">
                <div id="content" class="col-lg-12">
                    <!-- PAGE HEADER-->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="page-header">
                                <!-- STYLER -->

                                <!-- /STYLER -->
                                <!-- BREADCRUMBS -->
                                <ul class="breadcrumb">

                                </ul>
                                <!-- /BREADCRUMBS -->
                                <div class="clearfix">
                                    <h3 class="content-title pull-left">个人主页</h3>
                                </div>
                                <div class="description">基本信息, 研究领域, 科研成果</div>
                            </div>
                        </div>
                    </div>
                    <!-- /PAGE HEADER -->
                    
                                </div>
                            </div>
                        </div>
                    </div>

                </div><!-- /CONTENT-->
            </div>
        </div>
    </div>
</section>
<!--/PAGE -->
<!-- JAVASCRIPTS -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- JQUERY -->
<script src="js/jquery/jquery-2.0.3.min.js"></script>
<!-- JQUERY UI-->
<script src="js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- BOOTSTRAP -->
<script src="bootstrap-dist/js/bootstrap.min.js"></script>


<!-- DATE RANGE PICKER -->
<script src="js/bootstrap-daterangepicker/moment.min.js"></script>

<script src="js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
<!-- SLIMSCROLL -->
<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
<!-- SLIMSCROLL -->
<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
<!-- BLOCK UI -->
<script type="text/javascript" src="js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
<!-- EASY PIE CHART -->
<script src="js/jquery-easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/easypiechart/jquery.easypiechart.min.js"></script>
<!-- SPARKLINES -->
<script type="text/javascript" src="js/sparklines/jquery.sparkline.min.js"></script>
<!-- UNIFORM -->
<script type="text/javascript" src="js/uniform/jquery.uniform.min.js"></script>
<!-- COOKIE -->
<script type="text/javascript" src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
<!-- CUSTOM SCRIPT -->
<script src="js/script.js"></script>
<script>
    jQuery(document).ready(function () {
        App.setPage("user_profile");  //Set current page
        App.init(); //Initialise plugins and elements
    });
</script>
<!-- /JAVASCRIPTS -->
</body>
</html>