<%-- 
    Document   : index
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
        <style>
            .search-zone.eid{
                /*background-color: #D9EDF7;*/
                background-color: #428bca;
            }
            .search-zone label {
                color: #fff;
            }
            .search-form.eid {margin: 0 10px;}
            .home-search-input-box {width: 100%;}
            .home-search-input {width: 628px;}
            .eid-alink-image {margin-right: 5px;}
            .eid-btn-group .eid-btn{margin-bottom: 5px;}
        </style>

        <title>Home Page</title>
    </head>
    <body>
        <!-- header -->
        <div class="container">
            <div class="header">
                <h3 class="text-muted">Project name <span>|</span> 帮助中心</h3>
            </div>
        </div>
        <!-- /header -->

        <!-- navbar -->
        <!--<nav class="navbar navbar-default" role="navigation" >-->
        <div class="container">
            <!--                <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">Project name</a>
                            </div>-->
            <div id="navbar" class="navbar navbar-inverse ">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li class="dropdown-header">Nav header</li>
                            <li><a href="#">Separated link</a></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                </ul>
                <!--                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="../navbar/">Default</a></li>
                                        <li><a href="../navbar-static-top/">Static top</a></li>
                                        <li class="active"><a href="./">Fixed top</a></li>
                                    </ul>-->
            </div><!--/.nav-collapse -->

            <div  class="navbar panel panel-primary" style="min-height: 40px;">
                <ul class="nav nav-pills">
                    <li class=""><a href="#">Regular link</a></li>
                    <li class="active">
                        <a  href="#">Regular link</a>
                    </li>
                    <li class="dropdown">
                        <a id="drop5" role="button" data-toggle="dropdown" href="#">Dropdown 2 <span class="caret"></span></a>
                        <ul id="menu2" class="dropdown-menu" role="menu" aria-labelledby="drop5">
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
                            <li role="presentation" class="divider"></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a id="drop6" role="button" data-toggle="dropdown" href="#">Dropdown 3 <span class="caret"></span></a>
                        <ul id="menu3" class="dropdown-menu" role="menu" aria-labelledby="drop6">
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
                            <li role="presentation" class="divider"></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div> <!--</nav>-->
        <!-- navbar -->

        <!-- main body -->
        <div class="container">
            <div class="row">
                <!-- left body-->
                <div class="left-container col-md-3">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">常用服务</h3>
                        </div>
                        <div class="panel-body">
                            <div class="eid-btn-group">
