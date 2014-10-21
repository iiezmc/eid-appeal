<%-- 
    Document   : show_image
    Created on : 2014-10-20, 19:03:00
    Author     : mc
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
        <title>显示图片</title>
        <style type="text/css">
            div {
                text-align: left;
                width: 300px;
                margin-right: auto;
                margin-left: auto;
            }
        </style>
    </head>
    <body>
        <div >
<!--            <form id="img_show_form" action="img_show.do">
                <button id="img_show_btn" type="submit" >查看图片</button>
            </form>-->
            <img src="img_show.do" title="tt">
        </div>
    </body>
</html>
