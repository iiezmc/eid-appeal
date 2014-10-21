<%-- 
    Document   : test
    Created on : 2014-10-17, 10:32:33
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
        <title>上传图片</title>
    </head>
    <script src="plugin/jquery-1.10.2.min.js"></script>
    <script src="plugin/ajaxfileupload.js"></script>
    <script type="text/javascript">
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

        $(function() {
            //检查要提交的修改密码表单       
            $("#img_upload_form").submit(function() {
                //flag用于判断是否提交表单  
                var flag = false;
//                var formData = new FormData();
//                formData.append('uploadFile', $('input[name=uploadFile]', this).get(0).files[0]);
//
//                $.ajax({
//                    type: 'post',
//                    contentType: 'multipart/form-data', //请求数据类型
//                    url: 'img_upload.do',
//                    data: formData,
//                    dataType: 'json', //返回数据类型
//                    async: false, //同步  
//                    success: function(data) {
//                        if (data.message) {
//                            $("#message").text(data.message);
//                            flag = false;
//                        } else {
//                            flag = true;
//                        }
//                    },
//                    error: function() {
//                        alert("上传文件出现错误！");
//                        flag = false;
//                    }
//                });

                $.ajaxFileUpload({
                    url: 'img_upload.do', //用于文件上传的服务器端请求的Action地址  
                    type: "post", //请求方法  
                    secureuri: false, //一般设置为false  
                    fileElementId: 'upload', //文件id属性  <input type="file" id="upload" name="upload" />  
                    dataType: "JSON", //返回值类型 一般设置为json,一定要大写,否则可能会出现一些bug  
                    success: function(message) {
                        //  alert(msg.length);//从服务器返回的json中取出message中的数据,其中message为在struts2中定义的成员变量       
                        if (message) {
//                            alert(message);
                            $("#message").text(message);
                            flag = false;
                        } else {
                            flag = true;
                        }
                    },
                    error: function() {
                        alert("上传文件出现错误！");
                        flag = false;
                    }
                });
                return flag;
            });
        })

    </script>
    <body>
        <form id="img_upload_form">
            <input type='file' id="upload" name="uploadFile" onchange="readURL(this);" />
            <div id="localImag">
                <img id="img_prev" src="" alt="your image" />
            </div>
            <span id="message" style="color: red"></span>
            <button id="img_upload_btn" type="submit">上传</button>
        </form>

        <!--<button id="img_show_btn" type="submit" >查看图片</button>-->
        <a href="module/img_show.jsp">查看图片</a>
    </body>

</html>
