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
        <title>申诉查询登陆</title>
        <link  rel="stylesheet"  href="./plugin/bootstrap/css/bootstrap.min.css">
        <script src="./plugin/jquery-1.10.2.min.js"></script>
        <script src="./plugin/bootstrap/js/bootstrap.min.js"></script>
        <style>
            #page_content {
                margin: 5px 0px;
                border: 1px solid #ececec;
                position: relative;
            }
            .login-main{
                margin-top: 80px;
            }
        </style>
        <!--        <script>
                    $(function() {
        
                    });
                </script>-->
    </head>
    <body>
        <div class="container">
            <div class="masthead">
                <h3 class="text-muted">帮助中心</h3>
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" ><a href="#">主页</a></li>
                    <li role="presentation"><a href="#">账号申诉</a></li>
                    <li role="presentation" class="active"><a href="#">申诉查询</a></li>
                </ul>
            </div>

            <div id="page_content" class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6 login-main">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="name" placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="idNumber" class="col-sm-2 control-label">身份证号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="idNumber" placeholder="请输入身份证号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="appealNumber" class="col-sm-2 control-label">申诉编号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="appealNumber" placeholder="请输入申诉编号">
                            </div>
                        </div>
<!--                        <div class="form-group">
                            <label for="verification" class="col-sm-2 control-label">验证码</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="verification" placeholder="请输入验证码">
                            </div>
                        </div>-->
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">确认</button>
                            </div>
                        </div>
                    </form>
                </div>


                <div class="col-md-3"></div>

            </div>


        </div>
    </body> 
</html>
