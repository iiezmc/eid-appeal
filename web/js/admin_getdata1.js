/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function() {
    $('#dg_examine').datagrid({
        url: 'admin_appeal_list.do',
//        fit: true,
        title: '申诉列表',
        fitColumns: true,
        rownumbers: true,
        singleSelect: true,
        height: 470,
        pagination: true,
        columns: [[{
                    field: 'status',
                    title: '状态',
                    width: 80,
                    formatter:function(value, row, index){
                        if(value == 0){
                            return '未审核';
                        }
                        else if(value == 1){
                            return '未通过';
                        }
                        else{
                            return '通过';
                        }
                    }
                }, {
                    field: 'appealKind',
                    title: '申诉类型',
                    width: 100
                }, {
                    field: 'requestTime',
                    title: '提交时间',
                    width: 200
                },{
                    field: 'modifyTime',
                    title: '处理时间',
                    width: 200
                },{
                    field: 'name',
                    title: '姓名',
                    width: 100                    
                },{
                    field: 'idcard',
                    title: '身份证号',
                    width: 200                    
                }]],
        toolbar: '#toolbar'
    });

    var p = $('#dg_examine').datagrid("getPager");
    $(p).pagination({
//		pageSize: 1,// 每页显示的记录条数，默认为10
//		pageList: [1,2,3], // 可以设置每页记录条数的列表
        beforePageText: "第", // 页数文本框前显示的汉字
        afterPageText: "页 共 {pages} 页",
        displayMsg: "当前显示 {from} - {to} 条记录 共 {total} 条记录"

    });

});
