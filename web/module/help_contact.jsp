<%-- 
    Document   : help_center_question
    Created on : 2014-10-14, 14:55:39
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
        <title>常见问题 - 帮助中心</title>
    </head>
    <body>
        <!-- header -->
        <header class="container">
            <div class="header">
                <!--                <h3 class="text-muted">Project name <span>|</span> 帮助中心</h3>-->
                <img src="images/logo.jpg"/>
            </div>
        </header>
        <!-- /header -->

        <!-- navbar -->
        <div class="container">
            <div id="navbar" class="navbar navbar-default eid">
                <ul class="nav navbar-nav">
                    <li class=""><a href="module/home.jsp" class="nav-title eid">首&nbsp;&nbsp;页</a></li>
                    <!--<li class=""><a href="module/help_center_question.jsp" class="nav-title eid">常见问题</a></li>-->
                    <li class="active"><a href="module/help_contact.jsp" class="nav-title eid">联系客服</a></li>
                </ul>
            </div>
        </div> <!--</nav>-->
        <!-- navbar -->

        <!-- main body -->
        <div class="container">
            <div class="row">
                <!-- page body-->
                <div class="col-md-12 page-body">
                    <div class="panel panel-primary">
                        <div class="panel-body">
                            <form class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="inputType" class="col-sm-2 control-label">问题类型：</label>
                                    <div class="col-sm-2">
                                        <select id="inputType" class="form-control">
                                            <option selected="" value="appeal">申诉问题</option>
                                            <option value="help_center">帮助中心</option>
                                            <option value="password">密码找回</option>
                                            <option value="normal">常见问题</option>
                                            <option value="other">其他</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputContent" class="col-sm-2 control-label">反馈内容：</label>
                                    <div class="col-sm-10">
                                        <textarea type="text" rows="3" class="form-control" id="inputContent" placeholder="您任意问题都可以给我们反馈，我们会重视您的每一个问题。"></textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">紧急程度：</label>
                                    <div class="col-sm-10">
                                        <label class="radio-inline">
                                            <input type="radio" name="type" id="normalTepe" value="normal" checked> 一般
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="type" id="normalTepe" value="emergen"> 紧急
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail" class="col-sm-2 control-label">联系邮箱：</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control col-sm-4" id="inputEmail" placeholder="输入邮箱"> 
                                        <label class="label label-default ">请留下联系邮箱，我们会将回复以邮件的方式发送到您的联系邮箱。</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputPhone" class="col-sm-2 control-label">手机号码：</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control col-sm-4" id="inputPhone" placeholder="选填"> 
                                        <!--<label>请留下联系邮箱，我们会将回复以邮件的方式发送到您的联系邮箱。</label>-->
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary col-sm-2">提交</button>
                                    </div>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>
                <!-- /page body-->

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
