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
        <title>账号申述 - 申述完成</title>
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
                    <li class="active"><a href="module/appeal.jsp" class="nav-title eid">账号申述</a></li>
                    <!--<li><a href="module/help_center_question.jsp" class="nav-title eid">常见问题</a></li>-->
                    <li><a href="module/search_login.jsp" class="nav-title eid">申述查询</a></li>
                </ul>
            </div>
        </div> <!--</nav>-->
        <!-- navbar -->

        <!-- main body -->
        <div class="container">
            <div class="row-fluid">

                <div class="panel panel-primary" >
                    <div class="panel-body-noheader" style="height: 500px;">
                        <div >
                            <!-- header -->
                            <div class="body-north eid" >
                                <img id="u9_img"  src="images/mailer.png">
                                <div class="pull-right" style="padding-right: 80px;">
                                    <h3>2~3个工作日内申诉结果将发到您联系邮箱</h3>
                                    <p>申诉成功后，原密码自动失效、您可以顺利地重新设置新密码。申诉期间帐号可以正常使用。</p>
                                </div>

                            </div>

                            <div class="divider eid"></div>

                            <!-- main body -->
                            <div class="body-center eid" >

                                <!-- step img -->
                                <div class="step-stat eid">
                                    <img id="step_img" src="images/step_finish.png">
                                </div>

                                <!-- appeal input area -->
                                <div class="form-zone eid">
                                    <div class="col-sm-offset-2 col-sm-8">

                                        <div class="state eid">
                                            <b style="font-size: 16px; padding-right: 10px;">申述完成</b> 您的申请已经被成功提交，等待审核。
                                        </div>
                                        <div class="divider eid"></div>
                                        <div class="info eid">
                                            <div class="col-sm-1">
                                                <img style="width: 40px;" src="images/small.png"/>
                                            </div>
                                            <div class="col-sm-11">
                                                <h4><b>申诉表已提交</b></h4>
                                                <p>您的申诉已经被成功提交，等待审核。2~3个工作日受理结果会发送到您的邮箱，请注意查收。同时您也可以通过申诉编号<a href="module/search_login.jsp">申诉查询</a></p>
                                                <p>
                                                    <span style="
                                                          font-size: 20px;
                                                          color: red;
                                                          padding-right: 20px;
                                                          ">申诉编号：<span id="appeal_no">4654615968</span></span>
                                                    <label class="label label-default">请牢记申诉编号，以便登录使用</label>
                                                </p>

                                                <p>当您提交的申诉证明资料足够证明您是此身份的主人，而非试图盗用本身份的黑客时，您才能重新设置密码和密保。</p>

                                                <p>
                                                    <strong style="font-size: 15px;">申诉编号已发到您的联系邮箱</strong>
                                                </p>

                                                <p>如没有接收到, <a href="javascript:void(0)">重发申诉编码</a></p>

                                            </div>

                                        </div>


                                    </div>
                                </div>
                            </div>
                            <!-- /main body -->

                        </div>
                    </div>

                </div>



            </div> <!-- /.row -->
        </div> <!-- /.container -->

        <script src="plugin/jquery-1.10.2.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/appeal.center.js"></script>
        <script>
            $(function () {

            });
        </script>
    </body> 
</html>
