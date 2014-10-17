$(function() {
    $("#btn_submit_step01").click(function(){
       window.location.href="module/appeal_info.jsp";
    });
    $("#btn_submit_step02").click(function(){
       window.location.href="module/appeal_finish.jsp";
    });
});

function show_ques(type) {
   id = "#panel-" + type;
   
   $(".page-body").find(".panel").hide();
   
   $(id).show();
   
   
}