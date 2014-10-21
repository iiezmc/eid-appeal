<%-- 
    Document   : 
    Created on : 2014-10-13, 19:34:32
    Author     : lyz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
	<title>Administrator_module</title>
	<link rel="stylesheet" type="text/css" href="../plugin/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../plugin/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../plugin/easyui/demo/demo.css">
	<script type="text/javascript" src="../plugin/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="../plugin/easyui/jquery.easyui.min.js"></script>
        <script type="text/javascript" src="../js/admin_toolbar.js"></script>
        <script type="text/javascript" src="../js/admin_getdata1.js"></script>
</head>
    <body>
        <div class="easyui-layout" style="width:1296px;height:590px;margin:0px auto" >
            <div data-options="region:'north'" style="height:80px;">
                <div class="easyui-layout" data-options="fit:true">
                    <div border='false'>
                        <image src="../images/logo.jpg" />
                        <div style="float:right;margin:50px 20px 0px 0px">
                            <a href="./admin_login.jsp" style="font-size:15px">退出登录</a>
                        </div>
                    </div>
                </div>
            </div>
            <div data-options="region:'west',title:' '" style="width:180px;" collapsible="false">
                <table align="center" cellspacing="30">
                    <tr>
                        <td>
                            <a href="#" class="easyui-linkbutton" data-options="selected:true" style="">&nbsp;&nbsp;&nbsp审核申诉&nbsp;&nbsp;&nbsp;</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="easyui-linkbutton" style="">&nbsp;&nbsp;&nbsp;用户反馈&nbsp;&nbsp;&nbsp;</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="easyui-linkbutton" style="">&nbsp;&nbsp;&nbsp;帮助中心&nbsp;&nbsp;&nbsp;</a>
                        </td>
                    </tr>
                </table>
            </div>
<!--            <div data-options="region:'south'" style="height:50px;"></div>-->
            <div data-options="region:'center',title:' '" style="padding:5px">
                <div class="easyui-layout" data-options="fit:true">
<!--                    <div>
                        <b style="font-size:20px">查询条件</b>
                        <form id="check_form" method="post">
                            <table cellspacing="5">
                            <tr>
                                <td>
                                    <a style="font-size:15px;padding: 15px 0px 15px 15px">提交时间：</a>
                                    <input class="easyui-datebox" name="data_begin" />
                                    <a style="font-size:15px;padding: 15px 5px">-</a>
                                    <input class="easyui-datebox" name="data_end" />
                                    <a style="font-size:15px;padding: 0px 0px 0px 50px">姓名：</a>
                                    <input class="easyui-textbox" name="name" style="width:100px;height:20px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a style="font-size:15px;padding: 15px 0px 15px 15px">身份证号：</a>
                                    <input class="easyui-textbox" name="persnal_id" style="width:150px;height:20px" maxlength="18" />
                                    <a style="font-size:15px;padding: 0px 0px 0px 30px">申诉编号：</a>
                                    <input class="easyui-textbox" name="name" style="width:150px;height:20px" />
                                    <a style="font-size:15px;padding: 0px 0px 0px 30px">状态：</a>
                                    <select name="status" style="width:100px;height:20px;">
                                        <option value="all">全部</option>
                                        <option value="un_handle">未处理</option>
                                        <option value="accept">已通过</option>
                                        <option value="reject">未通过</option>
                                    </select>
                                </td>
                            </tr>
                            </table>
                        </form>
                        <div style="text-align:center;padding:5px">
                            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="">&nbsp;&nbsp;&nbsp;查询&nbsp;&nbsp;&nbsp;</a>
                        </div>                    
                    </div>-->
                    <div>
                        <div id="toolbar">
                            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" plain="true" onclick="admin_search()">查询</a>
                            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="admin_examine()">审核</a>
                            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="remove()">删除</a>
                        </div>
                        <table id="dg_examine">
                        </table>
                        <div id="dlg_examine" class="easyui-dialog" style="width:700px;height:500px;letf:10%;top:50%" closed="true" buttons="#examine_buttons" >
                            <div class="easyui-layout" data-options="fit:true">
                                <div data-options="region:'north'" style="height:200px">
                                    <div class="ftitle">账户信息</div>
                                    <table>
                                        <tr>
                                            <td style="width:200px">
                                                picture
                                            </td>
                                            <td>
                                                <table id="personal_info"></table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div data-options="region:'center'">
                                    <div class="ftitle">证件审核</div>
                                    <table>
                                        <tr>
                                            <td style="width:150px">
                                                <image src="../css/image/u157.png" style="width:148px;height:148px"/>
                                            </td>
                                            <td style="width:150px">
                                                <image src="../css/image/u44.png" style="width:148px;height:148px"/>
                                            </td>
                                            <td>
                                                <form id="fm_examine">
                                                    <table>
                                                        <a style="font-size:20px">审核操作：</a>
                                                        <br>
                                                        <input name="examine_result" type="radio" value="accept">通过
                                                        <input name="examine_result" type="radio" value="reject" checked="true">不通过
                                                        <br>
                                                        <textarea name="reason" placeholder="如果不通过，请简要说明不通过的理由！如果通过可不填！" class="easyui-textbox" multiline="true" style="width:300px;height:100px"></textarea>
                                                    </table>
                                                </form>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="dlg_search" class="easyui-dialog" style="width:500px;height:400px;letf:10%;top:50%;" closed="true">
                            <div style="padding:40px 30px">    
                                <form id="search_form" method="post">
                                    <table cellpadding="10">
                                        <tr>
                                            <td>
                                                <a style="font-size:15px">提交时间：</a>
                                            </td>
                                            <td>
                                                <input class="easyui-datebox" id="date_begin" name="date_begin" />
                                                <a style="font-size:15px">-</a>
                                                <input class="easyui-datebox" id="date_end" name="date_end" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a style="font-size:15px">姓&nbsp;&nbsp;&nbsp;&nbsp;名：</a>
                                            </td>
                                            <td>
                                                <input class="easyui-textbox" id="name" style="width:100px;height:20px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a style="font-size:15px">身份证号：</a>
                                            </td>
                                            <td>
                                                <input class="easyui-textbox" id="personal_id" name="personal_id" style="width:150px;height:20px" maxlength="18" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a style="font-size:15px">申诉编号：</a>
                                            </td>
                                            <td>
                                                <input class="easyui-textbox" id="examine_id" name="examine_id" style="width:150px;height:20px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a style="font-size:15px">状&nbsp;&nbsp;&nbsp;&nbsp;态：</a>
                                            </td>
                                            <td>
                                                <select id="status" name="status" style="width:100px;height:20px;">
                                                    <option value="">全部</option>
                                                    <option value="0">未处理</option>
                                                    <option value="2">已通过</option>
                                                    <option value="1">未通过</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            <div style="text-align:center;padding:5px">
                                <a href="javascript:void(0)" class="easyui-linkbutton c6" iconClis="icon-ok" onclick="admin_search_submit()">&nbsp;&nbsp;查询&nbsp;&nbsp;</a>
                            </div>
                        </div>
                        <div id="examine_buttons">
                            <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="examine_submit()" style="width:90px">提交</a>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
