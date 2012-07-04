<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<h2>Create User:</h2>
<form:form  name="createUserForm" action="/user/doCreateUser" commandName="userForm" method="POST">
	<table border="1">
		<tr>
			<td>Email:</td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><form:input path="password" /></td>
		</tr>
		<tr>
			<td>Status:</td>
			<td><form:input path="status" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Create User" /></td>
		</tr>
	</table>
</form:form>