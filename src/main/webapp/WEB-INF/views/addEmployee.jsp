<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Add Employee</h1>
	<form action="<spring:url value="/addEmployee"/>" method="post"
		modelAttribute="employee">
		<fieldset>
			<legend>Add New Employees:</legend>
			First Name:<input type="text" name="firstName"> <br>
			Last Name:<input type="text" name="lastName"> <br> DOB:<input
				type="date" name="dob"> <br> Sex:<input type="text"
				name="sex"> <br> Email:<input type="text" name="email">
			<br> Contact Number:<input type="text" name="contactNumber">
			<br> Street:<input type="text" name="street"><br>
			City:<input type="text" name="city"> <br> State:<input
				type="text" name="state"> <br> Zip:<input type="text"
				name="zip"><br> Country:<input type="text"
				name="country"> <br> Join Date:<input type="date"
				name="joinDate"> <br> End Date:<input type="date"
				name="endDate"> <br> <br> <input type="submit"
				value="Submit">
		</fieldset>
	</form>

</body>
</html>