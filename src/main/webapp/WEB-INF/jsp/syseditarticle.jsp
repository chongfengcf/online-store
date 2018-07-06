﻿<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
    <script src="${pageContext.request.contextPath}/sys/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/app.css">
    <script src="${pageContext.request.contextPath}/sys/assets/js/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/webuploader/webuploader.css">
    <script src="${pageContext.request.contextPath}/sys/webuploader/webuploader.html5only.min.js"></script>

</head>

<body data-type="widgets">
<script src="${pageContext.request.contextPath}/sys/assets/js/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 头部 -->
    <header>
        <!-- logo -->
        <div class="am-fl tpl-header-logo">
            <a href="javascript:;"><img src="${pageContext.request.contextPath}/sys/assets/img/logo.png" alt=""></a>
        </div>
        <!-- 右侧内容 -->
        <div class="tpl-header-fluid">
            <!-- 侧边切换 -->
            <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span>

                </span>
            </div>
            <!-- 搜索 -->
            <div class="am-fl tpl-header-search">
                <form class="tpl-header-search-form" action="javascript:;">
                    <button class="tpl-header-search-btn am-icon-search"></button>
                    <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                </form>
            </div>
            <!-- 其它功能-->
            <div class="am-fr tpl-header-navbar">
                <ul>
                    <!-- 欢迎语 -->
                    <li class="am-text-sm tpl-header-navbar-welcome">
                        <a href="javascript:;">欢迎你, <span>Amaze UI</span> </a>
                    </li>

                    <!-- 新邮件 -->
                    <li class="am-dropdown tpl-dropdown" data-am-dropdown>
                        <a href="javascript:;" class="am-dropdown-toggle tpl-dropdown-toggle" data-am-dropdown-toggle>
                            <i class="am-icon-envelope"></i>
                            <span class="am-badge am-badge-success am-round item-feed-badge">4</span>
                        </a>
                        <!-- 弹出列表 -->
                        <ul class="am-dropdown-content tpl-dropdown-content">
                            <li class="tpl-dropdown-menu-messages">
                                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                    <div class="menu-messages-ico">
                                        <img src="${pageContext.request.contextPath}/sys/assets/img/user04.png" alt="">
                                    </div>
                                    <div class="menu-messages-time">
                                        3小时前
                                    </div>
                                    <div class="menu-messages-content">
                                        <div class="menu-messages-content-title">
                                            <i class="am-icon-circle-o am-text-success"></i>
                                            <span>沈鑫</span>
                                        </div>
                                        <div class="am-text-truncate"> 我觉得这个后台管理非常厉害，运用到了很多牛逼的技术。</div>
                                        <div class="menu-messages-content-time">2018-07-06 下午 14:31</div>
                                    </div>
                                </a>
                            </li>

                            <li class="tpl-dropdown-menu-messages">
                                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                    <div class="menu-messages-ico">
                                        <img src="${pageContext.request.contextPath}/sys/assets/img/user02.png" alt="">
                                    </div>
                                    <div class="menu-messages-time">
                                        5天前
                                    </div>
                                    <div class="menu-messages-content">
                                        <div class="menu-messages-content-title">
                                            <i class="am-icon-circle-o am-text-warning"></i>
                                            <span>林凉席</span>
                                        </div>
                                        <div class="am-text-truncate"> 我个人非常喜欢吃椰子鸡，因为非常的好吃。</div>
                                        <div class="menu-messages-content-time">2018-07-06 上午 09:23</div>
                                    </div>
                                </a>
                            </li>
                            <li class="tpl-dropdown-menu-messages">
                                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                    <i class="am-icon-circle-o"></i> 进入列表…
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- 新提示 -->
                    <li class="am-dropdown" data-am-dropdown>
                        <a href="javascript:;" class="am-dropdown-toggle" data-am-dropdown-toggle>
                            <i class="am-icon-bell"></i>
                            <span class="am-badge am-badge-warning am-round item-feed-badge">5</span>
                        </a>

                        <!-- 弹出列表 -->
                        <ul class="am-dropdown-content tpl-dropdown-content">
                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <div class="tpl-dropdown-menu-notifications-title">
                                        <i class="am-icon-line-chart"></i>
                                        <span> 有6笔新的销售订单</span>
                                    </div>
                                    <div class="tpl-dropdown-menu-notifications-time">
                                        12分钟前
                                    </div>
                                </a>
                            </li>
                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <div class="tpl-dropdown-menu-notifications-title">
                                        <i class="am-icon-star"></i>
                                        <span> 有3个来自系统的消息</span>
                                    </div>
                                    <div class="tpl-dropdown-menu-notifications-time">
                                        30分钟前
                                    </div>
                                </a>
                            </li>
                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <div class="tpl-dropdown-menu-notifications-title">
                                        <i class="am-icon-folder-o"></i>
                                        <span> 祝你生日快乐</span>
                                    </div>
                                    <div class="tpl-dropdown-menu-notifications-time">
                                        1天前
                                    </div>
                                </a>
                            </li>


                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <i class="am-icon-bell"></i> 进入列表…
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- 退出 -->
                    <li class="am-text-sm">
                        <a href="javascript:;">
                            <span class="am-icon-sign-out"></span> 退出
                        </a>
                    </li>
                </ul>
            </div>
        </div>

    </header>
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
    <!-- 侧边导航栏 -->
    <div class="left-sidebar">
        <!-- 用户信息 -->
        <div class="tpl-sidebar-user-panel">
            <div class="tpl-user-panel-slide-toggleable">
                <div class="tpl-user-panel-profile-picture">
                    <img src="${pageContext.request.contextPath}/sys/assets/img/user04.png" alt="">
                </div>
                <span class="user-panel-logged-in-text">
              <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
              禁言小张
          </span>
                <a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span> 账号设置</a>
            </div>
        </div>

        <ul class="sidebar-nav">
            <li class="sidebar-nav-link">
                <a href="${pageContext.request.contextPath}/sys/index">
                    <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                </a>
            </li>
            <li class="sidebar-nav-heading">Article <span class="sidebar-nav-heading-info"> 商品</span></li>

            <li class="sidebar-nav-link">
                <a href="${pageContext.request.contextPath}/sys/article" class="active">
                    <i class="am-icon-bar-chart sidebar-nav-link-logo"></i> 商品管理

                </a>
            </li>

            <li class="sidebar-nav-heading">User<span class="sidebar-nav-heading-info"> 用户</span></li>


            <li class="sidebar-nav-link">
                <a href="${pageContext.request.contextPath}/sys/user">
                    <i class="am-icon-clone sidebar-nav-link-logo"></i> 用户管理
                    <span class="am-badge am-badge-secondary sidebar-nav-link-logo-ico am-round am-fr am-margin-right-sm">6</span>
                </a>
            </li>
        </ul>
    </div>

    <!-- 内容区域 -->
    <div class="tpl-content-wrapper">

        <div class="container-fluid am-cf">
            <div class="row">
                <div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                    <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 表单 <small>OLSRTORE</small></div>
                    <p class="page-header-description">在这里输入商品信息。</p>
                </div>
                <div class="am-u-lg-3 tpl-index-settings-button">
                    <a href="${pageContext.request.contextPath}/sys/art/del/${item.id}" class="am-btn am-btn-danger am-btn-xl"><span class="am-icon-warning"></span>删除商品</a>
                </div>
            </div>

        </div>

        <div class="row-content am-cf">


            <div class="row">

                <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                    <div class="widget am-cf">
                        <div class="widget-head am-cf">
                            <div class="widget-title am-fl">商品信息</div>
                            <div class="widget-function am-fr">
                                <a href="javascript:;" class="am-icon-cog"></a>
                            </div>
                        </div>
                        <div class="widget-body am-fr">

                            <form class="am-form tpl-form-line-form">
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">封面图 <span class="tpl-form-line-small-title">Images</span></label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                            <img id="dbpic" src="${pageContext.request.contextPath}/upload/${item.image}" class="am-img-responsive am-img-thumbnail">
                                            <div id="uploader-demo">
                                                <!--用来存放item-->
                                                <div id="fileList" class="uploader-list"></div>
                                                <div id="filePicker">选择图片</div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </form>

                            <form class="am-form tpl-form-line-form" action="${pageContext.request.contextPath}/sys/art/update" method="post">
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">商品名称 <span class="tpl-form-line-small-title">articleName</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="articleName" class="tpl-form-input" placeholder="请输入文字" value="${item.articleName}">
                                        <small>请填写标题文字10-20字左右。</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">标题 <span class="tpl-form-line-small-title">title</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="title" class="tpl-form-input" placeholder="请输入文字" value="${item.title}">
                                        <small>请填写标题文字10-20字左右。</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">供应商 <span class="tpl-form-line-small-title">supplier</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="supplier" class="tpl-form-input" placeholder="请输入文字" value="${item.supplier}">
                                        <small>请填写标题文字10-20字左右。</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">价格 <span class="tpl-form-line-small-title">price</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="number" name="price" step="0.01" class="tpl-form-input" value="${item.price}">
                                        <small>输入价格</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">原价 <span class="tpl-form-line-small-title">prePrice</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="number" name="prePrice" step="0.01" class="tpl-form-input" value="${item.prePrice}">
                                        <small>输入价格</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">产地 <span class="tpl-form-line-small-title">locality</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="locality" class="tpl-form-input" placeholder="请输入文字" value="${item.locality}">
                                        <small>请填写标题文字10-20字左右。</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">发布时间 <span class="tpl-form-line-small-title">Time</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="putawayDate" class="am-form-field tpl-form-no-bg" placeholder="发布时间" data-am-datepicker="" readonly="" value="${item.putawayDate}">
                                        <small>发布时间为必填</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">库存 <span class="tpl-form-line-small-title">storage</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="number" name="storage" step="1" min="1" max="99999" class="tpl-form-input" value="${item.storage}">
                                        <small>输入库存</small>
                                    </div>
                                </div>


                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">类别 <span class="tpl-form-line-small-title">typeName</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="typeName" placeholder="输入类别" value="${item.typeName}">
                                    </div>
                                </div>


                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">描述</label>
                                    <div class="am-u-sm-9">
                                        <textarea name="description" class="" rows="10" id="user-intro" placeholder="描述">${item.description}</textarea>
                                    </div>
                                </div>

                                <input type="hidden" name="id" value="${item.id}">

                                <input type="hidden" id="imglocal" name="image" value="${item.image}"/>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
