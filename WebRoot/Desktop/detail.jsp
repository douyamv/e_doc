
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
      <meta charset="utf-8">
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
 background: rgba(255, 255, 255,0.5);
   }
   .headtitle{font-weight:bold;
   font-size:18px;
   color:#e2e2e2;
  }
  .topicInfo{
  		 border:2px solid red;
  }
	</style>
  </head>
  <body style="background:#563d7c;background: url('seamless_polygon.jpg') repeat fixed center top #DFDFDF;
}">
  <nav class="navbar navbar-default " role="navigation" style="background:#563d7c">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header col-md-offset-2">
     <a class="navbar-brand" href="#"> <span class="glyphicon glyphicon-leaf" >
      </span> <span style="color:#E6DBC4 ;font-size:18px;" >Njust</span><span style="color:#e2e2e2;font-size:18px;">资料平台</span></a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse col-md-offset-5" id="bs-example-navbar-collapse-1">   
    <ul class="nav navbar-nav " style="font-weight:bold;font-size:18px;color:#0">
	<form class="navbar-form navbar-left form-inline" role="search">
      <div class="form-group form-inline">
        <input type="text" class=" input-sm" style="background:#e2e2e2;border:0px" placeholder="搜索">
		  <button type="submit" class="btn btn-link"><span class="glyphicon glyphicon-search"></span></button>
      </div>
    
    </form>
      <li><a href="home.jsp" ><span   class="headtitle ">首页</span></a></li>
	  <li><a href="detail.jsp"   ><span   class="headtitle">分类</span></a></li>
	  <li><a href="post.jsp"   ><span   class="headtitle">发布</span></a></li>
      <li><a href="#"   data-toggle="modal" data-target="#login"><span   class="headtitle">用户中心</span></a>
      </li>
    </ul>

  </div><!-- /.navbar-collapse -->
  </nav>
 
 
 
  <div class=" container " style="width:980px;">
   <div class="row  " >
  
  <div class="col-md-6 " ><div class="panel panel-default universal_background" style="width:900px;margin=15px">  
  <div class="panel-heading">列表</div>
  <div class="panel-body">
    <p>
    <%
		HibernateSessionFactory.getSession().clear();
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session2 = sessionFactory.openSession();
		Query  query3 = session2.createQuery("from Topic");
		//order by o.orderid desc
		Query  query2 = session2.createQuery("from Topic");
		
		Query  query = session2.createQuery("from Topic order by publishTime desc");
		Object Object1=query.list();
		Object Object2=query2.list();
		ArrayList<Topic> ss=new ArrayList<Topic>();
		ArrayList<Topic> ss2=new ArrayList<Topic>();
		ss=((ArrayList<Topic>)Object1);
		ss2=((ArrayList<Topic>)Object2);
		System.out.println(ss.get(0).getTopicId());
		session2.beginTransaction();
		//session2.getTransaction().commit();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
	
	%>
	<div class="leftDiv">
	<%for (int i=0;i<ss.size();i++){ %>

	<br>
	<br>
	<ul class="topic">
		<div class="topicInfo">
		
		<h3>
			<span class="TopicName">
			<%
			String id=ss.get(i).getTopicId();
			%>
			<%=id %>
			.<a href="info.jsp?TopicId=<%=id%>" target="_blank"><%=ss.get(i).getTopicName()%></a></span>
		</h3>
		<p>
		上传日期：<span class="PublishTime">
		<%
			Date d=ss.get(i).getPublishTime();
			out.print(1900+d.getYear()+"-"+d.getMonth()+"-"+d.getDate()+" "); 
			out.print(d.getHours()+":"+d.getMinutes()); 
			
		%>
		</span> 下载次数：<span class="DownloadNum"><%=ss.get(i).getDownloadNum()%></span>
		</p>
		<p>下载链接：<span class="Link"><%=ss.get(i).getLink()%></span> </p>
		
		<p>
			<a href="info.jsp?TopicId=<%=id%>" target="_blank" class="read-more">继续阅读&gt;&gt;</a>
		</p>
		</div>
	</ul>
	
		<%} %>
	</div>
	
	
	
	
    </p>
  </div></div></div>
</div>


</div>



 <footer  class="container"style="width:980px;">
        <p >&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">NJust软件项目管理</a></p>
 </footer>

<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <form class="form-signin "> 
  <div class="modal-dialog" style="width:400px">
    <div class="modal-content" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" backdrop="false">&times;</button>
        <h4 class="modal-title" id="myModalLabel">登入</h4>
      </div>
      <div class="modal-body "  >
       
        <h2 class="form-signin-heading">请登入</h2>
	
        <input type="text" class="form-control" placeholder="用户名" autofocus="">
<br/>
        <input type="password" class="form-control" placeholder="密码">
	
        <label class="checkbox">
          <input type="checkbox" value="remember-me">记住我
        </label>
     
      <a data-toggle="modal" data-target="#register">没有账号？注册</a>
      </div>
      <div class="modal-footer">
        <button class="btn btn-lg btn-primary " type="submit">登入</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
   </form></div>
   <!-- /.modal -->
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <form class="form-signin "> 
  <div class="modal-dialog" style="width:400px">
    <div class="modal-content" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" backdrop="false">&times;</button>
        <h4 class="modal-title" id="myModalLabel">注册</h4>
      </div>
      <div class="modal-body "  >
       
        <h2 class="form-signin-heading">注册</h2>
	
        <input type="text" class="form-control" placeholder="用户名" autofocus="">
<br/>
        <input type="password" class="form-control" placeholder="密码">
	<br/>
        <input type="password" class="form-control" placeholder="确认密码">

     
   
      </div>
      <div class="modal-footer">
        <button class="btn btn-lg btn-primary " type="submit">注册</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
   </form></div>
   <!-- /.modal -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.8.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>