<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>
<!--Dont delete###### ${pageContext.request.contextPath}-->


<p><font color="red">${errorMessage}</font></p>
<form action="${pageContext.request.contextPath}/login" method="POST">
    Name : <input name="name" type="text" /> Password : <input name="password" type="password" /> <input type="submit" />
</form>

<%@ include file="common/footer.jsp"%>
