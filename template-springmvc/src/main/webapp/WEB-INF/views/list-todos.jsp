<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>



<div class="container">


    <table class="table table-striped">
        <caption>Your Guitars are</caption>
        <thead>
            <tr>
                <th>Guitar Model</th>
                <th>Date Acquired</th>
                <th>Sold</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.desc}</td>
                    <td><fmt:formatDate pattern="MM/dd/yyyy"
                                    value="${todo.targetDate}" /></td>
                    <td>${todo.done}</td>
                    <td><a type="button" class="btn btn-primary"
                           href="${pageContext.request.contextPath}/update-todo?id=${todo.id}">Edit</a> <a type="button"
                           class="btn btn-warning" href="${pageContext.request.contextPath}/delete-todo?id=${todo.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div>
        <a type="button" class="btn btn-success" href="${pageContext.request.contextPath}/add-todo">Add</a>
    </div>
</div>
<%@ include file="common/footer.jspf"%>