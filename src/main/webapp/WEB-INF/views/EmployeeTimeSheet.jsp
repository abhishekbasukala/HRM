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
	<h1>Add Employee Timesheet</h1>
	<form action="<spring:url value="/EmployeeTimeSheet"/>" method="post" modelAttribute="employeeTimeSheet">
		<fieldset>
			<legend>Add Employee Timesheet:</legend>
			Employee Id:<input type="text" name="employeeId"> <br>
			Attendence Date:<input type="text" name="dateAttended"> <br> 
			Hours Worked<input type="text" name="hoursWorked"> <br> 
			Comments:<input type="text" name="comments"> <br> 
			 <br> <br> 
				<input type="submit" value="Submit">
		</fieldset>
	</form>

</body>
</html>