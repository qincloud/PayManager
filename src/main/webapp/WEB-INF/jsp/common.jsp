<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>个人财务管理系统</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><span>个人财务</span>管理系统</a>
			<ul class="user-menu">
				<li class="dropdown pull-right"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><span
						class="glyphicon glyphicon-user"></span> 用户 <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>
								用户中心 </a></li>
						<li><a href="#"><span class="glyphicon glyphicon-cog"></span>
								设置 </a></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
								退出 </a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- /.container-fluid -->
	</nav>

	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="搜索">
			</div>
		</form>
		<ul class="nav menu">
			<li><a href="${ctx}/index.html"><span
					class="glyphicon glyphicon-dashboard"></span> 首页</a></li>
			<!-- 
			<li><a href="widgets.html"><span
					class="glyphicon glyphicon-th"></span> Widgets</a></li> -->
			<li><a href="${ctx}/income_table.html"><span
					class="glyphicon glyphicon-stats"></span> 收入列表</a></li>
			<li><a href="${ctx}/pay_table.html"><span
					class="glyphicon glyphicon-list-alt"></span>支出列单</a></li>
			<li><a href="${ctx}/add_income.html"><span
					class="glyphicon glyphicon-pencil"></span> 添加收入</a></li>
			<li><a href="${ctx}/add_pay.html"><span
					class="glyphicon glyphicon-pencil"></span> 添加支出</a></li>
			<!-- 
			<li><a href="panels.html"><span
					class="glyphicon glyphicon-info-sign"></span> Alerts &amp; Panels</a></li> -->
		</ul>
		<div class="attribution">
			<a
				href="http://www.medialoot.com/item/lumino-admin-bootstrap-template/">钦云软科</a>
		</div>
	</div>
	<!--/.sidebar-->
</body>
</html>