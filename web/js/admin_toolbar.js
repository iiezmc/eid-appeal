/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var url;
function admin_examine(){
    var row = $('#dg_examine').datagrid('getSelected');
    if(row){
        dia = $('#dlg_examine').dialog('setTitle','审核');
        display_info();
        dia.dialog("open");        
        $('#fm_examine').form('clear');
        url = '#';
    }
}

function admin_search(){
    dia = $('#dlg_search').dialog('setTitle','查询');
    $('#search_form').form('clear');
    dia.dialog("open");
    url = '#';
}

function display_info(){
    $('#personal_info').datagrid({
        url: '../js/admin_data3.json',
        width: 402,
        border: false,
        singleSelect: true,
//        fitColumns: true,
        columns:[[{
                    field:'key',
                    width:150
                }, {
                    field:'value',
                    width:250
                }
        ]]
    });
}

function remove(){
}

function admin_search_submit(){
    var startTime = $('#date_begin').datebox('getValue');
    var endTime = $('#date_end').datebox('getValue');
    var name = $('#name').val();
    var personal_id = $('#personal_id').val();
    var appeal_id = $('#examine_id').val();
    var status = $('#status').val();

    //alert("startTime: "+ startTime +", endTime: "+endTime+", name: "+name+", personal_id: "+personal_id+", appeal_id: "+appeal_id+", status: "+status);
    
    pagenum = 1;
    var params = {startTime:startTime, endTime:endTime, userName:name, idcard:personal_id, appealNumber:appeal_id, status:status};
    $.ajax({
        async: false,
        type: "POST",
        url: "list_query.do",
        dataType: 'json',
        data: params,
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            parent.$.messager.alert('错误', XMLHttpRequest.responseText, 'error');
        },
        success: function(){
            $('#dlg_search').dialog('close');
            $('#dg_examine').datagrid('reload');
        }
    });

}

function examine_submit(){
    var result = fm_examine.examine_result;
    if(result[0] == true){
        
    }
    else if(result[1] == true){
        
    }
}

