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
        <title>申诉失败</title>
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
                        <h3>申诉失败</h3>
                        <p>抱歉，由于证据不足，您提交的申诉没有审核通过。申诉结果已经发送至136******66，请及时查收。</p>
                        <br/>
                        <h3>图片质量不合格：</h3>
                        <p><span style="color:Red">1、身份证证明的文字不清晰，请重新上传一份。</span></p>
                        <br/>
                        <h4>您可以重新提交申诉表，我们建议您：</h4>
                        <p><span style="color:Red">申诉时，请尽可能多的提交1、2级证件资料，每项资料都很重要。</span></p>
                        <br/>
                        <button type="button" class="btn btn-primary btn-lg">重新提交申诉</button>
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
