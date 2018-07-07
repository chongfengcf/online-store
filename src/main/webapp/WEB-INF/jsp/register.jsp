<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>Register</title>
	<link href="${pageContext.request.contextPath}/front/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<!-- jQuery (necessary JavaScript plugins) -->
	<script type='text/javascript' src="${pageContext.request.contextPath}/front/js/jquery-1.11.1.min.js"></script>
	<!-- Custom Theme files -->
	<link href="${pageContext.request.contextPath}/front/css/style.css" rel='stylesheet' type='text/css' />
	<!-- Custom Theme files -->
	<!--//theme-style-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- start menu -->
	<link href="${pageContext.request.contextPath}/front/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/megamenu.js"></script>
	<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
	<script src="${pageContext.request.contextPath}/front/js/menu_jquery.js"></script>
</head>
<body>
<!-- header_top -->
<div class="top_bg">
	<div class="container">
		<div class="header_top">
			<div class="top_right">
				<ul>
					<li><a href="#">请登录</a></li>|
					<li><a href="#">购物车</a></li>|
					<li><a href="#">联系我们</a></li>
				</ul>
			</div>
			<div class="top_left">
				<h2>欢迎光临BUYBUYBUY商城</h2>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- header -->
<div class="header_bg">
	<div class="container">
		<div class="header">
			<div class="head-t">
				<div class="logo">
					<a href="index.html"><img src="../../front/images/logo.png" class="img-responsive" alt=""/> </a>
				</div>
				<!-- start header_right -->
				<div class="header_right">
					<div class="rgt-bottom">
						<div class="clearfix"> </div>
					</div>
					<div class="search">
						<form method="post" action="/front/queryByName">
							<input type="text" name="article_name" value="" placeholder="请输入你想要查找的商品">
							<input type="submit" value="">
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- start header menu -->
			<ul class="megamenu skyblue">
				<li class="active grid"><a class="color1" href="/front/index">主页</a></li>
				<li class="grid"><a class="color2" href="#">手机</a></li>
				<li><a class="color4" href="#">衣服</a></li>
				<li><a class="color5" href="#">书籍</a></li>
				<li><a class="color6" href="#">零食</a></li>
				<li><a class="color7" href="#">冲锋枪</a></li>
				<li><a class="color8" href="#">手枪</a></li>
				<li><a class="color9" href="#">手榴弹</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- content -->
<div class="container">
	<div class="main">
		<!-- start registration -->
		<div class="registration">
			<div class="registration_left">
				<h2>还没有账号? <span> 创建一个吧 </span></h2>
				<div class="registration_form">
					<!-- Form -->
					<form  action="/front/add" method="post">
						<div>
							<label>
								<input placeholder="用户名" name="loginName" type="text" required autofocus>
							</label>
						</div>
						<div>
							<label>
								<input placeholder="密码" type="password" name="passWord" required autofocus>
							</label>
						</div>
						<div>
							<label>
								<input placeholder=邮箱地址 type="email" name="email" required>
							</label>
						</div>
						<div class="sky-form">
							<div class="sky_form1">
								<ul>
									<li><label class="radio left"><input type="radio" name="sex"  value="1" vachecked=""><i></i>男</label></li>
									<li><label class="radio"><input type="radio" value="0" name="sex"><i></i>女</label></li>
									<div class="clearfix"></div>
								</ul>
							</div>
						</div>
						<div>
							<label>
								<input placeholder="姓名" name="name" type="text" required>
							</label>
						</div>
						<div>
							<label>
								<input placeholder="地址" name="address" type="text" required>
							</label>
						</div>
						<div>
							<label>
								<input placeholder="电话" name="phone" type="text" required>
							</label>
						</div>
						<input type="hidden" value="0" name="role"/>
						<div>
							<input type="submit" value="创建账号" >
						</div>
					</form>
					<!-- /Form -->
				</div>
			</div>
			<div class="registration_left">
				<h2>登录</h2>
				<div class="registration_form">
					<!-- Form -->
					<form action="/front/login" method="post">
						<div>
							<label>
								${msg }
							</label>
						</div>
						<div>
							<label>
								<input placeholder="用户名:" name="username" type="text" required>
							</label>
						</div>
						<div>
							<label>
								<input placeholder="密码:" name="password" type="password" required>
							</label>
						</div>
						<div>
							<input type="submit" value="登录">
						</div>
					</form>
					<!-- /Form -->
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- end registration -->
	</div>
</div>
<div class="foot-top">
	<div class="container">
		<div class="col-md-6 s-c">
			<div class="clearfix"> </div>
		</div>
		<div class="col-md-6 s-c">
			<li><a href="#"><i class="be"> </i></a></li>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 cust">
			<h4>选购与了解</h4>
			<li><a href="#">帮助中心</a></li>
			<li><a href="#">FAQ</a></li>
			<li><a href="buy.html">如何购买</a></li>
			<li><a href="#">快递</a></li>
		</div>
		<div class="col-md-2 abt">
			<h4>关于我们</h4>
			<li><a href="#">博客园</a></li>
			<li><a href="#">地址</a></li>
			<li><a href="#">联系方式</a></li>
			<li><a href="contact.html">电子邮件</a></li>
		</div>
		<div class="col-md-2 myac">
			<h4>我的账户</h4>
			<li><a href="register.html">注册</a></li>
			<li><a href="#">购物</a></li>
			<li><a href="#">账单历史</a></li>
			<li><a href="buy.html">付款方式</a></li>
		</div>
		<div class="col-md-5 our-st">
			<div class="our-left">
				<h4>关于我们</h4>
			</div>
			<div class="clearfix"> </div>
			<li><i class="add"> </i>东莞理工学院城市学院</li>
			<li><i class="phone"> </i>025-2839341</li>
			<li><a href="mailto:info@example.com"><i class="mail"> </i>1225353121@qq.com</a></li>

		</div>
		<div class="clearfix"> </div>
		<p>Copyright &copy; 2015.Company name All rights reserved.</p>
	</div>
</div>
</body>
</html>