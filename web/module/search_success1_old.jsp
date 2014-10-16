<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <base href="<%=basePath%>">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>成功页</title>
        <link  rel="stylesheet"  href="plugin/bootstrap/css/bootstrap.min.css">
        <script src="plugin/jquery-1.10.2.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
        <style>
            .main{
                text-align: center;
                margin: 0 auto;
                border: 1px solid #ececec;
                position: relative;
            }
        </style>
        <!--        <script>
                    $(function() {
        
                    });
                </script>-->
    </head>
    <body>
        <div class="container">
            <!--head-->
            <div class="masthead">
                <h3 class="text-muted">帮助中心</h3>
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" ><a href="#">主页</a></li>
                    <li role="presentation"><a href="#">账号申诉</a></li>
                    <li role="presentation" class="active"><a href="#">申诉查询</a></li>
                </ul>
            </div>
            <!--/head-->

            <!--main-->
            <div class="main">
                <h3> 恭喜你申诉成功，你可以到运营商进行登录了!</h3>
            </div>
            <!--/main-->
        </div>
    </body> 
</html>
