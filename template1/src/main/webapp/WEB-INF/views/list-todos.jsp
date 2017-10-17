<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>
        <title>Todos for ${name}</title>
        <link href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.6/css/bootstrap.min.css"
              rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <table class="table table-striped">
                <caption>Your Todos are</caption>

                <thead>
                    <tr>
                        <th>Description</th>
                        <th>Date</th>
                        <th>Completed</th>
                        <th></th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                            <td>${todo.desc}</td>
                            <td><fmt:formatDate pattern="dd/MM/yyyy"
                                        value="${todo.targetDate}" /></td>
                    <td>${todo.done}</td>
                    <td>
                        <a type="button" class="btn btn-success"
                           href="${pageContext.request.contextPath}/update-todo?id=${todo.id}">Update</a>

                        <a type="button" class="btn btn-warning"
                           href="${pageContext.request.contextPath}/delete-todo?id=${todo.id}">Delete</a>
                    </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div>
                <a type="button" class="btn btn-success" href="${pageContext.request.contextPath}/add-todo">Add</a>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/webjars/jquery/1.9.1/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
</html>