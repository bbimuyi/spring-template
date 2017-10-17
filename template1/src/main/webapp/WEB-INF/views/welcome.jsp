<%--
    Document   : welcome
    Created on : Oct 16, 2017, 12:48:19 PM
    Author     : trevorbrown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Yahoo!!</title>
    </head>
    <body>
        Welcome ${name}. You are now authenticated. <a href="${pageContext.request.contextPath}/list-todos">Click here</a> to start maintaining your todo's.
    </body>
</html>