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
        <title>申诉成功</title>
        <link  rel="stylesheet"  href="plugin/bootstrap/css/bootstrap.min.css">
        <script src="plugin/jquery-1.10.2.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
        <style>
            #page_content {
                margin: 5px 0px;
                border: 1px solid #ececec;
                position: relative;
            }
            .main{
                margin:50px 0px;
            }
            #tel{
                margin-left: 15px;
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
            <div  id="page_content">
                <!--bottom-->
                <div  class="row">
                    <!--left-->
                    <div class="col-md-2"></div>
                    <!--/left-->

                    <!--middle-->
                    <div class="col-md-8 main">
                        <div id="process_bar">
                            <img id="search_fail" class="img " src="images/appeal_fail.png">
                        </div>
                        <br/>
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="password" class="col-sm-2 control-label">新密码</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="password" placeholder="请输入新密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="second_password" class="col-sm-2 control-label">确认密码</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="second_password" placeholder="请在确认密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="verification" class="col-sm-2 control-label">验证码</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="verification" placeholder="请输入验证码">
                                </div>
                            </div>
                            <!--                            <div class="form-group">
                                                            <label for="tel" class="col-sm-2 control-label">手机号</label>
                                                            <div class="col-sm-10 input-group">
                                                                <input type="tel" class="form-control " id="tel" placeholder="请输入手机号">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-default" type="button">获取验证码</button>
                                                                </span>
                                                                                                    <input type="text" class="form-control" id="tel" placeholder="请输入手机号码">  
                                                                                                    <button type="button" class="btn btn-default">获取验证码</button>
                                                            </div>
                            
                                                            <div class="input-group">
                            
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="verification" class="col-sm-2 control-label">手机验证码</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" id="verification" placeholder="请输入手机验证码">
                                                            </div>
                                                        </div>-->
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-primary btn-lg">确认</button>

                                </div>
                            </div>
                        </form>
                    </div>
                    <!--/middle-->

                    <!--right-->
                    <div class="col-md-2"></div>
                    <!--/right-->
                </div>
                <!--/bottom-->
            </div>
            <!--/main-->
        </div>
    </body> 
</html>
