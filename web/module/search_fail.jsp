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
        <title>申述查询 - 申述失败</title>
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

                        <div id="page_content" class="col-sm-offset-2 col-sm-6" style="min-heigh: 700px; margin-top: 20px; margin-bottom: 20px;">
                            <h3>申诉失败</h3>
                            <p>抱歉，由于证据不足，您提交的申诉没有审核通过。申诉结果已经发送至136******66，请及时查收。</p>
                            <br/>
                            <h3>图片质量不合格：</h3>
                            <p><span style="color:Red">1、身份证证明的文字不清晰，请重新上传一份。</span></p>
                            <br/>
                            <h4>您可以重新提交申诉表，我们建议您：</h4>
                            <p><span style="color:Red">申诉时，请尽可能多的提交1、2级证件资料，每项资料都很重要。</span></p>
                            <br/>
                            <a href="module/appeal.jsp" class="btn btn-primary btn-lg" >重新提交申诉</a>
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