<!--                            <div class="media">
                                <div class="pull-left" >
                                    <img class="media-object" style="height: 20px; width: 100%; display: block;" data-src="holder.js/100%x200" alt="100%x200" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDIiIGhlaWdodD0iMjAwIj48cmVjdCB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjEyMSIgeT0iMTAwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjE1cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MjQyeDIwMDwvdGV4dD48L3N2Zz4=">
                                </div>
                                <div class="media-body"><a href="#">找回密码</a></div>
                            </div>

                            <button type="button" class="btn btn-block btn-default">
                                <span class="glyphicon glyphicon-star"></span> Star
                            </button>-->

                            <div class="eid-btn">                                
                                <a href="#" class="btn">
                                    <span class="glyphicon glyphicon-star eid-alink-image"></span>常用服务
                                </a>
                            </div> 
                            <div class="eid-btn">                                
                                <a href="#" class="btn">
                                    <span class="glyphicon glyphicon-star eid-alink-image"></span>找回密码
                                </a>
                            </div> 
                                <div class="eid-btn">                                
                                    <a href="#" class="btn">
                                        <span class="glyphicon glyphicon-star eid-alink-image">
                                        </span>照片不通过
                                    </a>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">常用问题</h3>
                        </div>
                        <div class="panel-body">
                            <ul class="list-group">
                                <li class="list-group-item">注册问题</li>
                            </ul>
                            <ul class="list-group">
                                <li class="list-group-item">申述问题</li>
                            </ul>
                            <ul class="list-group">
                                <li class="list-group-item">登录失败</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /left body-->

                <!-- right body-->
                <div class="right-container col-md-9 ">
                    <div class="panel panel-primary search-zone eid">
                        <!--<div class="panel-collapse collapse in">-->
                        <div class="row-fluid img-rounded">
                            <div class="accordion-inner " >
                                <form class="navbar-form" role="search" action="javascript:void(0)">
                                    <button type="submit" class="btn btn-default pull-right">Submit</button>
                                    <div class="home-search-input-box">
                                        <input type="text" class="form-control input home-search-input" style="width: 588px;" placeholder="Search">
                                    </div>
                                    <div class="label">
                                        <label>热点：<span>如何更改手机号码、相片注意情况</span></label>
                                    </div>
                                </form>
                            </div>
                        </div> <!-- search area -->
                        <!--</div>-->
                    </div>
                    <div class="panel panel-primary">
                        <div class="row-fluid" style="padding-top: 20px">
                            <div class="row">
                                <div class="col-sm-6 col-md-4">
                                    <div class="thumbnail">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDIiIGhlaWdodD0iMjAwIj48cmVjdCB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjEyMSIgeT0iMTAwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjE1cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MjQyeDIwMDwvdGV4dD48L3N2Zz4=" style="height: 200px; width: 100%; display: block;" data-src="holder.js/100%x200" alt="100%x200">
                                        <div class="caption">
                                            <p>Cras justo odio</p>
                                            <button href="#" class="btn btn-block btn-primary" role="button">Button</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4">
                                    <div class="thumbnail">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDIiIGhlaWdodD0iMjAwIj48cmVjdCB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjEyMSIgeT0iMTAwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjE1cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MjQyeDIwMDwvdGV4dD48L3N2Zz4=" style="height: 200px; width: 100%; display: block;" data-src="holder.js/100%x200" alt="100%x200">
                                        <div class="caption">
                                            <p>Cras justo odio</p>
                                            <button href="#" class="btn btn-block btn-primary" role="button">Button</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-4">
                                    <div class="thumbnail">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDIiIGhlaWdodD0iMjAwIj48cmVjdCB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjEyMSIgeT0iMTAwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjE1cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MjQyeDIwMDwvdGV4dD48L3N2Zz4=" style="height: 200px; width: 100%; display: block;" data-src="holder.js/100%x200" alt="100%x200">
                                        <div class="caption">
                                            <p>Cras justo odio</p>
                                            <button href="#" class="btn btn-block btn-primary" role="button">Button</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- button groups -->
                    </div>
                    <div class="panel panel-primary">
                        <div class="row-fluid" >
                            <div class="btn-group" data-toggle="buttons">
                                <a class="btn btn-primary active" href="#">
                                    <input type="radio" name="options" id="option1" autocomplete="off" checked> Radio 1 (preselected)
                                </a>
                                <label class="btn btn-primary">
                                    <input type="radio" name="options" id="option2" autocomplete="off"> Radio 2
                                </label>
                                <label class="btn btn-primary">
                                    <input type="radio" name="options" id="option3" autocomplete="off"> Radio 3
                                </label>
                            </div>
                            <div>

                            </div>
                        </div> <!-- Nav tabs -->
                    </div>

                    <div class="panel panel-primary">
                        <div class="row-fluid">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active"><a href="#home" role="tab" data-toggle="tab">Home</a></li>
                                <li><a href="#profile" role="tab" data-toggle="tab">Profile</a></li>
                                <li><a href="#messages" role="tab" data-toggle="tab">Messages</a></li>
                                <li><a href="#settings" role="tab" data-toggle="tab">Settings</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="home">...</div>
                                <div class="tab-pane" id="profile">...</div>
                                <div class="tab-pane" id="messages">...</div>
                                <div class="tab-pane" id="settings">...</div>
                            </div>
                        </div>
                    </div>


                </div> <!-- /.right body -->
            </div> <!-- /.row-fluid -->
        </div>



        <script src="plugin/jquery-1.10.2.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.min.js"></script>
        <script>
            $(function() {

            });
        </script>
    </body> 
</html>
