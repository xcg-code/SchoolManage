<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div id="sidebar" class="sidebar">
	<div class="sidebar-menu nav-collapse">
		<!-- SIDEBAR MENU -->
		<ul>
			<li><a href="profile"> <i class="fa fa-tachometer fa-fw"></i>
					<span class="menu-text">主页</span> <span class="selected"></span> </a>
			</li>
			<li class="has-sub"><a href="javascript:;" class=""> <i
					class="fa fa-briefcase fa-fw"></i> <span class="menu-text">用户管理<span
						class="badge pull-right"></span> </span> <span class="arrow"></span> </a>
				<ul class="sub">
					<li><a class=""
						href="listStudent"><span
							class="sub-menu-text">学生</span> </a></li>
					<li><a class=""
						href="listTeacher"><span
							class="sub-menu-text">教师</span> </a>
					</li>
					<li><a class=""
						href="listGroup"><span
							class="sub-menu-text">组织</span> </a>
					</li>
				</ul>
			</li>
			<li class="has-sub"><a href="javascript:;" class=""> <i
					class="fa fa-briefcase fa-fw"></i> <span class="menu-text">场馆管理<span
						class="badge pull-right"></span> </span> <span class="arrow"></span> </a>
				<ul class="sub">
					<li><a class=""
						href="http://localhost/PaperManager/index.php/Home/Project/project_git"><span
							class="sub-menu-text">查看预定信息</span> </a>
					</li>
					<li><a class=""
						href="http://localhost/PaperManager/index.php/Home/Project/my_project"><span
							class="sub-menu-text">场馆类别管理</span> </a></li>
					<li><a class=""
						href="http://localhost/PaperManager/index.php/Home/Achievement/project_type"><span
							class="sub-menu-text">发布通知</span> </a>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</div>