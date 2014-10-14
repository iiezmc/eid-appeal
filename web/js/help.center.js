$(function() {

});

function show_ques(type) {
   id = "#panel-" + type;
   
   $(".page-body").find(".panel").hide();
   
   $(id).show();
   
   
}