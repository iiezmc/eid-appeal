$(function() {


    $("#btn_submit_step01").click(function() {
        window.location.href = "module/appeal_info.jsp";
    });
    $("#btn_submit_step02").click(function() {
        window.location.href = "module/appeal_finish.jsp";
    });
});

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#img_prev').attr('src', e.target.result).width(150).height(200);
        };
        reader.readAsDataURL(input.files[0]);
    } else {
        //IE下，使用滤镜
        var docObj = document.getElementByIdx_x('doc');
        docObj.select();
        //解决IE9下document.selection拒绝访问的错误
        docObj.blur();
        var imgSrc = document.selection.createRange().text;
        var localImagId = document.getElementByIdx_x("localImag");
        $('#localImag').width(150).height(200); //必须设置初始大小
        //图片异常的捕捉，防止用户修改后缀来伪造图片
        try {
            localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
            localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
        } catch (e) {
            alert("您上传的图片格式不正确，请重新选择!");
            return false;
        }
        $('#img_prev').hide();
        document.selection.empty();
    }
}

function show_ques(type) {
    id = "#panel-" + type;
    $(".page-body").find(".panel").hide();
    $(id).show();
}

