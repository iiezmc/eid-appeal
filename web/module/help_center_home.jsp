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
                <h3 class="text-muted">Project name <span>|</span> 帮助中心</h3>
            </div>
        </header>
        <!-- /header -->

        <!-- navbar -->
        <div class="container">
            <div id="navbar" class="navbar navbar-default eid">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="module/help_center_home.jsp" class="nav-title eid">首&nbsp;&nbsp;页</a></li>
                    <li><a href="module/help_center_question.jsp" class="nav-title eid">常见问题</a></li>
                    <li><a href="module/help_center_contact.jsp" class="nav-title eid">联系客服</a></li>
                </ul>
            </div>
        </div> <!--</nav>-->
        <!-- navbar -->

        <!-- main body -->
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1" >
<!--                    <div class="row eid"> 
                        <div class="col-md-6 link-zone eid"> <input type="button" class="btn link1" value="账号申述"/> </div>
                        <div class="col-md-6 link-zone eid"> <input type="button" class="btn link2" value="申述进度查询"/> </div>
                    </div>
                    <div class="row eid"> 
                        <div class="col-md-6 link-zone eid"> <input type="button" class="btn link3" value="BUTTON"/> </div>
                        <div class="col-md-6 link-zone eid"> <input type="button" class="btn link4" value="BUTTON"/> </div>
                    </div>-->
                    <div class="row eid"> 
                        <div class="col-md-6 link-zone eid"> <input type="button" class="btn link1" value="找回密码/更换手机"/> </div>
                        <div class="col-md-6 link-zone eid"> <input type="button" class="btn link2" value="申述进度查询"/> </div>
                    </div>
                    <div class="row eid"> 
                        <div class="col-md-6 link-zone eid"> <input type="button" class="btn link3" value="照片不通过"/> </div>
                        <div class="col-md-6 link-zone eid"> <input type="button" class="btn link4" value="身份被盗用"/> </div>
                    </div>
                </div>
            </div> <!-- /.row-fluid -->
            
        </div>

        
        


        <script src="plugin/jquery-1.10.2.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/help.center.js"></script>
        <script>
            $(function() {

            });
        </script>
    </body> 
</html>
