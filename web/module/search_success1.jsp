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
        <title>申述查询 - 操作成功</title>
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
                        
                        
                    <div id="page_content" class="col-sm-offset-2 col-sm-10" style="min-heigh: 400px; margin-top: 20px;">
                        
                        <img src="images/small.png" />
                        <div class="" >
                        <h3> 恭喜你申诉成功，你可以到运营商进行登录了!</h3>
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
