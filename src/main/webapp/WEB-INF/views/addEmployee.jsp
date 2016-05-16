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
				<table>
					<tr>
						<td>First Name:</td>
						<td><input type="text" name="firstName"> <td>
					</tr>
					<tr>
						<td>Last Name:</td>
						<td><input type="text" name="lastName"> </td>
					</tr>
					<tr>
				 		<td>DOB:</td>
				 		<td><input type="date" name="dob"> </td>
					</tr>
					<tr>	 
						 <td>Sex:</td>
				 		<td><input type="text" name="sex"> </td>
					</tr>	
					<tr>
						<td>Email: </td>
						<td><input type="text" name="email"></td>
					</tr>	
					<tr> 
			 			<td>Contact Number:</td>
						<td><input type="text" name="contactNumber"></td>
					</tr>
					<tr> 
						<td>Street:</td>
						<td><input type="text" name="address.street"></td>
					</tr>
					<tr>
						<td>City:</td>
						<td><input type="text" name="address.city"></td> 
					</tr>
					<tr>
						<td>State:</td>
						<td><input type="text" name="address.state"> </td>
					</tr>
					<tr>
						<td>Zip:</td>
						<td><input type="text" name="address.zip"></td>
					</tr> 
					<tr>
						<td>Country:</td>
						<td><input type="text" name="address.country"> </td>
					</tr>	
					<tr>
						<td> Join Date:</td>
						<td><input type="date" name="joinDate"> </td>
					</tr>	
					<tr>	 
				 		<td>End Date:</td>
				 		<td><input type="date" name="endDate"> </td>
					</tr>	
					<tr>
						<td>Department:</td>
						<td><select name="department.departmentName">
								<option  value="IT Department">IT Department</option>
								<option  value="HR Department">HR Department</option>
								<option  value="Support Department">Support Department</option>
								<option  value="Marketing Department">Marketing Department</option>
							</select>
						</td>	
					</tr>
					<tr>
						<td>Designation:</td>
						<td><select name="department.designation">
								<option value="SUPERVISOR">SUPERVISOR</option>
								<option value="DIRECTOR">DIRECTOR</option>
								<option value="HR">HR</option>
								<option value="DEVELOPER">DEVELOPER</option>
								<option value="DESIGNER">DESIGNER</option>
							</select>
						</td>	
					</tr>
					<tr>	
						<td><input type="submit" value="Submit"></td>
					</tr>	
				</table>
		</fieldset>
	</form>

</body>
</html>