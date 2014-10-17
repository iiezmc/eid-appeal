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
            .photo-zone.eid{margin: 5px 50px;}
            .above-zone.eid{margin-top: 30px; min-height: 280px;}
            .bottom-zone.eid{margin-top: 10px;}
            /*.v-divider.eid{height: 500px; width: 1px; margin: 20px 0px;}*/
        </style>
        <title>账号申述 - 证明资料</title>
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
                    <li class="active"><a href="module/appeal_home.jsp" class="nav-title eid">账号申述</a></li>
                    <!--<li><a href="module/help_center_question.jsp" class="nav-title eid">常见问题</a></li>-->
                    <li><a href="module/search_login.jsp" class="nav-title eid">申述查询</a></li>
                </ul>
            </div>
        </div> <!--</nav>-->
        <!-- navbar -->

        <!-- main body -->
        <div class="container">
            <div class="row-fluid">

                <div class="panel panel-primary">
                    <div class="panel-body-noheader">
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
                                    <img id="step_img" src="images/step_photo.png">
                                </div>
                                <!-- appeal input area -->
                                <div class="form-zone eid">
                                    <div class="photo-zone eid">
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="active"><a href="#have_id" role="tab" data-toggle="tab">有身份证</a></li>
                                            <li><a href="#no_id" role="tab" data-toggle="tab">无身份证</a></li>
                                        </ul>

                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="have_id">

                                                <div class="row" style="margin-bottom: 20px;">
                                                    <!-- left -->
                                                    <div class="col-md-5 v-divider eid">
                                                        <div class="above-zone eid">

                                                            <div class="col-md-5">
                                                                <label for="inputName" class="control-label">身份证照片</label>
                                                            </div>
                                                            <div class="col-md-7 pull-right">
                                                                <img class="img-thumbnail" alt=" " style="width: 100%;" src="images/kong.png">
                                                                <input id="" name="" class="form-control" type="file" accept="image/*" />
                                                            </div>
                                                        </div>

                                                        <div class="bottom-zone eid">

                                                            <div class="col-md-5">
                                                                <label for="inputName" class="control-label">手持身份证照片</label>
                                                            </div>
                                                            <div class="col-md-7 pull-right">
                                                                <img class="img-thumbnail" alt=" " style="width: 100%;" src="images/kong.png">
                                                                <input id="" class="form-control" type="file" accept="image/*" />
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <!-- /left -->
                                                    <!-- v-divider -->
                                                    <!--<div class="col-md-1  eid" style="width: 1px;padding: 0px;"> </div>-->
                                                    <!-- rigth -->
                                                    <div class="pull-right col-md-7 "> 
                                                                                                                
                                                        <div class="above-zone eid">

                                                            <div class="col-md-5">
                                                                <img class="img-thumbnail" alt=" " style="width: 100px;" src="images/case_id.png">
                                                            </div>
                                                            <div class="col-md-7 pull-right">
                                                            </div>
                                                        </div>

                                                        <div class="bottom-zone eid">

                                                            <div class="col-md-5">
                                                                <img class="img-thumbnail" alt=" " style="width: 100px;" src="images/case_hand_with_id.png">
                                                            </div>
                                                            <div class="col-md-7 pull-right">
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                </div>

                                                <!-- submit btn -->
                                                <div class="row">
                                                    <div class="col-md-offset-2 col-md-6">
                                                        <button id="btn_submit_step01" type="submit" class="btn btn-block btn-primary" >提   交</button>
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="tab-pane" id="no_id">...</div>
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
