<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/loginpage" method="post" modelAttribute="employee">
		<fieldset>
			<legend>Log In</legend>

			<table>
				<tr>

					<td>Username:</td>

					<td><input type="text" name="email" placeholder="Enter email address"/></td>

				</tr>


				<tr>

					<td>Password:</td>

					<td><input type="password" name="password" placeholder="Enter password"/></td>

				</tr>

				<tr>

					<td><input type="submit" value="Log In"></td>

				</tr>

			</table>
		</fieldset>

	</form>

</body>
</html>