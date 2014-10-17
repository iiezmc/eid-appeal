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
        <title>JSP Page</title>
    </head>
    <script src="plugin/jquery-1.10.2.min.js"></script>
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
        
        
    </script>
    <body>
        <form id="img_upload" action="img_upload.do" enctype="multipart/form-data" method="post">
            <input type='file' id="doc" name="uploadFile" onchange="readURL(this);" />
            <div id="localImag">
                <img id="img_prev" src="" alt="your image" />
            </div>
            <button id="img_btn" type="submit">提交</button>
        </form>
    </body>

</html>
