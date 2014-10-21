<%-- 
    Document   : admin_login
    Created on : 2014-10-16, 15:07:49
    Author     : lyz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
        <link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/icon.css">
        <link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/color.css">
        <link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/demo/demo.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.min.js"></script>
        <script type="text/javascript" src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
        <script type="text/javascript" src="../js/admin_getdata1.js"></script>
    </head>
    <body>
        <div class="easyui-layout" style="width: 500px;margin: 100px auto">
            <div class="easyui-panel" title="欢迎管理员登录系统" style="width:400px;padding:30px 70px 20px 70px">
                <form id="admin_login">
                    <div style="margin-bottom:10px">
                        <input id="username" class="easyui-textbox" style="width:100%;height:40px;padding:12px" data-options="prompt:'请输入用户名',iconCls:'icon-man',iconWidth:38">
                    </div>
                    <div style="margin-bottom:20px">
                        <input id="password" class="easyui-textbox" type="password" style="width:100%;height:40px;padding:12px" data-options="prompt:'请输入密码',iconCls:'icon-lock',iconWidth:38">
                    </div>
                </form>
                <div>
                <a href="./admin_examine.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;">
                    <span style="font-size:14px;">登陆</span>
                </a>
                </div>
            </div>
        </div>
    </body>
</html>
