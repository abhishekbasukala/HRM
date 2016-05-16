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
	<form action="${pageContext.request.contextPath}/editEmployee/${employee.employeeId}" method="post" modelAttribute="employee">
		<fieldset>
			<legend>Edit Employees:</legend>
			
			<table>
					<tr>
						<td>First Name:</td>
						<td><input type="text" name="firstName" value="${employee.firstName}"> <td>
					</tr>
					<tr>
						<td>Last Name:</td>
						<td><input type="text" name="lastName" value="${employee.lastName}"> </td>
					</tr>
					<tr>
				 		<td>DOB:</td>
				 		<td><input type="date" name="dob" value="${employee.dob}"> </td>
					</tr>
					<tr>	 
						 <td>Sex:</td>
				 		<td><input type="text" name="sex" value="${employee.sex}"> </td>
					</tr>	
					<tr>
						<td>Email: </td>
						<td><input type="text" name="email" value="${employee.email}"></td>
					</tr>	
					<tr> 
			 			<td>Contact Number:</td>
						<td><input type="text" name="contactNumber" value="${employee.contactNumber}"></td>
					</tr>
					<tr> 
						<td>Street:</td>
						<td><input type="text" name="street" value="${employee.address.street}"></td>
					</tr>
					<tr>
						<td>City:</td>
						<td><input type="text" name="city" value="${employee.address.city}"></td> 
					</tr>
					<tr>
						<td>State:</td>
						<td><input type="text" name="state" value="${employee.address.state}"> </td>
					</tr>
					<tr>
						<td>Zip:</td>
						<td><input type="text" name="zip" value="${employee.address.zip}"></td>
					</tr> 
					<tr>
						<td>Country:</td>
						<td><input type="text" name="country" value="${employee.address.country}"> </td>
					</tr>	
					<tr>
						<td> Join Date:</td>
						<td><input type="date" name="joinDate" value="${employee.joinDate}"> </td>
					</tr>	
					<tr>	 
				 		<td>End Date:</td>
				 		<td><input type="date" name="endDate" value="${employee.endDate}"> </td>
					</tr>	
					<tr>	
						<td><input type="submit" value="Submit"></td>
					</tr>	
				</table>
		</fieldset>
	</form>

</body>
</html>