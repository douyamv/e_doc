
<%@page import="njust.Sessionfactory.HibernateSessionFactory"%>
<%@page import="org.hibernate.criterion.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="njust.PO.Topic"%>


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>Bootstrap 101 Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

 
		<link href="css/index.css" rel="stylesheet">
		<link href="css/font-awesome.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

<style>
.universal_background {
	background: rgba(255, 255, 255, 0.5);
}
 #editor {overflow:scroll; max-height:300px}
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
				<li><a href="home.jsp"><span class="headtitle ">首页</span>
				</a>
				</li>
				<li><a href="detail.jsp"><span class="headtitle">分类</span>
				</a>
				</li>
				<li><a href="post.jsp"><span class="headtitle">发布</span>
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
		style="width:980px;min-height:800px;">
		
		
	<div class="hero-unit">
  
	
	
	
	<div id="alerts"></div>
   <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
      <div class="btn-group">
        <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Font"><i class="icon-font"></i><b class="caret"></b></a>
          <ul class="dropdown-menu">
          <li><a data-edit="fontName Serif" style="font-family:&#39;Serif&#39;">Serif</a></li><li><a data-edit="fontName Sans" style="font-family:&#39;Sans&#39;">Sans</a></li><li><a data-edit="fontName Arial" style="font-family:&#39;Arial&#39;">Arial</a></li><li><a data-edit="fontName Arial Black" style="font-family:&#39;Arial Black&#39;">Arial Black</a></li><li><a data-edit="fontName Courier" style="font-family:&#39;Courier&#39;">Courier</a></li><li><a data-edit="fontName Courier New" style="font-family:&#39;Courier New&#39;">Courier New</a></li><li><a data-edit="fontName Comic Sans MS" style="font-family:&#39;Comic Sans MS&#39;">Comic Sans MS</a></li><li><a data-edit="fontName Helvetica" style="font-family:&#39;Helvetica&#39;">Helvetica</a></li><li><a data-edit="fontName Impact" style="font-family:&#39;Impact&#39;">Impact</a></li><li><a data-edit="fontName Lucida Grande" style="font-family:&#39;Lucida Grande&#39;">Lucida Grande</a></li><li><a data-edit="fontName Lucida Sans" style="font-family:&#39;Lucida Sans&#39;">Lucida Sans</a></li><li><a data-edit="fontName Tahoma" style="font-family:&#39;Tahoma&#39;">Tahoma</a></li><li><a data-edit="fontName Times" style="font-family:&#39;Times&#39;">Times</a></li><li><a data-edit="fontName Times New Roman" style="font-family:&#39;Times New Roman&#39;">Times New Roman</a></li><li><a data-edit="fontName Verdana" style="font-family:&#39;Verdana&#39;">Verdana</a></li></ul>
        </div>
      <div class="btn-group">
        <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
          <ul class="dropdown-menu">
          <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
          <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
          <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
          </ul>
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="bold" title="" data-original-title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
        <a class="btn" data-edit="italic" title="" data-original-title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
        <a class="btn" data-edit="strikethrough" title="" data-original-title="Strikethrough"><i class="icon-strikethrough"></i></a>
        <a class="btn" data-edit="underline" title="" data-original-title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="insertunorderedlist" title="" data-original-title="Bullet list"><i class="icon-list-ul"></i></a>
        <a class="btn" data-edit="insertorderedlist" title="" data-original-title="Number list"><i class="icon-list-ol"></i></a>
        <a class="btn" data-edit="outdent" title="" data-original-title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
        <a class="btn" data-edit="indent" title="" data-original-title="Indent (Tab)"><i class="icon-indent-right"></i></a>
      </div>
      <div class="btn-group">
        <a class="btn btn-info" data-edit="justifyleft" title="" data-original-title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
        <a class="btn" data-edit="justifycenter" title="" data-original-title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
        <a class="btn" data-edit="justifyright" title="" data-original-title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
        <a class="btn" data-edit="justifyfull" title="" data-original-title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
      </div>
      <div class="btn-group">
		  <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Hyperlink"><i class="icon-link"></i></a>
		    <div class="dropdown-menu input-append">
			    <input class="span2" placeholder="URL" type="text" data-edit="createLink">
			    <button class="btn" type="button">Add</button>
        </div>
        <a class="btn" data-edit="unlink" title="" data-original-title="Remove Hyperlink"><i class="icon-cut"></i></a>

      </div>
      
      <div class="btn-group">
        <a class="btn" title="" id="pictureBtn" data-original-title="Insert picture (or just drag &amp; drop)"><i class="icon-picture"></i></a>
        <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" style="opacity: 0; position: absolute; top: 0px; left: 0px; width: 41px; height: 30px;">
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="undo" title="" data-original-title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
        <a class="btn" data-edit="redo" title="" data-original-title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
      </div>
      <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="" style="display: none;">
    </div>

    <div id="editor" contenteditable="true">
      Go ahead…
      
    </div>
  </div>
  </div>
		
		
	</div>




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

	<script src="js/jquery.min.js"></script>
<script src="js/jquery.hotkeys.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-wysiwyg.js"></script>
<script>
  $(function(){
    function initToolbarBootstrapBindings() {
      var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 
            'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
            'Times New Roman', 'Verdana'],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
      $.each(fonts, function (idx, fontName) {
          fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
      });
      $('a[title]').tooltip({container:'body'});
    	$('.dropdown-menu input').click(function() {return false;})
		    .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
        .keydown('esc', function () {this.value='';$(this).change();});

      $('[data-role=magic-overlay]').each(function () { 
        var overlay = $(this), target = $(overlay.data('target')); 
        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
      });
      $('#voiceBtn').hide();
      // if ("onwebkitspeechchange"  in document.createElement("input")) {
      //   var editorOffset = $('#editor').offset();
      //   $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});
      // } else {
      //   $('#voiceBtn').hide();
      // }
    };
    initToolbarBootstrapBindings();  
    $('#editor').wysiwyg();
    window.prettyPrint && prettyPrint();
  });
</script>


</body>
</html>