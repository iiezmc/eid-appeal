<%-- 
    Document   : help_center_home
    Created on : 2014-10-15, 16:33:39
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
            .body-north.eid {margin: 10px 50px;margin-top:20px;}
            .step-stat.eid {width:440px; margin: 0 auto; margin-bottom: 20px;}
            .step-stat.eid>img {width:100%;}
        </style>
        <title>账号申述 - 申述中心</title>
    </head>
    <body>
        <!-- header -->
        <header class="container">
            <div class="header">
                <!--<h3 class="text-muted">Project name <span>|</span> 申述中心</h3>-->
                <img src="images/logo.jpg"/>
            </div>
        </header>
        <!-- /header -->

        <!-- navbar -->
        <div class="container">
            <div id="navbar" class="navbar navbar-default eid">
                <ul class="nav navbar-nav">
                    <li class=""><a href="module/home.jsp" class="nav-title eid">首&nbsp;&nbsp;页</a></li>
                    <li class=""><a href="module/appeal.jsp" class="nav-title eid">账号申述</a></li>
                    <!--<li><a href="module/help_center_question.jsp" class="nav-title eid">常见问题</a></li>-->
                    <li class="active"><a href="module/search_login.jsp" class="nav-title eid">申述查询</a></li>
                </ul>
            </div>
        </div>
        <!-- navbar -->

        <!-- main body -->
        <div class="container">
            <div class="row-fluid">

                <div class="panel panel-primary" >
                    <div class="row">
                        
                        
                        <div id="process_bar" style="margin-left: 110px;">
                            <img id="search_fail" class="img " src="images/appeal_fail.png">
                        </div>
                        
                    <div id="page_content" class="col-sm-offset-2 col-sm-6" style="min-heigh: 400px; margin-top: 20px;">
                        
                        
                        <div class="main">
                        <br/>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="password" class="col-sm-3 control-label">新密码</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="password" placeholder="请输入新密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="second_password" class="col-sm-3 control-label">确认密码</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="second_password" placeholder="请在确认密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="verification" class="col-sm-3 control-label">验证码</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="verification" placeholder="请输入验证码">
                                </div>
                                <img id="verify_code" src="images/verification_code.png"/> <a href="javascript:void(0)" >看不清</a>
                            </div>
                            <!--                            <div class="form-group">
                                                            <label for="tel" class="col-sm-2 control-label">手机号</label>
                                                            <div class="col-sm-10 input-group">
                                                                <input type="tel" class="form-control " id="tel" placeholder="请输入手机号">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-default" type="button">获取验证码</button>
                                                                </span>
                                                                                                    <input type="text" class="form-control" id="tel" placeholder="请输入手机号码">  
                                                                                                    <button type="button" class="btn btn-default">获取验证码</button>
                                                            </div>
                            
                                                            <div class="input-group">
                            
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="verification" class="col-sm-2 control-label">手机验证码</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" id="verification" placeholder="请输入手机验证码">
                                                            </div>
                                                        </div>-->
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-10">
                                    <a type="submit" href="module/search_success1.jsp"class="btn btn-primary col-sm-6">确认</a>

                                </div>
                            </div>
                        </form>
                    </div>
                        
                        
                        
                        
                        
                        
                        
                        
                        <!--end main-->
                    </div>
                        </div>
                </div>
            </div> <!-- /.row -->
        </div> <!-- /.container -->

        <script src="plugin/jquery-1.10.2.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/appeal.center.js"></script>
        <script src="js/appeal.center.step01.js"></script>
        <script>
            $(function() {

            });
        </script>
    </body> 
</html>