</div>
<script src="${pageContext.request.contextPath}/sys/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/sys/assets/js/amazeui.datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/sys/assets/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/sys/assets/js/app.js"></script>
<script>
    // 初始化Web Uploader
    var uploader = WebUploader.create({

        // 选完文件后，是否自动上传。
        auto: true,

        // 文件接收服务端。
        server: '${pageContext.request.contextPath}/sys/art/image',

        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#filePicker',

        // 只允许选择图片文件。
        accept: {
            title: 'Images',
            extensions: 'gif,jpg,jpeg,bmp,png',
            mimeTypes: 'image/*'
        }
    });
    // 当有文件添加进来的时候
    uploader.on( 'fileQueued', function( file ) {
        var $li = $(
            '<div id="' + file.id + '" class="file-item thumbnail">' +
            '<img>' +
            '<div class="info">' + file.name + '</div>' +
            '</div>'
            ),
            $img = $li.find('img');
        $("#dbpic").hide();

        // $list为容器jQuery实例
        $("#fileList").append( $li );

        // 创建缩略图
        // 如果为非图片文件，可以不用调用此方法。
        // thumbnailWidth x thumbnailHeight 为 100 x 100
        uploader.makeThumb( file, function( error, src ) {
            if ( error ) {
                $img.replaceWith('<span>不能预览</span>');
                return;
            }

            $img.attr( 'src', src );
        }, 200, 200 );
    });
    // 文件上传过程中创建进度条实时显示。
    uploader.on( 'uploadProgress', function( file, percentage ) {
        var $li = $( '#'+file.id ),
            $percent = $li.find('.progress span');

        // 避免重复创建
        if ( !$percent.length ) {
            $percent = $('<p class="progress"><span></span></p>')
                .appendTo( $li )
                .find('span');
        }

        $percent.css( 'width', percentage * 100 + '%' );
    });

    // 文件上传成功，给item添加成功class, 用样式标记上传成功。
    uploader.on( 'uploadSuccess', function( file ,response) {
        $( '#'+file.id ).addClass('upload-state-done');
        console.log(response._raw);
        $("#imglocal").val(response._raw);
    });

    // 文件上传失败，显示上传出错。
    uploader.on( 'uploadError', function( file ) {
        var $li = $( '#'+file.id ),
            $error = $li.find('div.error');

        // 避免重复创建
        if ( !$error.length ) {
            $error = $('<div class="error"></div>').appendTo( $li );
        }

        $error.text('上传失败');
    });

    // 完成上传完了，成功或者失败，先删除进度条。
    uploader.on( 'uploadComplete', function( file ) {
        $( '#'+file.id ).find('.progress').remove();
    });
</script>
</body>

</html>