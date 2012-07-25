<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h2>Login in.</h2>

<html>
<head>
<title>Login Page</title>
</head>
<body onload='document.f.j_username.focus();'>
	<h3>Login with Username & Password</h3>
	<form:form name="f" action="/j_spring_security_check" commandName="loginForm" method="POST">
		<table>
			<tr>
				<td>User:</td>
				<td><form:input path="j_username" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:password path="j_password" /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit" value="Login" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>