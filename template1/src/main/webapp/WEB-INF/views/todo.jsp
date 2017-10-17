<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <title>Your Todo</title>
        <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
              rel="stylesheet">
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/add-todo" method="POST">
            Description : <input name="desc" type="text" /> <input type="submit" value="add" />
        </form>
    </body>



</body>
</html>