<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Edit Employee</h1>
	<form action="<spring:url value="/editEmployee/${employee.employeeId}"/>" method="post"
		modelAttribute="employee">
		<fieldset>
			<legend>Edit Employees:</legend>
			First Name:<input type="text" name="firstName" value="${employee.firstName}"> <br>
			Last Name:<input type="text" name="lastName" value="${employee.lastName}"> <br> 
			DOB:<input type="date" name="dob" value="${employee.date}"> <br> 
			Sex:<input type="text" name="sex" value="${employee.sex}"> <br> 
			Email:<input type="text" name="email" value="${employee.email}"><br> 
			Contact Number:<input type="text" name="contactNumber" value="${employee.contactNumber}"><br> 
			Street:<input type="text" name="street" value="${employee.address.street}"><br>
			City:<input type="text" name="city" value="${employee.address.city}"> <br>
		    State:<input type="text" name="state" value="${employee.address.state}"> <br> 
		    Zip:<input type="text" name="zip" value="${employee.address.zip}"><br> 
		    Country:<input type="text" name="country" value="${employee.address.country}"> <br> 
		    Join Date:<input type="date" name="joinDate" value="${employee.lastName}"> <br> 
		    End Date:<input type="date" name="endDate" value="${employee.lastName}"> <br> <br> 
		    <input type="submit" value="Update">
		</fieldset>
	</form>

</body>
</html>