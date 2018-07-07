<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
<title>BuyBuyBuy商城</title>
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
<link href="../front/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="${pageContext.request.contextPath}/front/text/javascript" src="../../front/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="${pageContext.request.contextPath}/front/js/menu_jquery.js"></script>
<script src="${pageContext.request.contextPath}/front/js/simpleCart.min.js"> </script>
	<script src="${pageContext.request.contextPath}/front/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
        $().ready(function () {
            jugeLogin();
        });
        function jugeLogin() {
            var s = <%=session.getAttribute("username") %>;
            if(s!=null)
            {
                document.getElementById('login_li').style.display = "none";
                document.getElementById('login_success').style.display = "inline";
                document.getElementById('login_success').innerText = "欢迎，<%=session.getAttribute("username")%>";
            }else {
                return false;
            }
        }

        function cartJugeLogin() {
            var s = <%=session.getAttribute("username") %>;
            if(s!==null)
            {
                window.location.href = "${pageContext.request.contextPath}/front/queryCartByUserId?id=<%=session.getAttribute("userId")%>"
            }else {
                alert("请登录");
            }

        }

        function addCarShop() {
            var s = <%=session.getAttribute("username") %>;
            if(s!==null)
            {
                return true;
            }else {
                alert("请登录");
                return false;
            }
        }

	</script>
</head>
<body>
<!-- header_top -->
<div class="top_bg">
	<div class="container">
		<div class="header_top">
			<div class="top_right">
				<ul>
					<li id="login_li"><a href="/front/register">请登录</a></li>
					<li id="login_success" style="display: none"></li>|
					<li><a href="#" onclick="cartJugeLogin()">购物车</a></li>|
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
		    <form action="/front/queryByName">
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
				<li><a class="color4" href="${pageContext.request.contextPath}/front/findByType?type=水果">水果</a></li>
				<li><a class="color5" href="${pageContext.request.contextPath}/front/findByType?type=手表">手表</a></li>
				<li><a class="color6" href="${pageContext.request.contextPath}/front/findByType?type=手机">手机</a></li>
				<li><a class="color7" href="${pageContext.request.contextPath}/front/findByType?type=零食">零食</a></li>
				<li><a class="color8" href="${pageContext.request.contextPath}/front/findByType?type=杂物">杂物</a></li>
		     </ul> 
	</div>
</div>
</div>
<!-- content -->
<div class="container">
<div class="women_main">
	<!-- start sidebar -->
	<div class="col-md-3 s-d">
	  <div class="w_sidebar">
		<section  class="sky-form">
				<h4>所有类型</h4>
				<div class="w_nav1">
                    <ul>
						<li><a style="font-size:15px;margin-top:10px" href="${pageContext.request.contextPath}/front/findByType?type=水果">水果</a></li>
						<li><a style="font-size:15px;margin-top:10px" href="${pageContext.request.contextPath}/front/findByType?type=手表">手表</a></li>
						<li><a style="font-size:15px;margin-top:10px" href="${pageContext.request.contextPath}/front/findByType?type=手机">手机</a></li>
						<li><a style="font-size:15px;margin-top:10px" href="${pageContext.request.contextPath}/front/findByType?type=零食">零食</a></li>
						<li><a style="font-size:15px;margin-top:10px" href="${pageContext.request.contextPath}/front/findByType?type=杂物">杂物</a></li>
                    </ul>	
                </div>
		</section>
	</div>
   </div>
	<!-- start content -->
	<div class="col-md-9 w_content">
		<div class="women">
			<a href="#"><h4>所有商品</h4></a>
		     <div class="clearfix"></div>	
		</div>
		<!-- grids_of_4 -->
		
		<div class="grids_of_4" style="width: 890px" >
			<h2>${msg }</h2>
            <div></div>
			<c:forEach items="${list }" var="c">
            <div class="grid1_of_4" style="width: 180px;margin-top: 15px">
				<div class="content_box"><a href="details.html">
			   	   	 <img src="${pageContext.request.contextPath}/upload/${c.image}" class="img-responsive" alt=""/>
				   	  </a>
				    <h4><a href="/front/findByID?id=${c.getId()}">${c.getArticleName()}</a></h4>
				     <p>${c.getTitle()}</p>
					 <div class="grid_1 simpleCart_shelfItem">

					 <div class="item_add"><span class="item_price"><h6>$${c.getPrice()}</h6></span></div>
						 <div class="item_add"><span class="item_price"><a href="${pageContext.request.contextPath}/front/addCarShop?id=<%=session.getAttribute("userId")%>&&articleId=${c.id}" onclick="return addCarShop()">加入购物车</a></span></div>
					 </div>
			   	</div>
			</div>
			</c:forEach>
		</div>
		<!-- end grids_of_4 -->

	</div>
	<div class="clearfix"></div>
	
	<!-- end content -->
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