<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!-- 
<c:set var="userList" value="${requestScope['userList']}" />
 -->

<h2>User Table:</h2>
<table border="1">
	<tr>
		<th>ID</th>
		<th>Email</th>
		<th>Register Time</th>
		<th>Status</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="user" items="${userList }">
		<tr>
			<td><a href="<c:url value="/user/${user.id }/update"/>"><c:out value="${user.id }" /></a></td>
			<td><c:out value="${user.email }" /></td>
			<td><c:out value="${user.registerTime }" /></td>
			<td><c:out value="${user.status }" /></td>
			<td>
				<spring:url var="deleteUserUrl" value="/user/{userId}/delete">
					<spring:param name="userId" value="${user.id}"></spring:param>
				</spring:url> 
				<form:form modelAttribute="user" action="${deleteUserUrl}" method="DELETE">
					<!-- 
						<input type="hidden" name="_method" value="DELETE" />
					 -->
					<button type="submit">Delete</button>
				</form:form>
			</td>
		</tr>
	</c:forEach>
</table>
