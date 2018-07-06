﻿﻿<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/sys/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/sys/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys//assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys//assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys//assets/css/app.css">
    <script src="${pageContext.request.contextPath}/sys//assets/js/jquery.min.js"></script>

</head>

<body data-type="login">
<script src="${pageContext.request.contextPath}/sys//assets/js/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 风格切换 -->
    <div class="tpl-skiner">
        <div class="tpl-skiner-toggle am-icon-cog">
        </div>
        <div class="tpl-skiner-content">
            <div class="tpl-skiner-content-title">
                选择主题
            </div>
            <div class="tpl-skiner-content-bar">
                <span class="skiner-color skiner-white" data-color="theme-white"></span>
                <span class="skiner-color skiner-black" data-color="theme-black"></span>
            </div>
        </div>
    </div>
    <div class="tpl-login">
        <div class="tpl-login-content">
            <div class="tpl-login-logo">

            </div>



            <form class="am-form tpl-form-line-form">
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" id="username" placeholder="请输入账号">

                </div>

                <div class="am-form-group">
                    <input type="password" class="tpl-form-input" id="password" placeholder="请输入密码">

                </div>
                <div class="am-form-group tpl-login-remember-me">
                    <input id="remember-me" type="checkbox">
                    <label for="remember-me">

                        记住密码
                    </label>

                </div>






                <div class="am-form-group">

                    <button type="button" onclick="JsonLogin();" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>

                </div>
            </form>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/sys//assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/sys//assets/js/app.js"></script>
<script>
function JsonLogin() {
    var loginName = $("#username").val();
    var passWord = $("#password").val();
    $.ajax({
        url : "${pageContext.request.contextPath}/sys/login",
        type : "post",
        data : JSON.stringify({loginName:loginName, passWord:passWord, role:1}),
        contentType : "application/json;charset=UTF-8",
        success : function (data) {
            console.log(data);
            if(data=="success") {
                window.location.href='${pageContext.request.contextPath}/sys/index';
            } else {
                alert("用户名密码错误");
            }
        }
    });
}
</script>
</body>

</html>
