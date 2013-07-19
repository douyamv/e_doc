
<%@page import="njust.Sessionfactory.HibernateSessionFactory"%>
<%@page import="org.hibernate.criterion.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="njust.PO.Topic"%>


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<title>Bootstrap 101 Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

<style>
.universal_background {
	background: rgba(255, 255, 255, 0.5);
}

.headtitle {
	font-weight: bold;
	font-size: 18px;
	color: #e2e2e2;
}

.headtitle:hover {
	color: #ffffff;
}
</style>
</head>
<body
	style="background:#563d7c;background: url('seamless_polygon.jpg') repeat fixed center top #DFDFDF;}">
	<nav class="navbar navbar-default " role="navigation"
		style="background:#563d7c">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header col-md-offset-2">
			<a class="navbar-brand" href="#"> <span
				class="glyphicon glyphicon-leaf"> </span> <span
				style="color:#E6DBC4 ;font-size:18px;">Njust</span><span
				style="color:#e2e2e2;font-size:18px;">资料平台</span>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse col-md-offset-5"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav "
				style="font-weight:bold;font-size:18px;color:#0">
				<form class="navbar-form navbar-left form-inline" role="search">
					<div class="form-group form-inline">
						<input type="text" class=" input-sm"
							style="background:#e2e2e2;border:0px" placeholder="搜索">
						<button type="submit" class="btn btn-link">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</div>

				</form>
				<li><a href="home.html"><span class="headtitle ">首页</span>
				</a>
				</li>
				<li><a href="#"><span class="headtitle">分类</span>
				</a>
				</li>
				<li><a href="post.html"><span class="headtitle">发布</span>
				</a>
				</li>
				<li><a href="#" data-toggle="modal" data-target="#login"><span
						class="headtitle">用户中心</span>
				</a>
				</li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</nav>

	<!--下面添加内容-->

	<div class=" container universal_background"
		style="width:980px;min-height:800px;"></div>




	<footer class=" container" style="width:980px;">
		<p>
			&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a
				href="#">NJust软件项目管理</a>
		</p>
	</footer>

	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form class="form-signin ">
			<div class="modal-dialog" style="width:400px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" backdrop="false">&times;</button>
						<h4 class="modal-title" id="myModalLabel">登入</h4>
					</div>
					<div class="modal-body ">

						<h2 class="form-signin-heading">请登入</h2>

						<input type="text" class="form-control" placeholder="用户名"
							autofocus=""> <br /> <input type="password"
							class="form-control" placeholder="密码"> <label
							class="checkbox"> <input type="checkbox"
							value="remember-me">记住我 </label> <a data-toggle="modal"
							data-target="#register">没有账号？注册</a>
					</div>
					<div class="modal-footer">
						<button class="btn btn-lg btn-primary " type="submit">登入</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</form>
	</div>
	<!-- /.modal -->
	<div class="modal fade" id="register" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form class="form-signin ">
			<div class="modal-dialog" style="width:400px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" backdrop="false">&times;</button>
						<h4 class="modal-title" id="myModalLabel">注册</h4>
					</div>
					<div class="modal-body ">

						<h2 class="form-signin-heading">注册</h2>

						<input type="text" class="form-control" placeholder="用户名"
							autofocus=""> <br /> <input type="password"
							class="form-control" placeholder="密码"> <br /> <input
							type="password" class="form-control" placeholder="确认密码">



					</div>
					<div class="modal-footer">
						<button class="btn btn-lg btn-primary " type="submit">注册</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</form>
	</div>
	<!-- /.modal -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.8.3.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>

</body>
</html>