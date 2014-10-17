<%-- 
    Document   : help_center_home
    Created on : 2014-10-11, 13:26:39
    Author     : XZXIONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
    <head>
        <base href="<%=basePath%>">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./plugin/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/base.css">
        <link rel="stylesheet" href="./css/help.center.css">
        <style>
        </style>
        <title>首页 - 帮助中心</title>
    </head>
    <body>
        <!-- header -->
        <header class="container">
            <div class="header">
                <!--<h3 class="text-muted">Project name <span>|</span> 帮助中心</h3>-->
                <img src="images/logo.jpg"/>
            </div>
        </header>
        <!-- /header -->

        <!-- navbar -->
        <div class="container">
            <div id="navbar" class="navbar navbar-default eid">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="module/home.jsp" class="nav-title eid">首&nbsp;&nbsp;页</a></li>
                    <!--<li><a href="module/help_center_question.jsp" class="nav-title eid">常见问题</a></li>-->
                    <li><a href="module/help_contact.jsp" class="nav-title eid">联系客服</a></li>
                </ul>
            </div>
        </div> <!--</nav>-->
        <!-- navbar -->

        <!-- main body -->
        <div class="container">
            <div class="row">

                <!-- left body-->
                <div class="left-container col-md-3">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">申诉服务</h3>
                        </div>
                        <div class="panel-body">
                            <div class="eid-btn-group">
                                <div class="eid-btn">                                
                                    <a href="module/appeal.jsp" class="btn">
                                        <span class="glyphicon glyphicon-star eid-alink-image"></span>账号申诉
                                    </a>
                                </div> 
                                <div class="eid-btn">                                
                                    <a href="module/search_login.jsp" class="btn">
                                        <span class="glyphicon glyphicon-star eid-alink-image"></span>申述进度查询
                                    </a>
                                </div> 
                            </div>
                        </div>
                    </div>

                    <!-- normal questions -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">常见问题分类</h3>
                        </div>
                        <div class="panel-body">
                            <ul class="list-group">
                                <a class="btn btn-info btn-block" onclick="show_ques('register')">注册问题</a>
                            </ul>
                            <ul class="list-group">
                                <a class="btn btn-info btn-block" onclick="show_ques('appeal')">申述问题</a>
                            </ul>
                            <ul class="list-group">
                                <a class="btn btn-info btn-block" onclick="show_ques('login')">登录问题</a>
                            </ul>
                        </div>
                    </div>
                    <!-- /normal questions -->
                </div>
                <!-- /left body-->







                <!-- right body-->
                <div class="right-container col-md-9 page-body">
                    <!-- register question -->
                    <div id="panel-register" class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                注册问题
                            </h4>
                        </div>
                        <div class="panel-collapse" >
                            <div class="panel-body">
                                <ul>
                                    <li><a href="javascript:void(0);">如何修改密码?</a></li>
                                    <li><a href="javascript:void(0);">认证时提示证件号码已被另一个账户用于认证是为什么?</a></li>
                                    <li><a href="javascript:void(0);">我的身份证号已被别人认证了怎么办呢?</a></li>
                                    <li><a href="javascript:void(0);">如何修改密码?</a></li>
                                    <li><a href="javascript:void(0);">认证时提示证件号码已被另一个账户用于认证是为什么?</a></li>
                                    <li><a href="javascript:void(0);">我的身份证号已被别人认证了怎么办呢?</a></li>
                                    <li><a href="javascript:void(0);">如何修改密码?</a></li>
                                    <li><a href="javascript:void(0);">认证时提示证件号码已被另一个账户用于认证是为什么?</a></li>
                                    <li><a href="javascript:void(0);">我的身份证号已被别人认证了怎么办呢?</a></li>
                                    <li><a href="javascript:void(0);">如何修改密码?</a></li>
                                    <li><a href="javascript:void(0);">认证时提示证件号码已被另一个账户用于认证是为什么?</a></li>
                                    <li><a href="javascript:void(0);">我的身份证号已被别人认证了怎么办呢?</a></li>
                                    <li><a href="javascript:void(0);">如何修改密码?</a></li>
                                    <li><a href="javascript:void(0);">认证时提示证件号码已被另一个账户用于认证是为什么?</a></li>
                                    <li><a href="javascript:void(0);">我的身份证号已被别人认证了怎么办呢?</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /register question -->
                    <!-- appeal question -->
                    <div id="panel-appeal" class="panel panel-primary" hidden>
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                申述问题
                            </h4>
                        </div>
                        <div class="panel-collapse">
                            <div class="panel-body">

                            </div>
                        </div>
                    </div>
                    <!-- /appeal question -->
                    <!-- login question -->
                    <div id="panel-login" class="panel panel-primary" hidden>
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                登录问题
                            </h4>
                        </div>
                        <div class="panel-collapse">
                            <div class="panel-body">
                            </div>
                        </div>
                    </div>
                    <!-- /login question -->
                </div> <!-- /.right body -->


            </div> <!-- /.row -->

        </div> <!-- /.container -->

        <script src="plugin/jquery-1.10.2.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/help.center.js"></script>
        <script>
                                    $(function() {

                                    });
        </script>
    </body> 
</html>
