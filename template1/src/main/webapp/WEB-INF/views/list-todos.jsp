<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>
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

<%@ include file="common/footer.jsp"%>
