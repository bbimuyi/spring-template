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


    </body>
</html>
