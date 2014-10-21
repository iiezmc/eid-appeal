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
        <title>账号申述 - 证明资料</title>
        <link rel="stylesheet" href="./plugin/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/base.css">
        <link rel="stylesheet" href="./css/help.center.css">
        <script src="plugin/jquery-1.10.2.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/appeal.info.js"></script>
        <style>
            .body-north.eid {margin: 10px 50px;margin-top:20px;}
            .step-stat.eid {width:440px; margin: 0 auto; margin-bottom: 20px;}
            .step-stat.eid>img {width:100%;}
            .photo-zone.eid{margin: 5px 50px;}
            .above-zone.eid{margin-top: 30px; min-height: 250px;}
            .bottom-zone.eid{margin-top: 10px;}
            /*.v-divider.eid{height: 500px; width: 1px; margin: 20px 0px;}*/
        </style>
    </head>
    <body >
        <!-- header -->
        <header class="container">
            <div class="header">
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
        </div>
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
                                <form action="img_uploads.do" method="post" enctype="multipart/form-data">
                                    <!-- step img -->
                                    <div class="step-stat eid">
                                        <img id="step_img" src="images/step_photo.png">
                                    </div>
                                    <!-- appeal input area -->
                                    <div class="form-zone eid" style="padding-bottom: 20px;">
                                        <div class="photo-zone eid">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li class="active"><a href="#have_id" role="tab" data-toggle="tab">有身份证</a></li>
                                                <li><a href="#no_id" role="tab" data-toggle="tab">无身份证</a></li>
                                            </ul>



                                            <!-- Tab panes -->
                                            <div class="tab-content">
                                                <!--id-card-->
                                                <div class="tab-pane active" id="have_id">
                                                    <div class="row" style="margin-bottom: 20px;">
                                                        <!-- left -->
                                                        <div class="col-md-5 v-divider eid">
                                                            <div class="above-zone eid">

                                                                <div class="col-md-5">
                                                                    <label for="inputName" class="control-label">身份证照片</label>
                                                                </div>
                                                                <div class="col-md-7 pull-right">
                                                                    <!--<img class="img-thumbnail" alt=" " style="width: 100%; " src="images/id_background.png">-->
                                                                    <div id="idcard_div">
                                                                        <img  id="idcard_img"  src="" alt="上传照片" />
                                                                    </div>
                                                                    <input  id="idcard" name="uploadFiles"  type='file' onchange="preview(this);" />
                                                                </div>
                                                            </div>

                                                            <div class="bottom-zone eid">
                                                                <div class="col-md-5">
                                                                    <label for="inputName" class="control-label">手持身份证照片</label>
                                                                </div>
                                                                <div class="col-md-7 pull-right">
                                                                    <div id="handCard_div">
                                                                        <img  id="handCard_img"  src="" alt="上传照片" />
                                                                    </div>
                                                                    <input  id="handCard" name="uploadFiles"  type='file' onchange="preview(this);" />
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- /left -->
                                                        <!-- v-divider -->
                                                        <!--<div class="col-md-1  eid" style="width: 1px;padding: 0px;"> </div>-->
                                                        <!-- rigth -->
                                                        <div class="pull-right col-md-7 "> 

                                                            <div class="above-zone eid">

                                                                <div class="col-sm-4">
                                                                    <img class="img-thumbnail" alt=" "  src="images/case_id.png">
                                                                </div>
                                                                <div class="col-sm-8 pull-right">
                                                                    <ol>
                                                                        <li>上传本人身份证证件，确保证件真实有效，未经过软件处理。</li>
                                                                        <li>照片需要免冠、未化妆。</li>
                                                                        <li>照片格式为JPG格式，最大不要超过5M。</li>
                                                                    </ol>
                                                                </div>
                                                            </div>

                                                            <div class="bottom-zone eid">

                                                                <div class="col-md-4">
                                                                    <img class="img-thumbnail" alt=" "  src="images/case_hand_with_id.png">
                                                                </div>
                                                                <div class="col-md-8 pull-right">
                                                                    <ol>
                                                                        <li>手持身份证照片必须能看清楚证件号。
                                                                        <li>照片需要免冠、未化妆，未经过任何软件编辑修改。</li>
                                                                        <li>照片格式为JPG格式，最大不要超过5M。</li>
                                                                    </ol>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>
                                                <!--/id-card-->


                                                <div class="tab-pane" id="no_id">
                                                    <div class="row" style="margin-bottom: 20px;">
                                                        <!-- left -->
                                                        <div class="col-md-5 v-divider eid">
                                                            <div class="above-zone eid">

                                                                <div class="col-md-5">
                                                                    <label for="inputName" class="control-label">户口簿照片</label>
                                                                </div>
                                                                <div class="col-md-7 pull-right">
                                                                    <div id="account_div">
                                                                        <img  id="account_img"  src="" alt="上传照片" />
                                                                    </div>
                                                                    <input  id="account" name="uploadFiles"  type='file' onchange="preview(this);" />                                                            </div>
                                                            </div>

                                                            <div class="bottom-zone eid">

                                                                <div class="col-md-5">
                                                                    <label for="inputName" class="control-label">手持户口簿照片</label>
                                                                </div>
                                                                <div class="col-md-7 pull-right">
                                                                    <div id="handAccount_div">
                                                                        <img  id="handAccount_img"  src="" alt="上传照片" />
                                                                    </div>
                                                                    <input  id="handAccount" name="uploadFiles"  type='file' onchange="preview(this);" />
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- /left -->
                                                        <!-- v-divider -->
                                                        <!--<div class="col-md-1  eid" style="width: 1px;padding: 0px;"> </div>-->
                                                        <!-- rigth -->
                                                        <div class="pull-right col-md-7 "> 

                                                            <div class="above-zone eid">

                                                                <div class="col-sm-4">
                                                                    <img class="img-thumbnail" alt=" "  src="images/case_booklet.png">
                                                                </div>
                                                                <div class="col-sm-8 pull-right">
                                                                    <ol>
                                                                        <li>上传户口簿显示本人信息页。</li>
                                                                        <li>确保此户口薄真实有效，信息完整，未软件处理。</li>
                                                                        <li>照片支持JPG格式，最大不超过5M。</li>
                                                                    </ol>
                                                                </div>
                                                            </div>

                                                            <div class="bottom-zone eid">

                                                                <div class="col-md-4">
                                                                    <img class="img-thumbnail" alt=" "  src="images/case_hand_with_booklet.png">
                                                                </div>
                                                                <div class="col-md-8 pull-right">
                                                                    <ol>
                                                                        <li>户口簿显示本人信息页。
                                                                        <li>手持户口薄照片必须看清真实姓名等信息。</li>
                                                                        <li>照片支持JPG格式，最大不超过5M。</li>
                                                                    </ol>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>  <!-- /.photo-zone -->

                                        <!-- submit btn -->
                                        <div class="row">
                                            <div class="col-md-offset-2 col-md-6">
                                                <button  type="submit" class="btn btn-block btn-primary" >提   交</button>
                                            </div>
                                        </div>
                                    </div> 
                                </form>
                            </div>
                            <!-- /main body -->
                        </div>
                    </div>
                </div>
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </body> 
</html>
