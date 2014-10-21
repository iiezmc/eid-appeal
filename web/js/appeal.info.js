$(function() {
    //检查要提交的修改密码表单       
//    $("#img_upload_form").submit(function() {
//        //flag用于判断是否提交表单  
//        var flag = false;
//        $.ajaxFileUpload({
//            url: 'img_upload.do', //用于文件上传的服务器端请求的Action地址  
//            type: "post", //请求方法  
//            secureuri: false, //一般设置为false  
//            fileElementId: 'upload', //文件id属性  <input type="file" id="upload" name="upload" />  
//            dataType: "JSON", //返回值类型 一般设置为json,一定要大写,否则可能会出现一些bug  
//            success: function(message) {
//                //  alert(msg.length);//从服务器返回的json中取出message中的数据,其中message为在struts2中定义的成员变量       
//                if (message) {
////                            alert(message);
//                    $("#message").text(message);
//                    flag = false;
//                } else {
//                    flag = true;
//                }
//            },
//            error: function() {
//                alert("上传文件出现错误！");
//                flag = false;
//            }
//        });
//        return flag;
//    });

//    $("#btn_submit_step01").click(function() {
//        window.location.href = "module/appeal_info.jsp";
//    });
//    $("#btn_submit_step02").click(function() {
//        window.location.href = "module/appeal_finish.jsp";
//    });
});

//显示上传图片缩略图
function preview(input) {
    console.info("input:" + input.property);
    console.info("id:" + input.id);
    var id = input.id;
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {

            $("img[id^='" + id + "']").attr('src', e.target.result).width(180).height(100);
//            $('#img_prev').attr('src', e.target.result).width(150).height(200);
        };
        reader.readAsDataURL(input.files[0]);
    } else {
        //IE下，使用滤镜
        var docObj = document.getElementByIdx_x(input.id);
        docObj.select();
        //解决IE9下document.selection拒绝访问的错误
        docObj.blur();
        var imgSrc = document.selection.createRange().text;
        var localImagId = document.getElementByIdx_x(id + "_div");
        $("div[id^='" + id + "']").width(180).height(100); //必须设置初始大小
        //图片异常的捕捉，防止用户修改后缀来伪造图片
        try {
            localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
            localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
        } catch (e) {
            alert("您上传的图片格式不正确，请重新选择!");
            return false;
        }
        $("img[id^='" + id + "']").hide();
        document.selection.empty();
    }
}

function show_ques(type) {
    id = "#panel-" + type;
    $(".page-body").find(".panel").hide();
    $(id).show();
}

