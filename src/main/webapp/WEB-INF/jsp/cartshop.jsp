<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/front/js/megamenu.js"></script>
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

        function payJugeLogin() {
            var s = <%=session.getAttribute("username") %>;
            if(s!==null)
			{

			}else {
                alert("请登录");
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
                <li class="active grid"><a class="color1" href="#">主页</a></li>
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
<div class="container">
	<div class="check">	 
			 <div class="col-md-3 cart-total">
			 <a class="continue" href="#">账单</a>
			 <div class="price-details">
				 <h3>购物清单</h3>
				 <span>商品总价</span>
				 <span class="total1">6200.00</span>
				 <span>运费</span>
				 <span class="total1">150.00</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>总价</h4></li>	
			   <li class="last_price"><span>6350.00</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 
			 <div class="clearfix"></div>
			 <a class="order" href="#" onclick="payJugeLogin()">确定支付</a>
			</div>
		 <div class="col-md-9 cart-items">
			 <h1>我的购物车</h1>
			<c:forEach items="${list}" var="list">
			 <div class="cart-header">
				 <div class="close1"><a href="/front/deleteCarShop?id=${list.id}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> </div>
				 <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							 <img src="${pageContext.request.contextPath}/${list.article.image}" class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="#">${list.article.articleName}</a><span>${list.article.title}</span></h3>
						<ul class="qty">
							<li><p>${list.article.typeName}</p></li>
							<li><p>${list.articleNum}</p></li>
						</ul>
						
							 <div class="delivery">
							 <p>价格 : $${list.article.price}</p>
							 <div class="clearfix"></div>
				        </div>	
					   </div>
					   <div class="clearfix"></div>
											
				  </div>
			 </div>
			</c:forEach>
		 </div>
		 
		
			<div class="clearfix"> </div>
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