<%-- 
    Document   : error
    Created on : 2014-10-21, 10:45:27
    Author     : mc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:property value="exception.message"/>  
    </body>
</html>
