<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>场馆管理</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- STYLESHEETS -->
<!--[if lt IE 9]><script src="js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="css/cloud-admin.css">
<link rel="stylesheet" type="text/css" href="css/themes/default.css"
	id="skin-switcher">
<link rel="stylesheet" type="text/css" href="css/responsive.css">

<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- DATE RANGE PICKER -->
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
<!-- UNIFORM -->
<link rel="stylesheet" type="text/css"
	href="js/uniform/css/uniform.default.min.css" />
<!-- FONTS -->
</head>
<body>
	<!-- HEADER -->
	<header class="navbar clearfix" id="header">
		<div class="container">
			<div class="navbar-brand">
				<!-- COMPANY LOGO -->
				<a href="index.html"> <img src="img/logo/logo.png"
					alt="Cloud Admin Logo" class="img-responsive" height="30"
					width="120"> </a>
				<!-- /COMPANY LOGO -->
				<!-- TEAM STATUS FOR MOBILE -->
				<div class="visible-xs">
					<a href="#" class="team-status-toggle switcher btn dropdown-toggle">
						<i class="fa fa-users"></i> </a>
				</div>
				<!-- /TEAM STATUS FOR MOBILE -->
				<!-- SIDEBAR COLLAPSE -->
				<div id="sidebar-collapse" class="sidebar-collapse btn">
					<i class="fa fa-bars" data-icon1="fa fa-bars"
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
				<li class="dropdown user" id="header-user"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <span
						class="username">${sessionScope.admin.adminName}</span> <i
						class="fa fa-angle-down"></i> </a>
					<ul class="dropdown-menu">
						<li><a href="changePwd"><i class="fa fa-cog"></i> 修改密码</a>
						</li>
						<li><a href="logout"><i class="fa fa-power-off"></i> 退出系统</a>
						</li>
					</ul></li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU -->
		</div>
	</header>
	<!--/HEADER -->

	<!-- PAGE -->
	<section id="page">
		<!-- SIDEBAR -->
		<%@include file="navbar.jsp"%>
		<!-- /SIDEBAR -->
		<div id="main-content">
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
										<h3 class="content-title pull-left">我的科研成果</h3>
									</div>
									<div class="description">查看，检索</div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<!-- USER PROFILE -->
						<div class="row">
							<div class="col-md-12">
								<div class="box">
									<div class="box-title">
										<h4>
											<i class="fa fa-bars"></i>我的科研成果列表
										</h4>
										<div class="tools hidden-xs">
											<a href="#box-config" data-toggle="modal" class="config">
												<i class="fa fa-cog"></i> </a> <a href="javascript:;"
												class="reload"> <i class="fa fa-refresh"></i> </a> <a
												href="javascript:;" class="collapse"> <i
												class="fa fa-chevron-up"></i> </a> <a href="javascript:;"
												class="remove"> <i class="fa fa-times"></i> </a>
										</div>
									</div>
									<div class="box-body">
										<div class="row">
											<div class="col-md-3">
												<div class="list-group">
													<div class="list-group-item profile-details">
														<h4>成果操作</h4>
													</div>
													<a
														href="__ROOT__/index.php/Home/Excel/achi_export{$SearchAction}/user_id/{$user_id}"
														class="list-group-item"><i class="fa fa-file fa-fw"></i>
														导出当前所检索科研信息</a>
													<div class="list-group-item profile-details">
														<h4>成果类别</h4>
													</div>

													<a href="__URL__/my_achievement/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.All}</span><i
														class="fa fa-user fa-fw"></i> 所有成果</a> <a
														href="__URL__/my_achievement/achi_type/JournalPaper/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.JournalPaper}</span><i
														class="fa fa-calendar fa-fw"></i> 期刊论文 </a> <a
														href="__URL__/my_achievement/achi_type/ConferencePaper/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.ConferencePaper}</span><i
														class="fa fa-calendar fa-fw"></i> 会议论文 </a> <a
														href="__URL__/my_achievement/achi_type/Monograph/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.Monograph}</span><i
														class="fa fa-calendar fa-fw"></i> 学术专著 </a> <a
														href="__URL__/my_achievement/achi_type/Patent/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.Patent}</span><i
														class="fa fa-calendar fa-fw"></i> 专利 </a> <a
														href="__URL__/my_achievement/achi_type/ConferenceReport/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.ConferenceReport}</span><i
														class="fa fa-calendar fa-fw"></i> 会议报告 </a> <a
														href="__URL__/my_achievement/achi_type/Standard/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.Standard}</span><i
														class="fa fa-calendar fa-fw"></i> 标准 </a> <a
														href="__URL__/my_achievement/achi_type/Software/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.Software}</span><i
														class="fa fa-calendar fa-fw"></i> 软件著作权 </a> <a
														href="__URL__/my_achievement/achi_type/Reward/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.Reward}</span><i
														class="fa fa-calendar fa-fw"></i> 科研奖励 </a> <a
														href="__URL__/my_achievement/achi_type/Train/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.Train}</span><i
														class="fa fa-calendar fa-fw"></i> 人才培养 </a> <a
														href="__URL__/my_achievement/achi_type/ConferenceInvolved/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.ConferenceInvolved}</span><i
														class="fa fa-calendar fa-fw"></i> 举办或参加学术会议 </a> <a
														href="__URL__/my_achievement/achi_type/TechTrans/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.TechTrans}</span><i
														class="fa fa-calendar fa-fw"></i> 成果技术转移 </a> <a
														href="__URL__/my_achievement/achi_type/OtherAchievement/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$AchievementCount.OtherAchievement}</span><i
														class="fa fa-calendar fa-fw"></i> 其他重要研究成果 </a>

													<div class="list-group-item profile-details">
														<h4>发表年份</h4>
													</div>
													<volist name="AchievementYear" id="vo"> <a
														href="__URL__/my_achievement/achi_year/{$vo.year}/user_id/{$user_id}"
														class="list-group-item"><span class="badge badge-red">{$vo.num}</span><i
														class="fa fa-calendar fa-fw"></i> {$vo.year} </a> </volist>
												</div>
											</div>
											<div class="col-md-9">
												<form
													action="__URL__/my_achievement{$SearchAction}/user_id/{$user_id}"
													method="post">
													<div class="input-group">
														<input class="form-control" type="text"
															placeholder="输入成果名称查询" name="search"
															value="<?php if(isset($_POST['search'])){echo $_POST['search'];}?>">
														<span class="input-group-btn">
															<button class="btn btn-primary" type="submit">
																查询 <i class="fa fa-search"></i>
															</button> </span>
													</div>
												</form>

												<div class="divide-20"></div>

												<volist name="AchievementInfo" id="vo">
												<div class="search-results">
													<h4>
														<a href="{$vo.detail_link}">{$vo.title}</a>
													</h4>
													<div class="text-primary">{$vo.author}</div>
													<div class="text-danger">{$vo.institute_name}</div>
													<div class="text-success">{$vo.publish_time}</div>
												</div>
												</volist>

												<div>
													<ul class='pagination'>{$page}
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="footer-tools">
							<span class="go-top"> <i class="fa fa-chevron-up"></i> Top
							</span>
						</div>
					</div>
					<!-- /CONTENT-->
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
	<script
		src="js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="bootstrap-dist/js/bootstrap.min.js"></script>


	<!-- DATE RANGE PICKER -->
	<script src="js/bootstrap-daterangepicker/moment.min.js"></script>

	<script src="js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript"
		src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript"
		src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
	<script type="text/javascript"
		src="js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
	<!-- BLOCK UI -->
	<script type="text/javascript"
		src="js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
	<!-- EASY PIE CHART -->
	<script src="js/jquery-easing/jquery.easing.min.js"></script>
	<script type="text/javascript"
		src="js/easypiechart/jquery.easypiechart.min.js"></script>
	<!-- SPARKLINES -->
	<script type="text/javascript"
		src="js/sparklines/jquery.sparkline.min.js"></script>
	<!-- UNIFORM -->
	<script type="text/javascript" src="js/uniform/jquery.uniform.min.js"></script>
	<!-- COOKIE -->
	<script type="text/javascript"
		src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
	<!-- CUSTOM SCRIPT -->
	<script src="js/script.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.setPage("user_profile"); //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>