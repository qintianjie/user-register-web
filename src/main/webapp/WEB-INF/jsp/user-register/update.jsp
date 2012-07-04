<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:url var="userUpdateUrl" value="/user/{userId}/doUpdateUser">
	<spring:param name="userId" value="${userForm.id}" />
</spring:url>

<h2>Update User:</h2>
<form:form name="updateUserForm" modelAttribute="userForm" action="${userUpdateUrl}" method="PUT">
	<!-- 
		<input type="hidden" name="_method" value="PUT" />
	 -->
	<table border="1">
		<tr>
			<td>Email:</td>
			<td><form:input path="email" /><form:errors  path="email" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><form:input path="password" /><form:errors  path="password" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Status:</td>
			<td><form:input path="status" /><form:errors  path="status" cssClass="error"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Update User" /></td>
		</tr>
	</table>
</form:form>