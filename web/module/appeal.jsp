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
                                    <img id="step_img" src="images/step_basic.png">
                                </div>

                                <!-- appeal input area -->
                                <div class="form-zone eid">
                                    <form class="form-horizontal" role="form" action="javascript:void(0)">
                                        <div class="form-group">
                                            <label for="inputName" class="col-sm-2 control-label">姓&nbsp;&nbsp;名：</label>
                                            <div class="col-sm-9">
                                                <input id="inputName" class="form-control" placeholder="必填" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputId" class="col-sm-2 control-label">身份证号：</label>
                                            <div class="col-sm-9">
                                                <input id="inputId" class="form-control" placeholder="必填" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="inputType" class="col-sm-2 control-label">申述类型：</label>
                                            <div class="col-sm-9">
                                                <select id="inputType" class="form-control">
                                                    <option selected="" value=""> </option>
                                                    <option value="passwd">密码找回</option>
                                                    <option value="s">身份被盗用</option>
                                                    <option value="photo">照片不通过</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputContent" class="col-sm-2 control-label">描述：</label>
                                            <div class="col-sm-9">
                                                <textarea type="text" rows="3" class="form-control" id="inputContent" placeholder="请描述您的申述情况。"></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="inputEmail" class="col-sm-2 control-label">联系邮箱：</label>
                                            <div>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control col-sm-4" id="inputEmail" placeholder="输入邮箱"> 
                                                    <label class="label label-default">请留下联系邮箱，我们会将回复以邮件的方式发送到您的联系邮箱。</label>
                                                </div>
                                            </div>
                                        </div>

<!--                                        <div class="form-group">
                                            <label for="inputPhone" class="col-sm-2 control-label">手机号码：</label>
                                            <div class="col-sm-9">
                                                <input type="email" class="form-control col-sm-4" id="inputPhone" placeholder="选填"> 
                                            </div>
                                        </div>-->

                                        <div class="form-group">
                                            <label for="inputVerify" class="col-sm-2 control-label">验证码：</label>
                                            <div>
                                                <div class="col-sm-2">
                                                    <input type="email" class="form-control col-sm-4" id="inputPhone" placeholder="">
                                                </div>
                                                <img id="verify_code" src="images/verification_code.png"/> <a href="javascript:void(0)" >看不清</a>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button id="btn_submit_step01" type="submit" class="btn btn-primary col-sm-2" >提交</button>
                                            </div>
                                        </div>
                                    </form>
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
        <script src="js/appeal.center.step01.js"></script>
        <script>
            $(function () {

            });
        </script>
    </body> 
</html>
