<%--
    Document   : login
    Created on : Oct 16, 2017, 12:44:36 PM
    Author     : trevorbrown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Dont delete###### ${pageContext.request.contextPath}-->


        <p><font color="red">${errorMessage}</font></p>
        <form action="${pageContext.request.contextPath}/login" method="POST">
            Name : <input name="name" type="text" /> Password : <input name="password" type="password" /> <input type="submit" />
        </form>

        <script src="${pageContext.request.contextPath}.webjars/jquery/1.9.1/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.6/css/bootstrap.min.css"
              rel="stylesheet">


    </body>
</html>
