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
                <h3 class="text-muted">Project name <span>|</span> 帮助中心</h3>
            </div>
        </header>
        <!-- /header -->

        <!-- navbar -->
        <div class="container">
            <div id="navbar" class="navbar navbar-default eid">
                <ul class="nav navbar-nav">
                    <li class=""><a href="module/help_center_home.jsp" class="nav-title eid">首&nbsp;&nbsp;页</a></li>
                    <li class=""><a href="module/help_center_question.jsp" class="nav-title eid">常见问题</a></li>
                    <li class="active"><a href="module/help_center_contact.jsp" class="nav-title eid">联系客服</a></li>
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
                                    <label for="inputType" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-2">
                                        <select id="inputType" class="form-control">
                                            <option selected="" value="其他">其他</option>
                                            <option value="申诉问题">申诉问题</option>
                                            <option value="帮助中心">帮助中心</option>
                                            <option value="密码找回">密码找回</option>
                                            <option value="常见问题">常见问题</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> Remember me
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">Sign in</button>
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
