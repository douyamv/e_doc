
<%@page import="njust.Sessionfactory.HibernateSessionFactory"%>
<%@page import="org.hibernate.criterion.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="njust.PO.Topic"%>


<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>happy软坊</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="styles.css">

</head>

<body background="src/bg.jpg">
	<div id=title1> 
		<br>帖子列表 <br>
	</div>
	<%
		HibernateSessionFactory.getSession().clear();
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session2 = sessionFactory.openSession();
		Query  query = session2.createQuery("from Topic");
		Query  query2 = session2.createQuery("from Topic");
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
		<a href="#" target="_blank"><img src="/re/a.jpg" class="article" /> </a>
		<h3>
			<span class="TopicName">
			<%
			String id=ss.get(i).getTopicId();
			%>
			<%=id %>
			.<a href="/e_doc/detail?TopicId=<%=id%>" target="_blank"><%=ss.get(i).getTopicName()%></a></span>
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
			<a href="/article/detail/47" target="_blank" class="read-more">继续阅读&gt;&gt;</a>
		</p>
		</div>
	</ul>
	
		<%} %>
	</div>
	<br>
	<br>
	<ul class="rightUpDiv">
	<h2 class="update">更新列表</h2>
	
	<%
	for(int i=0;i<ss2.size();i++){ %>
	<li class="latest">
						<span class="icon"><img src="a.jpg" /></span>
						<div class="txt-wrapper">
							<h3 class="name-sftw"><a href="/software/detail/134" target="_blank">Unlocker</a></h3>
							<p class="info">更新时间：<span class="update-time">2013/09/25</span></p>
						</div>
					</li>
					<li class="fiv clr">
						<span class="icon"><img src="/resource/uploads/3/20130829154223.jpg" /></span>
						<div class="txt-wrapper">
							<h3 class="name-sftw"><a href="/software/detail/107" target="_blank">SAO-UTILS</a></h3>
							<p class="info">更新时间：<span class="update-time">2013/09/21</span></p>
						</div>
					</li>
					<%} %>
				</ul>
		
	<ul class="rightDownDiv">
					<h2 class="hot">热门软件</h2>
					
					<li class="fou clr">
						<span class="icon"><img src="/resource/uploads/11/20130817135631.jpg" alt="Everything" title="Everything" /></span>
						<div class="txt-wrapper">
							<h3 class="name-sftw"><a href="http://app.hustonline.net/software/detail/94" target="_blank" title="Everything">Everything</a></h3>
							<p class="info"><span class="dl_count">4137</span>次下载</p>
						</div>
					</li>
					<li class="fiv clr">
						<span class="icon"><img src="/resource/uploads/3/20130829154223.jpg" alt="SAO-UTILS" title="SAO-UTILS" /></span>
						<div class="txt-wrapper">
							<h3 class="name-sftw"><a href="http://app.hustonline.net/software/detail/107" target="_blank" title="SAO-UTILS">SAO-UTILS</a></h3>
							<p class="info"><span class="dl_count">11968</span>次下载</p>
						</div>
					</li>
				</ul>
				
	
	
</body>
</html>
